#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <inttypes.h>
#include "driver/gpio.h"

//#define DOUBLE
//#define FLOAT
#define FIXED_POINT 16 //32 Bits - 00.00h

#ifdef FIXED_POINT
#define FIXED_MASK ((1<<FIXED_POINT) - 1)
#define intToFixed(x) (x<<FIXED_POINT)
#define ToFixed10(x) (x<<FIXED_POINT)/10
#define ToFixed100(x) (x<<FIXED_POINT)/100
#define ToFixed5dec(x) (x<<FIXED_POINT)/100000
#endif
#define N 32

#ifdef DOUBLE
typedef struct FIFO{
	double items[N];
}FIFO;
#elif defined(FLOAT)
typedef struct FIFO{
	float items[N];
}FIFO;
#elif defined(FIXED_POINT)
typedef struct FIFO{
	int32_t items[N];
}FIFO;
#endif

//Prototypes
static FIFO fifocreate();
#ifdef DOUBLE
static void fifoADD(FIFO *f, double value);
#elif defined(FLOAT)
static void fifoADD(FIFO *f, float value);
#elif defined(FIXED_POINT)
static void fifoADD(FIFO *f, int32_t value);
#endif

FIFO x;

#ifdef DOUBLE
double *px = (double *)&x;
double y = 0;
double H[N] = {0.01, 0.13, 0.02, -0.03,
		       0.01, 0.02, 0.10, 0.05,
			   0.05, 0.01, 0.03, 0.12,
			   0.02, -0.40, -0.48, 0.13,
			   0.01, 0.13, 0.02, -0.03,
			   0.01, 0.02, 0.10, 0.05,
			   0.05, 0.01, 0.03, 0.12,
			   0.02, -0.40, -0.48, 0.13};
#elif defined(FLOAT)
float *px = (float *)&x;
float y = 0;
float H[N] = {0.01, 0.13, 0.02, -0.03,
		   0.01, 0.02, 0.10, 0.05,
		   0.05, 0.01, 0.03, 0.12,
		   0.02, -0.40, -0.48, 0.13,
		   0.01, 0.13, 0.02, -0.03,
		   0.01, 0.02, 0.10, 0.05,
		   0.05, 0.01, 0.03, 0.12,
		   0.02, -0.40, -0.48, 0.13};
#elif defined(FIXED_POINT)
int32_t *px = (int32_t *)&x;
int32_t y = 0;
//Numbers			0.01			0.13			0.02		  -0.03
int32_t H[N] = {ToFixed100(1), ToFixed100(13), ToFixed100(2),  ToFixed100(-3),
				ToFixed100(1), ToFixed100(2),  ToFixed100(10), ToFixed100(5),
				ToFixed100(5), ToFixed100(1),  ToFixed100(3),  ToFixed100(12),
				ToFixed100(2), ToFixed100(-40),ToFixed100(-48),ToFixed100(13),
				ToFixed100(1), ToFixed100(13), ToFixed100(2),  ToFixed100(10),
				ToFixed100(5), ToFixed100(5),  ToFixed100(10), ToFixed100(5),
				ToFixed100(5), ToFixed100(1),  ToFixed100(3),  ToFixed100(12),
				ToFixed100(2), ToFixed100(-40),ToFixed100(-48),ToFixed100(13)};
#endif

void app_main(void)
{
  gpio_reset_pin(GPIO_NUM_15);
  gpio_set_direction(GPIO_NUM_15, GPIO_MODE_OUTPUT);


  x = fifocreate();

#ifdef FIXED_POINT
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
  fifoADD(&x, ToFixed5dec(25515)); 					    //0.25515 Truncated
  fifoADD(&x, (intToFixed(50) + ToFixed5dec(20020)));   //50.20020
  fifoADD(&x, intToFixed(20541) + ToFixed10(3)); 		//20541.3
  fifoADD(&x, intToFixed(1041) + ToFixed10(3));         //1041.3
  fifoADD(&x, intToFixed(1121)); 						//1121
#else
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
  fifoADD(&x, 0.255152);
  fifoADD(&x, 50.20020);
  fifoADD(&x, 20541.3);
  fifoADD(&x, 1041.3);
  fifoADD(&x, 1121);
#endif


  while (1)
  {
	  gpio_set_level(GPIO_NUM_15, 1);

	  //Perform the calculations
#ifdef FIXED_POINT
	  for(uint16_t i = 0; i < N; i++, px++)
	  		  y += *px * H[i];
#else
	  for(uint16_t i = 0; i < N; i++, px++)
	  		  y += *px * H[i];
#endif

	  //Reinit the pointer
#ifdef DOUBLE
	  px = (double *)&x;
#elif defined(FLOAT)
	  px = (float *)&x;
#elif defined(FIXED_POINT)
	  px = (int32_t *)&x;
#endif
	  gpio_set_level(GPIO_NUM_15, 0);
  }
}

static FIFO fifocreate()
{
	FIFO f;
	memset(f.items, 0, sizeof(f.items));
	return f;
}


//Add function
#ifdef DOUBLE
static void fifoADD(FIFO *f, double value)
#elif defined(FLOAT)
static void fifoADD(FIFO *f, float value)
#elif defined(FIXED_POINT)
static void fifoADD(FIFO *f, int32_t value)
#endif
{
	int tmp[N];
    for(uint16_t i = 0; i < N; i++)
    {
    	tmp[i] = f->items[i];
    }

	f->items[0] = value;
	//Shifting the items
	for(uint16_t i = 1; i < N; i++)
		f->items[i] = tmp[i-1];
}
