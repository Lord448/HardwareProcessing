/* 
 * "Small Hello World" example. 
 * 
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example 
 * designs. It requires a STDOUT  device in your system's hardware. 
 *
 * The purpose of this example is to demonstrate the smallest possible Hello 
 * World application, using the Nios II HAL library.  The memory footprint
 * of this hosted application is ~332 bytes by default using the standard 
 * reference design.  For a more fully featured Hello World application
 * example, see the example titled "Hello World".
 *
 * The memory footprint of this example has been reduced by making the
 * following changes to the normal "Hello World" example.
 * Check in the Nios II Software Developers Manual for a more complete 
 * description.
 * 
 * In the SW Application project (small_hello_world):
 *
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 * In System Library project (small_hello_world_syslib):
 *  - In the C/C++ Build page
 * 
 *    - Set the Optimization Level to -Os
 * 
 *    - Define the preprocessor option ALT_NO_INSTRUCTION_EMULATION 
 *      This removes software exception handling, which means that you cannot 
 *      run code compiled for Nios II cpu with a hardware multiplier on a core 
 *      without a the multiply unit. Check the Nios II Software Developers 
 *      Manual for more details.
 *
 *  - In the System Library page:
 *    - Set Periodic system timer and Timestamp timer to none
 *      This prevents the automatic inclusion of the timer driver.
 *
 *    - Set Max file descriptors to 4
 *      This reduces the size of the file handle pool.
 *
 *    - Check Main function does not exit
 *    - Uncheck Clean exit (flush buffers)
 *      This removes the unneeded call to exit when main returns, since it
 *      won't.
 *
 *    - Check Don't use C++
 *      This builds without the C++ support code.
 *
 *    - Check Small C library
 *      This uses a reduced functionality C library, which lacks  
 *      support for buffering, file IO, floating point and getch(), etc. 
 *      Check the Nios II Software Developers Manual for a complete list.
 *
 *    - Check Reduced device drivers
 *      This uses reduced functionality drivers if they're available. For the
 *      standard design this means you get polled UART and JTAG UART drivers,
 *      no support for the LCD driver and you lose the ability to program 
 *      CFI compliant flash devices.
 *
 *    - Check Access device drivers directly
 *      This bypasses the device file system to access device drivers directly.
 *      This eliminates the space required for the device file system services.
 *      It also provides a HAL version of libc services that access the drivers
 *      directly, further reducing space. Only a limited number of libc
 *      functions are available in this configuration.
 *
 *    - Use ALT versions of stdio routines:
 *
 *           Function                  Description
 *        ===============  =====================================
 *        alt_printf       Only supports %s, %x, and %c ( < 1 Kbyte)
 *        alt_putstr       Smaller overhead than puts with direct drivers
 *                         Note this function doesn't add a newline.
 *        alt_putchar      Smaller overhead than putchar with direct drivers
 *        alt_getchar      Smaller overhead than getchar with direct drivers
 *
 */

#include "sys/alt_stdio.h"
#include "sys/alt_irq.h"
#include "sys/alt_sys_init.h"
#include "io.h"
#include "nios2.h"
#include "alt_types.h"
#include "system.h"

#define MaskError 0x0001
#define MaskBusy  0x0002

#ifndef NULL
  #ifdef __null
    #define NULL __null
  #else
    #define NULL 0
  #endif
#endif

typedef enum bool {
	false,
	true
}bool;

typedef enum ControlPort {
	None,
	SetData = 0b0001,
	SendTX = 0b0010,
	ClearTX = 0b0100,
	ClearRX = 0b1000
}ControlPort;

typedef enum StatusLeds {
	ReadyToSend = 0b0001,
	IncomingData = 0b0010,
	TXBusy = 0b0100
}StatusLeds;

//----------------------------------------------------
//			 	        TASKS
//----------------------------------------------------
static void vTaskControlRead(ControlPort* btnPressed); //Debouncing
static void vTaskUARTSend(ControlPort* btnPressed);
static void vTaskRXDetection(void);
//----------------------------------------------------
//			 	      FUNCTIONS
//----------------------------------------------------
static void UARTSend(alt_u8 DataTX);
static void StatusWrite(StatusLeds statusLeds, alt_u8 value);
static ControlPort ControlPortRead(void);
//----------------------------------------------------
//			 	      	ISR
//----------------------------------------------------
static void IRQRegister(void);
void (*pUART_TX_IRQ)(void* isr_context, alt_u32 id);
void (*pParsedLoop_IRQ)(void* isr_context, alt_u32 id);
void (*pUART_RX_IRQ)(void* isr_context, alt_u32 id);

