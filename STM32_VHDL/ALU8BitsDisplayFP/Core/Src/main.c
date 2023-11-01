#include "main.h"
#include "fonts.h"
#include "ssd1306.h"
#include <math.h>
#include <stdio.h>
//#include <string.h>

#define FIXED_POINT_FRACTIONAL_BITS 0
#define mask_A 		(uint32_t)0b0011111111 			//a0-a7
#define mask_B 		(uint32_t)0b1111110011000000	//b6-b7 , b10-b15
#define mask_Sel 	(uint32_t)0b1100000000			//a8-a9

#define ABS(x) x > 0? x:-x

union fixedpoint
{
	int16_t num;
	unsigned char numhex[sizeof(int16_t)];
}fixedpoint;

typedef enum bool{
	false,
	true
}bool;

I2C_HandleTypeDef hi2c1;

void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
void Lectures(void);
void WriteText(int16_t value_A, int16_t value_B, uint32_t value_Sel);
void Complement_2(uint32_t in_X, float *number_X);
void Result(float value_A, float value_B, uint32_t value_Sel, float *result);
static int16_t float2Fixed(int16_t value_A, int16_t value_B, uint16_t value_Sel);

int16_t past_A = 0, past_B = 0, past_sel = 0;
int16_t current_A = 0, current_B = 0, current_sel = 0;
char sign[0];
bool flag_write = true, flag_clear = false;
float result_dec, result_hex;
uint32_t fp, bitfrac = 0;

int main(void)
{
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();
  MX_I2C1_Init();

  SSD1306_Init();

  SSD1306_GotoXY(0, 35);
  SSD1306_Puts("Dec: ", &Font_7x10, 1);
  SSD1306_GotoXY(0, 51);
  SSD1306_Puts("Hex: ", &Font_7x10, 1);

  while (1)
  {
	  Lectures();

	  flag_write = past_A != current_A || past_B != current_B || past_sel != current_sel;

	  if(flag_write)
	  {
		  flag_clear = true;
		  WriteText(current_A, current_B, current_sel);
	  }
	  else
	  {
		  WriteText(past_A, past_B, past_sel);
		  flag_clear = false;
	  }
	  if(flag_clear)
	  {
		  if(past_A != current_A)
		  {
			  SSD1306_GotoXY(50, 0);
			  SSD1306_Puts("            ", &Font_11x18, 1);
			  SSD1306_UpdateScreen();
		  }
		  else if(past_B != current_B)
		  {
			  SSD1306_GotoXY(50, 21);
			  SSD1306_Puts("            ", &Font_11x18, 1);
			  SSD1306_UpdateScreen();
		  }
		  else if(past_sel != current_sel)
		  {
			  SSD1306_GotoXY(50, 42);
			  SSD1306_Puts("            ", &Font_11x18, 1);
			  SSD1306_UpdateScreen();
		  }
		  flag_clear = false;
	  }
	  past_A = current_A;
	  past_B = current_B;
	  past_sel = current_sel;
  }
}

void Lectures(void)
{
	uint32_t portRead_A = (GPIOA -> IDR) & mask_A;
	uint32_t portRead_B = (GPIOB -> IDR) & mask_B;
	uint32_t portRead_sel = (GPIOA -> IDR) & mask_Sel;
	uint32_t fpRead1 = (GPIOB -> IDR) & 0b000011; //b0 b1
	uint32_t fpRead2 = (GPIOB -> IDR) & 0b110000; //b4 b5

	fp = fpRead1 | (fpRead2 >> 2);
	//A
	int8_t in_A = portRead_A;

	//B
	int8_t temp = (portRead_B & mask_B) >> 6;
	int8_t LSB_B = temp & 0b0000000011;
	int8_t MSB_B =(temp & 0b1111110000) >> 2;
	int8_t in_B = MSB_B | LSB_B;

	//Selector
	int16_t in_sel = portRead_sel >> 8;

	current_A = in_A;
	current_B = in_B;
	current_sel = in_sel;
}

