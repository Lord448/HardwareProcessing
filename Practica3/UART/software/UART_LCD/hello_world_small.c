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
#include "altera_avalon_pio_regs.h"
#include "altera_vic_irq.h"
#include "altera_vic_regs.h"
#include "nios2.h"
#include "alt_types.h"
#include "system.h"
#include <stdbool.h>

//#define NATURAL
#define ALTERA_API

#define MaskError 0x0001
#define MaskBusy  0x0002

#define MaskReadyLed 0x1
#define MaskIncomDataLed 0x2

#ifdef ALTERA_API
#define TXDataSel IORD_ALTERA_AVALON_PIO_DATA(DIP_TX_DATA_PIO_BASE)
#endif

#ifndef NULL
  #ifdef __null
    #define NULL __null
  #else
    #define NULL 0
  #endif
#endif

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
static void vTaskControlRead(void); //Debouncing
static void vTaskUARTSend(void);
static void vTaskRXDetection(void);
//----------------------------------------------------
//			 	      FUNCTIONS
//----------------------------------------------------
static void UARTSend(alt_u8 DataTX);
static void StatusWrite(StatusLeds statusLeds, alt_u8 value);
static ControlPort ControlPortRead(void);
static void IRQRegister(void);

//PIO definitions
#ifdef NATURAL
volatile alt_u32 *TXLCDReg =  (alt_u32*) UART_TX_32_PO_BASE; //Prints the data to the LCD
volatile alt_u32 *RXLDCaReg = (alt_u32*) UART_RX_32_PO_BASE; //Prints the data to the LCD
volatile alt_u32 *TXDataReg = (alt_u32*) UART_TX_DATA_REG_BASE; //UART Register to send data
volatile alt_u32 *RXDataReg = (alt_u32*) UART_RX_DATA_REG_BASE; //UART Register to receive data
volatile alt_u32 *TXDataSel = (alt_u32*) DIP_TX_DATA_PIO_BASE; //DIP to select the TX data
volatile alt_u32 *ControlBase = (alt_u32*) CONTROL_PIO_BASE; //Buttons to control the program -- Needs mask 4 LSB
volatile alt_u32 *StatusLed = (alt_u32*) STATUS_LEDS_PIO_BASE; //LEDs to report status of program -- Needs mask 4 LSB
volatile alt_u32 *StartTX = (alt_u32*) UART_TX_START_BASE; //When high sends a data to UART -- Needs mask of 1 LSB
volatile alt_u32 *UARTStatus = (alt_u32*) UART_RX_STATUS_REG_BASE; //Status of the UART RX 0 busy, 1 Error, both on Active on High -- Needs mask
volatile alt_u32 *StartTimer = (alt_u32*) START_TIMER_BASE; //When high let the parsed loop timer run
#endif
//Structure for RX ISR Handling
volatile struct UARTRead {
	bool DataRX;
	bool EndOfWordRX;
	bool EnableReception;
	bool needToClearRX;
	alt_u32 WordRX;
	alt_u8 RXCounts;
	
}UARTRead = {
	.DataRX = false,
	.EndOfWordRX = false,
	.EnableReception = true,
	.needToClearRX = false,
	.RXCounts = 0,
	.WordRX = 0
};

//Global isr variables
volatile bool TXIsBusy = false; //TODO
volatile bool ParsedLoopFlag = true;

//Global variables
volatile ControlPort PortRead = None;

