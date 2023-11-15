#include "main.h"
#include <string.h>
#include <stdint.h>

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

void SystemClock_Config(void);
static void MX_GPIO_Init(void);

int main(void)
{
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();

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
	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, 1);
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
	  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, 0);
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

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, GPIO_PIN_RESET);

  /*Configure GPIO pin : PC13 */
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : PA0 */
  GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