//PIO definitions
alt_u32 *TXLCDReg = UART_TX_32_PO_BASE; //Prints the data to the LCD
alt_u32 *RXLDCaReg = UART_RX_32_PO_BASE; //Prints the data to the LCD
alt_u8 *TXDataReg = UART_TX_DATA_REG_BASE; //UART Register to send data
alt_u8 *RXDataReg = UART_RX_DATA_REG_BASE; //UART Register to receive data
alt_u8 *TXDataSel = DIP_TX_DATA_PIO_BASE; //DIP to select the TX data
alt_u8 *ControlBase = CONTROL_PIO_BASE; //Buttons to control the program -- Needs mask 4 LSB
alt_u8 *StatusLed = STATUS_LEDS_PIO_BASE; //LEDs to report status of program -- Needs mask 4 LSB
alt_u8 *StartTX = UART_TX_START_BASE; //When high sends a data to UART -- Needs mask of 1 LSB
alt_u8 *UARTStatus = UART_RX_STATUS_REG_BASE; //Status of the UART RX 0 busy, 1 Error, both on Active on High -- Needs mask
alt_u8 *StartTimer = START_TIMER_BASE; //When high let the parsed loop timer run

//Global isr handlers
volatile alt_u8 UART_TX_Edge;
volatile alt_u8 UART_RX_Edge;
volatile alt_u8 ParsedLoop_Edge;

//Global variables
alt_u32 WordRX = 0;
alt_u8 RXCounts = 0;
ControlPort PortReadTX = None;
bool EndOfWordRX = false;
bool ParsedLoopFlag = true;
bool DataRX = false;
bool EnableReception = true;
bool TXIsBusy = false; //TODO
bool needToClearTX = false; //TODO

int main()
{
  alt_sys_init();
  alt_irq_init(NULL);
  
#ifdef ALT_ENHANCED_INTERRUPT_API_PRESENT
  IRQRegister();
#endif
  *StartTimer = 1; //Masking the LSB
  while (1)
  {
	  vTaskControlRead(&PortReadTX);
	  vTaskUARTSend(&PortReadTX);
	  vTaskRXDetection();
	  ParsedLoopFlag = true;
	  while(ParsedLoopFlag); //Parsed Loop period = 1ms
  }
  return 0;
}

//----------------------------------------------------
//			 	        TASKS
//----------------------------------------------------
/**
 * @brief Reads the control port debounce the buttons
 * 		  and reports what button is pressed
 * @note  Check the Control Port enum for definitions
 * @param status: Notifies the button that have been pressed
 *
 */
static void vTaskControlRead(ControlPort* btnPressed) {
	enum stages{
		WaitingLows,
		WaitingHighs
	}static stages = WaitingLows;
	const alt_u8 DebounceDelay = 15; //In milliseconds
	static alt_u8 Highs = 0, Lows = 0;
	static ControlPort ControlRead = None, pastControlRead = None;

	ControlRead = ControlPortRead();

	if(ControlRead == None) {
		return;
	}

	if(ControlRead == pastControlRead) {
		Highs++;
		Lows = 0;
	}
	else {
		Highs = 0;
		Lows++;
	}

	//Rising edge detection
	switch (stages) {
		case WaitingHighs:
			if(Highs >= DebounceDelay) {
				stages = WaitingHighs;
				if(ControlRead == ClearRX)
					needToClearTX = true;
				else
					*btnPressed = ControlRead;
			}

		break;
		case WaitingLows:
			if(Lows >= DebounceDelay)
				stages = WaitingHighs;
		break;
	}
}

static void vTaskUARTSend(ControlPort* btnPressed)
{
	enum stages{
		Waiting32BitsSel,
		SendState
	}static stages = Waiting32BitsSel;

	static alt_u8 ByteCounter = 0;
	static alt_u32 WordTX = 0;

	if(*btnPressed == ClearTX)
	{
		WordTX = 0;
		ByteCounter = 0;
		stages = Waiting32BitsSel;
	}
	*TXLCDReg = WordTX;
	switch(stages)
	{
		case Waiting32BitsSel:
			if(*btnPressed == SetData)
			{
				WordTX |= (alt_u32) *TXDataSel<<(8*ByteCounter);
				ByteCounter++;
				if(ByteCounter >= 3)
				{
					ByteCounter = 0;
				}
				*btnPressed = None;
			}
			else if(*btnPressed == SendTX)
			{
				stages = SendState;
				ByteCounter = 0;
			}
		break;
		case SendState:
			UARTSend((alt_u8)WordTX&(0xFF<<ByteCounter));
			ByteCounter++;
			if(ByteCounter >= 3)
			{
				stages = Waiting32BitsSel;
				ByteCounter = 0;
			}
		break;
	}
}