void WriteText(int16_t value_A, int16_t value_B, uint32_t value_Sel)
{
	float number_A, number_B, number_Resdec;
	char str_A[8] = "", str_B[8] = "";
	char str_Resdec[12] = "", str_Reshex[4] = "", str_Reshex2[4] = "";
	char hexpoint[12] = "";

	/*STATIC TEXT
	SSD1306_GotoXY(0, 0);
	SSD1306_Puts("A: ", &Font_7x10, 1);
	SSD1306_GotoXY(60, 0);
	SSD1306_Puts("OP: ", &Font_7x10, 1);
	SSD1306_GotoXY(80, 0);
	SSD1306_Puts("B: ", &Font_7x10, 1);
	SSD1306_UpdateScreen();*/

	//IN_A
	Complement_2(value_A, &number_A);
	sprintf(str_A, "%1.4f", number_A);
	//SSD1306_GotoXY(0, 0);
	//SSD1306_Puts(sign, &Font_7x10, 1);				//sign
	SSD1306_GotoXY(84, 0);
	SSD1306_Puts(str_A, &Font_7x10, 1);			//value A

	//IN_SELECTOR
	SSD1306_GotoXY(60, 15);
	switch (value_Sel)
	{
	  case 0b00:
  		SSD1306_Puts("+", &Font_7x10, 1);
  		break;
	  case 0b01:
	  	SSD1306_Puts("-", &Font_7x10, 1);
	  	break;
	  default:
	  	SSD1306_Puts("x", &Font_7x10, 1);
	  	break;
	}

	//IN_B
	Complement_2(value_B, &number_B);
	sprintf(str_B, "%1.4f", number_B);
	//SSD1306_GotoXY(75, 0);
	//SSD1306_Puts(sign, &Font_7x10, 1);				//sign
	SSD1306_GotoXY(0, 0);
	SSD1306_Puts(str_B, &Font_7x10, 1);			//value B


	//DECIMAL RESULT
	Result(number_A, number_B, value_Sel, &number_Resdec);
	sprintf(str_Resdec, "%1.6f", number_Resdec);
	SSD1306_GotoXY(40, 35);
	SSD1306_Puts(str_Resdec, &Font_7x10, 1);
	SSD1306_UpdateScreen();

	//HEXADECIMAL RESULT
	fixedpoint.num = float2Fixed(value_A, value_B, value_Sel);
	sprintf(str_Reshex, "%02x", fixedpoint.numhex[1]);
	sprintf(str_Reshex2, "%02x", fixedpoint.numhex[0]);
	int j = 0;
	for(int i = 0, k = 4; i < 5; i++, k--)
	{
		switch(fp)
		{
			case 0b1110:
				j = 4;
			break;
			case 0b1101:
				j = 3;
			break;
			case 0b1011:
				j = 2;
			break;
			case 0b0111:
				j = 1;
			break;
		}

		if (i == j)
		{
			hexpoint[k] = '.';
			k--;
		}
		if(i < 2)
			hexpoint[k] = str_Reshex2[k];
		else if(i < 4)
			hexpoint[k] = str_Reshex[k];

	}


	SSD1306_GotoXY(40, 51);
	SSD1306_Puts(str_Reshex, &Font_7x10, 1);
	SSD1306_Puts(str_Reshex2, &Font_7x10, 1);
	SSD1306_UpdateScreen();

}

void Complement_2(uint32_t in_X, float *number_X)
{
    const uint32_t LSB = 0b00000001;

	uint8_t number[8];
	float weighting = 0;
	uint32_t position = 7;


	for(int i=0; i<8; i++)
	{
		number[i] = (in_X >> position) & LSB;
		position --;
	}

	//Addition of binary weighting
	int j = 0, k = 0;
	switch(fp)
	{
		case 0b1110:
			j = 0;
			k = 7;
			bitfrac = 0;
		break;
		case 0b1101:
			j = -4;
			k = 3;
			bitfrac = 0;
		break;
		case 0b1011:
			j = -8;
			k = -1;
			bitfrac = 4;
		break;
		case 0b0111:
			j = -12;
			k = -5;
			bitfrac = 8;
		break;
	}

	position = 7;
	for(int i=j; i<=k; i++)
	{
		if(i == k)
		{
			weighting += -number[position]*pow(2,i);
		}
		else
		{
			weighting += number[position]*pow(2,i);
		}
		position --;
	}
	*number_X = weighting;
	/*
	position = 7;
	for(int i=-4; i<=3; i++)
	{
		if(i == 3)
		{
			weighting += -number[position]*pow(2,i);
		}
		else
		{
			weighting += number[position]*pow(2,i);
		}
		position --;
	}

	*number_X = weighting;
	*/
	/*
	switch(fp)
	{
		case 0b1110:
			*number_X = weighting * 16;
		break;
		case 0b1101:
			*number_X = weighting * 4;
		break;
		case 0b1011:
			*number_X = weighting;
		break;
		case 0b0111:
			*number_X = weighting / 4;
		break;
	}
	*/

}

void Result(float value_A, float value_B, uint32_t value_Sel, float *result_dec)
{
	switch (value_Sel)
	{
	  case 0b00:
  		*result_dec = value_A + value_B;
  		break;
	  case 0b01:
		*result_dec = value_A - value_B;
	  	break;
	  default:
		*result_dec = value_A * value_B;
	  	break;
	}
}

static int16_t float2Fixed(int16_t value_A, int16_t value_B, uint16_t value_Sel)
{
	switch (value_Sel)
	{
	  case 0b00:
		  return value_A + value_B;
  	  break;
	  case 0b01:
		  return value_A - value_B;
	  break;
	  default:
		  return value_A * value_B;
	  break;
	}
	//return (int16_t)(round(number * (1 << bitfrac)));
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
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 400000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

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
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);

  /*Configure GPIO pin : PC13 */
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : A0_Pin A1_Pin A2_Pin A3_Pin
                           A4_Pin A5_Pin A6_Pin A7_Pin
                           Sel0_Pin Sel1_Pin */
  GPIO_InitStruct.Pin = A0_Pin|A1_Pin|A2_Pin|A3_Pin
                          |A4_Pin|A5_Pin|A6_Pin|A7_Pin
                          |Sel0_Pin|Sel1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : FP0_Pin FP1_Pin B2_Pin B3_Pin
                           B4_Pin B5_Pin B6_Pin B7_Pin
                           FP2_Pin FP3_Pin B0_Pin B1_Pin */
  GPIO_InitStruct.Pin = FP0_Pin|FP1_Pin|B2_Pin|B3_Pin
                          |B4_Pin|B5_Pin|B6_Pin|B7_Pin
                          |FP2_Pin|FP3_Pin|B0_Pin|B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

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