int main()
{
  alt_sys_init();
  alt_irq_init(NULL);

#ifdef ALT_ENHANCED_INTERRUPT_API_PRESENT
  IRQRegister();
#endif
#ifdef ALTERA_API
  IOWR_ALTERA_AVALON_PIO_DATA(START_TIMER_BASE, 1);
#elif defined(NATURAL)
  *StartTimer = 1;
#endif
  while (1)
  {
	  vTaskControlRead();
	  vTaskUARTSend();
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
static void vTaskControlRead(void) {
	enum stages{
		WaitingLows,
		WaitingHighs
	}volatile static stages = WaitingLows;
	const alt_u8 DebounceDelay = 15; //In milliseconds
	volatile static alt_u8 Highs = 0, Lows = 0;
	volatile static ControlPort ControlRead = None, pastControlRead = None;

	ControlRead = ControlPortRead();

	if(ControlRead == pastControlRead) {
		Highs++;
		Lows = 0;
	}
	else {
		Highs = 0;
		Lows++;
	}

	//Falling edge detection
	switch (stages) {
		case WaitingHighs: //Low State
			if(Highs >= DebounceDelay)
				stages = WaitingLows;

		break; //High State
		case WaitingLows:
			if(Lows >= DebounceDelay) {
				stages = WaitingHighs;
				PortRead = ControlRead;
			}
		break;
	}
}

static void vTaskUARTSend(void)
{
	enum stages{
		Waiting32BitsSel,
		SendState,
		WaitingClear
	}volatile static stages = Waiting32BitsSel;

	volatile static alt_u8 ByteCounter = 0;
	volatile static alt_u32 WordTX = 0;

	if(PortRead == ClearTX)
	{
		WordTX = 0;
		ByteCounter = 0;
		stages = Waiting32BitsSel;
	}
#ifdef ALTERA_API
	IOWR_ALTERA_AVALON_PIO_DATA(UART_TX_32_PO_BASE, WordTX);
#elif defined(NATURAL)
	*TXLCDReg = WordTX;
#endif
	switch(stages)
	{
		case Waiting32BitsSel:
			if(PortRead == SetData)
			{
#ifdef ALTERA_API
				alt_u32 DataSel = TXDataSel;
				WordTX |= (alt_u32) DataSel<<(8*ByteCounter);
#elif defined(NATURAL)
				WordTX |= (alt_u32) *TXDataSel<<(8*ByteCounter);
#endif
				ByteCounter++;
				if(ByteCounter > 3)
				{
					ByteCounter = 0;
				}
				PortRead = None;
			}
			else if(PortRead == SendTX)
			{
				stages = SendState;
				ByteCounter = 0;
				PortRead = None;
			}
			return;
		break;
		case SendState:
			volatile alt_u8 SendInfo = (alt_u8) (WordTX>>(8*ByteCounter));
			UARTSend(SendInfo); //Sending one byte
			ByteCounter++; //1ms interframe space
			if(ByteCounter > 3)
			{
				stages = WaitingClear;
				ByteCounter = 0;
				PortRead = None;
			}
			return;
		break;
		case WaitingClear:
			if(PortRead == SendTX) {
				stages = SendState;
				PortRead = None;
			}
			else if(PortRead == SetData) {
				stages = Waiting32BitsSel;
				WordTX = 0; 
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
	}volatile static stages = WaitingRX;

	const alt_16 IncomDataTime = 50; //In Milliseconds
	volatile alt_u8 ReceivingTime = 15; //In Milliseconds
	volatile static alt_u8 CountsDelay = 0;
	volatile static alt_16 CountIncomData = 0;
	volatile static bool TurnOffIncomData = false;

	if(TurnOffIncomData) //Incoming data Led delay
	{
		if(CountIncomData >= IncomDataTime)
		{
			StatusWrite(IncomingData, 1);
			CountIncomData = -1;
			TurnOffIncomData = false;
		}
		CountIncomData++;
	}

	if(PortRead == ClearRX || UARTRead.needToClearRX)
	{
		if(PortRead == ClearRX) {
			PortRead = None;
		}
		UARTRead.DataRX = false;
		UARTRead.EnableReception = true;
		UARTRead.EndOfWordRX = false;
		UARTRead.needToClearRX = false;
		UARTRead.WordRX = 0;
		UARTRead.RXCounts = 0;
		IOWR_ALTERA_AVALON_PIO_DATA(UART_RX_32_PO_BASE, UARTRead.WordRX);
		stages = WaitingRX;
	}

	switch(stages)
	{
		case WaitingRX:
			if(UARTRead.DataRX)
			{
				stages = Waiting32Bits;
				StatusWrite(IncomingData, 1);
				UARTRead.DataRX = false;
				TurnOffIncomData = true;
			}
		break;
		case Waiting32Bits:
			CountsDelay++;
			//Giving 15 milliseconds to get a full 32 Byte data
			if(UARTRead.EndOfWordRX || CountsDelay > ReceivingTime)
			{
				UARTRead.EnableReception = false;
				stages = Write32BitsPort;
			}
		break;
		case Write32BitsPort:
#ifdef ALTERA_API			
			IOWR_ALTERA_AVALON_PIO_DATA(UART_RX_32_PO_BASE, UARTRead.WordRX);
#elif defined(NATURAL)
			*TXLCDReg = UARTRead.WordRX;
#endif
			stages = WaitingRX;
			UARTRead.DataRX = false;
			UARTRead.EnableReception = true;
			UARTRead.EndOfWordRX = false;
			UARTRead.needToClearRX = false;
			UARTRead.WordRX = 0;
			UARTRead.RXCounts = 0;
			CountsDelay = 0;
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
#ifdef NATURAL
	alt_u8 preStartTX = (*StartTX)&(~0x1);
	*TXDataReg = DataTX;
	*StartTX = (preStartTX|1);
	for(alt_u8 i = 0; i < 10; i++); //Raw delay
	*StartTX = (preStartTX|0);
#elif defined(ALTERA_API)
	//Write to the UART TX Parallel register
	IOWR_ALTERA_AVALON_PIO_DATA(UART_TX_DATA_REG_BASE, DataTX);
	IOWR_ALTERA_AVALON_PIO_DATA(UART_TX_START_BASE, 1);
	IOWR_ALTERA_AVALON_PIO_DATA(UART_TX_START_BASE, 0);
#endif
}
/**
 * @brief Makes the read of the register
 * @note Prior the lower button
 */
static ControlPort ControlPortRead(void)
{
#ifdef ALTERA_API
	volatile alt_u8 Read = IORD_ALTERA_AVALON_PIO_DATA(CONTROL_PIO_BASE);
#elif defined(NATURAL)
	alt_u8 Read = (alt_u8) *ControlBase&0xF;
#endif

	if(Read&SetData) {
		return SetData;
	}
	else if(Read&SendTX) {
		return SendTX;
	}
	else if(Read&ClearTX) {
		return ClearTX;
	}
	else if(Read&ClearRX) {
		return ClearRX;
	}
	else
		return None;
}

static void StatusWrite(StatusLeds statusLeds, alt_u8 value)
{
#ifdef NATURAL
	alt_u8 Port = *StatusLed;
	if(value == 0)
		Port &= ~statusLeds;
	else //Writing 1
		Port |= statusLeds;
#elif defined(ALTERA_API)
	volatile alt_u8 Port = IORD_ALTERA_AVALON_PIO_DATA(STATUS_LEDS_PIO_BASE);
	if(value == 0)
		Port &= ~statusLeds;
	else //Writing a 1
		Port |= statusLeds;
	IOWR_ALTERA_AVALON_PIO_DATA(STATUS_LEDS_PIO_BASE, Port);
#endif
}

//----------------------------------------------------
//			 	      	ISR
//----------------------------------------------------
static void UART_RX_CpltCallback(void* isr_context) {
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(UART_RX_BASE, 0);  //Reset the edge capture

	volatile struct UARTRead* pUARTRead = (volatile struct UARTRead*) isr_context;

	volatile alt_u32 RXRead = IORD_ALTERA_AVALON_PIO_DATA(UART_RX_DATA_REG_BASE);

	if(RXRead == 'c' || RXRead == 'C') { //0x43 0x63
		pUARTRead -> needToClearRX = true;
	}
	else if(pUARTRead -> EnableReception) {
		pUARTRead -> DataRX = true;
#ifdef NATURAL
		pUARTRead -> WordRX |= (alt_u32) **(pUARTRead -> spRXDataReg)<<(8*(pUARTRead -> RXCounts));
#elif defined(ALTERA_API)
		pUARTRead -> WordRX |= (alt_u32) RXRead<<(8*(pUARTRead -> RXCounts));
#endif
		pUARTRead -> RXCounts += 1;
		if(pUARTRead -> RXCounts > 3)
		{
			pUARTRead -> RXCounts = 0;
			pUARTRead -> EndOfWordRX = true;
		}
	}

	/* Read the PIO to delay ISR exit. This is done to prevent a 
	   spurious interrupt in systems with high processor -> pio 
	   latency and fast interrupts. */
	IORD_ALTERA_AVALON_PIO_EDGE_CAP(UART_TX_BASE);
}

static void UART_TX_CpltCallback(void* isr_context){
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(UART_TX_BASE, 0);  //Reset the edge capture
	volatile bool* pTXIsBusy = (volatile bool*) isr_context;

	*pTXIsBusy = false;

	/* Read the PIO to delay ISR exit. This is done to prevent a 
	   spurious interrupt in systems with high processor -> pio 
	   latency and fast interrupts. */
	IORD_ALTERA_AVALON_PIO_EDGE_CAP(UART_TX_BASE);
	
}

static void ParsedLoopElapsedCallback(void* isr_context) {
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PARSEDLOOP_IRQ_BASE, 0);  //Reset the edge capture
	volatile bool* pParsedLoopFlag = (volatile bool*) isr_context;

	*pParsedLoopFlag = false;

	/* Read the PIO to delay ISR exit. This is done to prevent a 
	   spurious interrupt in systems with high processor -> pio 
	   latency and fast interrupts. */
	IORD_ALTERA_AVALON_PIO_EDGE_CAP(PARSEDLOOP_IRQ_BASE);
}

static void IRQRegister(void) {
	void* pUARTReadStruct = (void*) &UARTRead;
	void* pTXIsBusy = (void*) &TXIsBusy;
	void* pParsedLoopFlag = (void*) &ParsedLoopFlag;

	//Enable interrupts
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(UART_RX_BASE, 0x1);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(UART_TX_BASE, 0x1);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PARSEDLOOP_IRQ_BASE, 0x1);

	//Reseting the edge capture
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(UART_RX_BASE, 0);
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(UART_TX_BASE, 0);
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PARSEDLOOP_IRQ_BASE, 0);

	
	//Register the ISR
	alt_ic_isr_register(UART_RX_IRQ_INTERRUPT_CONTROLLER_ID,
						UART_RX_IRQ,
						&UART_RX_CpltCallback,
						pUARTReadStruct,
						NULL);
	alt_ic_isr_register(UART_TX_IRQ_INTERRUPT_CONTROLLER_ID,
						UART_TX_IRQ,
						&UART_TX_CpltCallback,
						pTXIsBusy,
						NULL);
	alt_ic_isr_register(PARSEDLOOP_IRQ_IRQ_INTERRUPT_CONTROLLER_ID,
						PARSEDLOOP_IRQ_IRQ,
						&ParsedLoopElapsedCallback,
						pParsedLoopFlag,
						NULL);
}