static void vTaskRXDetection(void)
{
	enum stages {
		WaitingRX,
		Waiting32Bits,
		Write32BitsPort
	}static stages = WaitingRX;
	const alt_u8 ReceivingTime = 2; //In Milliseconds
	const alt_16 IncomDataTime = 500; //In Milliseconds
	static alt_u8 CountsDelay = 0;
	static alt_16 CountIncomData = 0;
	static bool TurnOffIncomData = false;

	if(TurnOffIncomData)
	{
		if(CountIncomData >= IncomDataTime)
		{
			StatusWrite(IncomingData, 1);
			CountIncomData = -1;
			TurnOffIncomData = false;
		}
		CountIncomData++;
	}

	switch(stages)
	{
		case WaitingRX:
			EnableReception = true;
			CountsDelay = 0;
			WordRX = 0;
			if(DataRX)
			{
				stages = Waiting32Bits;
				StatusWrite(IncomingData, 1);
				TurnOffIncomData = true;
			}
		break;
		case Waiting32Bits:
			CountsDelay++;
			if(EndOfWordRX || CountsDelay >= ReceivingTime)
			{
				EnableReception = false;
				stages = Write32BitsPort;
			}
		break;
		case Write32BitsPort:
			if(!needToClearTX) //TODO
				*TXLCDReg = WordRX; //Takes 3ms to get here if delay
			stages = WaitingRX;
			DataRX = false;
		break;
		default:
			return;
		break;
	}
}
//----------------------------------------------------
//			 	      FUNCTIONS
//----------------------------------------------------
static void UARTSend(alt_u8 DataTX)
{
	alt_u8 preStartTX = (*StartTX)&(~0x1);
	*TXDataReg = DataTX;
	*StartTX = (preStartTX|1);
	for(alt_u8 i = 0; i < 10; i++); //Raw delay
	*StartTX = (preStartTX|0);
}
/**
 * @brief Makes the read of the register
 * @note Prior the lower button
 */
static ControlPort ControlPortRead(void)
{
	alt_u8 Read = *ControlBase&0xF;

	if((Read&1)) {
		return SetData;
	}
	else if(Read&(1<<1)) {
		return SendTX;
	}
	else if(Read&(1<<2)) {
		return ClearTX;
	}
	else if(Read&(1<<3)) {
		return ClearRX;
	}
	else
		return None;
}

static void StatusWrite(StatusLeds statusLeds, alt_u8 value)
{
	if(value > 1)
		value = 1;
	alt_u8 Port = *StatusLed;
	Port &= ~statusLeds;
	switch(statusLeds)
	{
		case ReadyToSend:
			*StatusLed = Port|value;
		break;
		case IncomingData:
			*StatusLed = Port|(value<<1);
		break;
		case TXBusy:
			*StatusLed = Port|(value<<2);
		break;
	}
}

//----------------------------------------------------
//			 	      	ISR
//----------------------------------------------------
void UART_TX_CpltCallback(void* isr_context, alt_u32 id){
	TXIsBusy = false;
}

void UART_RX_CpltCallback(void* isr_context, alt_u32 id) {
  	if(EnableReception) {
		DataRX = true;
		WordRX |= (alt_u32) *RXDataReg<<(8*RXCounts);
		RXCounts++;
		if(RXCounts > 3)
		{
			RXCounts = 0;
			EndOfWordRX = true;
		}
	}
}

void ParsedLoopElapsedCallback(void* isr_context, alt_u32 id) {
	ParsedLoopFlag = false;
}

static void IRQRegister(void) {
  pParsedLoop_IRQ = &ParsedLoopElapsedCallback;
  pUART_TX_IRQ = &UART_TX_CpltCallback;
  pUART_RX_IRQ = &UART_RX_CpltCallback;
  alt_ic_isr_register(UART_TX_IRQ_INTERRUPT_CONTROLLER_ID,
                      UART_TX_IRQ,
                      pUART_TX_IRQ,
                      NULL, //Only one IRQ on the peripherial
                      NULL);
  alt_ic_isr_register(UART_RX_IRQ_INTERRUPT_CONTROLLER_ID,
                      UART_RX_IRQ,
                      pUART_RX_IRQ,
                      NULL, //Only one IRQ on the peripherial
                      NULL);
  alt_ic_isr_register(PARSEDLOOP_IRQ_IRQ_INTERRUPT_CONTROLLER_ID,
                      PARSEDLOOP_IRQ_IRQ,
                      pParsedLoop_IRQ,
                      NULL, //Only one IRQ on the peripherial
                      NULL);
}
