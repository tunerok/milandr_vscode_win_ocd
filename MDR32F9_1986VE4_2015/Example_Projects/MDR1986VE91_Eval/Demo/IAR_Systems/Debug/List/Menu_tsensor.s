///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:01 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_tsensor.c                         /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_tsensor.c --preprocess            /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lCN          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lB           /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\ -o            /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\Obj\ --debug        /
//                    --endian=little --cpu=Cortex-M3 -e --fpu=None           /
//                    --dlib_config "C:\Program Files (x86)\IAR               /
//                    Systems\Embedded Workbench                              /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\config\ -I          /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\ -I                         /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\MDR /
//                    32F9Qx_StdPeriph_Driver\inc\USB_Library\ -I             /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Libraries\CMS /
//                    IS\CM3\CoreSupport\ -I C:\WORK\Milandr.MDR1986BExx.1.4. /
//                    0\Example_Projects\MDR1986VE91_Eval\Demo\IAR_Systems\.. /
//                    \..\..\..\Libraries\CMSIS\CM3\DeviceSupport\MDR32F9Qx\i /
//                    nc\ -I C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projec /
//                    ts\MDR1986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Librar /
//                    ies\CMSIS\CM3\DeviceSupport\MDR32F9Qx\startup\iar\ -I   /
//                    C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\..\..\..\..\Example_Proje /
//                    cts\MDR1986VE91_Eval\inc\ -Ohz                          /
//    List file    =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_tsensor.s /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_tsensor

        #define SHT_PROGBITS 0x1

        EXTERN ADC1_Cmd
        EXTERN ADC1_GetResult
        EXTERN ADC1_ITConfig
        EXTERN ADC1_Value
        EXTERN ADC_Temp_Sensor_Config
        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN DisplayMenuTitle
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTS

        PUBLIC TSENSORFunc

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_tsensor.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_tsensor.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.2.0
//    6   * @date    21.10.2011
//    7   * @brief   This file contains all the "Temperature" menu handlers.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   11   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   12   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   13   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   14   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   15   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   16   *
//   17   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   18   */
//   19 /* Includes ------------------------------------------------------------------*/
//   20 #include "MDR32F9Qx_config.h"
//   21 #include <MDR32F9Qx_rst_clk.h>
//   22 #include <MDR32F9Qx_adc.h>
//   23 #include "adc.h"
//   24 #include "Menu.h"
//   25 #include "Menu_items.h"
//   26 #include "lcd.h"
//   27 #include "text.h"
//   28 #include "joystick.h"
//   29 #include "systick.h"
//   30 #include "MDR32F9Qx_it.h"
//   31 
//   32 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   33   * @{
//   34   */
//   35 
//   36 /** @addtogroup Menu Menu
//   37   * @{
//   38   */
//   39 
//   40 /** @addtogroup Menu_TSENSOR Menu TSENSOR
//   41   * @{
//   42   */
//   43 
//   44 /** @defgroup Menu_TSENSOR_Private_Constants Menu TSENSOR Private Constants
//   45   * @{
//   46   */
//   47 
//   48 /* Value ARC1_RESULT for 25° C */
//   49 #define V_25                             1700
//   50 /* Average Slope of the temperature curve */
//   51 #define Average_Slope                    6
//   52 
//   53 #define Temp_Display_Column              33
//   54 
//   55 /** @} */ /* End of group Menu_TSENSOR_Private_Constants */
//   56 
//   57 /** @defgroup Menu_TSENSOR_Private_Types Menu TSENSOR Private Types
//   58   * @{
//   59   */
//   60 
//   61 /** @} */ /* End of group Menu_TSENSOR_Private_Types */
//   62 
//   63 /** @defgroup Menu_TSENSOR_Private_Macros Menu TSENSOR Private Macros
//   64   * @{
//   65   */
//   66 
//   67 
//   68 /** @} */ /* End of group Menu_TSENSOR_Private_Macros */
//   69 
//   70 /** @defgroup Menu_TSENSOR_Private_Variables Menu TSENSOR Private Variables
//   71   * @{
//   72   */
//   73 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   74 static uint8_t  TempCelsius_Display[] = "    .    C";
TempCelsius_Display:
        DATA
        DC8 "    .    C"
        DC8 0
        DC8 "    .    F"
        DC8 0
//   75 static uint8_t  TempFahrenheit_Display[] = "    .    F";

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4
//   76 static int32_t  Temp_Decimal, TempCelsius_Value, Temp_Value_Fahrenheit;
//   77 
//   78 /** @} */ /* End of group Menu_TSENSOR_Private_Variables */
//   79 
//   80 /** @defgroup Menu_TSENSOR_Private_Functions Menu TSENSOR Private Functions
//   81   * @{
//   82   */
//   83 
//   84 /*******************************************************************************
//   85 * Function Name  : TSENSORFunc
//   86 * Description    : Demonstration of TSENSOR utilization.
//   87 * Input          : None
//   88 * Output         : None
//   89 * Return         : None
//   90 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   91 void TSENSORFunc(void)
//   92 {
TSENSORFunc:
        PUSH     {R1-R11,LR}
//   93   uint32_t key;
//   94   uint32_t curr_ADC1_Value = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   95   int32_t V_Since;
//   96 
//   97   sFONT *OldFont = CurrentFont;
        LDR.N    R4,??DataTable1
        LDR      R0,[R4, #+0]
        STR      R0,[SP, #+8]
//   98   LCD_Method OldMethod = CurrentMethod;
        LDR.N    R5,??DataTable1_1
        LDRB     R0,[R5, #+0]
        STRB     R0,[SP, #+4]
//   99 
//  100   /* Print header */
//  101   LCD_CLS();
        BL       LCD_CLS
//  102   CurrentMethod = MET_AND;
        MOVS     R0,#+4
        STRB     R0,[R5, #+0]
//  103   CurrentFont = &Font_6x8;
        LDR.N    R0,??DataTable1_2
        STR      R0,[R4, #+0]
//  104   DisplayMenuTitle("Temperature");
        ADR.W    R0,`?<Constant "Temperature">`
        BL       DisplayMenuTitle
//  105   WAIT_UNTIL_KEY_RELEASED(SEL);
??TSENSORFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??TSENSORFunc_0
//  106 
//  107   /* Configure the Temperature Sensor */
//  108   ADC_Temp_Sensor_Config();
        BL       ADC_Temp_Sensor_Config
        LDR.N    R0,??DataTable1_3  ;; 0xe000e100
        MOV      R1,#+131072
        STR      R1,[R0, #+0]
//  109 
//  110   /* Enable interrupt on ADC */
//  111   NVIC_EnableIRQ(ADC_IRQn);
//  112   /* ADC1 enable */
//  113   ADC1_Cmd(ENABLE);
        MOVS     R0,#+1
        BL       ADC1_Cmd
//  114 
//  115   key = GetKey();
        BL       GetKey
        MOV      R11,R0
//  116 
//  117   /* Enable ADC1 end of conversion interrupt */
//  118   ADC1_ITConfig(ADC1_FLAG_END_OF_CONVERSION, ENABLE);
        BL       ?Subroutine0
??CrossCallReturnLabel_2:
        MOV      R8,#+10
        MOV      R10,#+100
        LDR.N    R6,??DataTable1_4
        MOV      R9,#+1000
        LDR.N    R7,??DataTable1_5
        B.N      ??TSENSORFunc_1
//  119 
//  120   for (; key != SEL; key = GetKey())
//  121   {
//  122     ADC1_Value = ADC1_GetResult();
//  123     if (!ADC1_Value)
//  124     {
//  125     	continue;
//  126     }
//  127 
//  128     if (curr_ADC1_Value != ADC1_Value)
//  129     {
//  130 			curr_ADC1_Value = ADC1_Value;
//  131 
//  132 			/* Check that ADC1_Value contains data from TSENSOR measuring conversion */
//  133 			if (((ADC1_Value & ADC_RESULT_CHANNEL_Msk) >> ADC_RESULT_CHANNEL_Pos) == ADC_CH_TEMP_SENSOR)
//  134 			{
//  135 				V_Since = ADC1_Value & ADC_RESULT_Msk;
//  136 
//  137 				TempCelsius_Value = (((V_Since - V_25) * 1000) / (Average_Slope * 1000)) + 25 * 1000;
//  138 				if (TempCelsius_Value < 0)
//  139 				{
//  140 					/* Negative temperature measured */
//  141 					TempCelsius_Display[0]='-';
//  142 					TempCelsius_Value = -TempCelsius_Value;
//  143 				}
//  144 				else
//  145 				{
//  146 					/* Positive temperature measured */
//  147 					TempCelsius_Display[0]='+';
//  148 				}
//  149 				Temp_Decimal = TempCelsius_Value % 1000;
//  150 
//  151 				/* Convert temperature in Celsius to Fahrenheit */
//  152 				Temp_Value_Fahrenheit = (9 * TempCelsius_Value / 5) + 32000;
//  153 				if (Temp_Value_Fahrenheit < 0)
//  154 				{
//  155 					/* Negative temperature measured */
//  156 					TempFahrenheit_Display[0]='-';
//  157 					Temp_Value_Fahrenheit = -Temp_Value_Fahrenheit;
//  158 				}
//  159 				else
//  160 				{
//  161 					/* Positive temperature measured */
//  162 					TempFahrenheit_Display[0]='+';
??TSENSORFunc_2:
        MOVS     R3,#+43
        STRB     R3,[R6, #+12]
//  163 				}
//  164 
//  165 				TempCelsius_Value     = TempCelsius_Value / 1000;
//  166 				/* Calculate temperature digits in Celsius */
//  167 				TempCelsius_Display[1] = (TempCelsius_Value / 100) + 0x30;
??TSENSORFunc_3:
        SDIV     R3,R2,R10
        ADD      R12,R3,#+48
        STRB     R12,[R6, #+1]
//  168 				TempCelsius_Display[2] = ((TempCelsius_Value % 100) / 10) + 0x30;
        MLS      R2,R10,R3,R2
        SDIV     R3,R2,R8
        ADD      R12,R3,#+48
        STRB     R12,[R6, #+2]
//  169 				TempCelsius_Display[3] = ((TempCelsius_Value % 100) % 10) + 0x30;
        MLS      R2,R8,R3,R2
        ADDS     R2,R2,#+48
        STRB     R2,[R6, #+3]
//  170 				TempCelsius_Display[5] = (Temp_Decimal / 100) + 0x30;
        SDIV     R2,R0,R10
        ADD      R3,R2,#+48
        STRB     R3,[R6, #+5]
//  171 				TempCelsius_Display[6] = ((Temp_Decimal % 100) / 10) + 0x30;
        MLS      R0,R10,R2,R0
        SDIV     R2,R0,R8
        ADD      R3,R2,#+48
        STRB     R3,[R6, #+6]
//  172 				TempCelsius_Display[7] = ((Temp_Decimal % 100) % 10) + 0x30;
        MLS      R0,R8,R2,R0
        ADDS     R0,R0,#+48
        STRB     R0,[R6, #+7]
//  173 
//  174 				Temp_Decimal = Temp_Value_Fahrenheit % 1000;
        SDIV     R2,R1,R9
        MLS      R0,R9,R2,R1
//  175 				Temp_Value_Fahrenheit = Temp_Value_Fahrenheit / 1000;
//  176 				/* Calculate temperature digits in Fahrenheit */
//  177 				TempFahrenheit_Display[1] = (Temp_Value_Fahrenheit / 100) + 0x30;
        SDIV     R1,R2,R10
        ADD      R3,R1,#+48
        STRB     R3,[R6, #+13]
//  178 				TempFahrenheit_Display[2] = ((Temp_Value_Fahrenheit % 100) / 10) + 0x30;
        MLS      R1,R10,R1,R2
        SDIV     R2,R1,R8
        ADD      R3,R2,#+48
        STRB     R3,[R6, #+14]
//  179 				TempFahrenheit_Display[3] = ((Temp_Value_Fahrenheit % 100) % 10) + 0x30;
        MLS      R1,R8,R2,R1
        ADDS     R1,R1,#+48
        STRB     R1,[R6, #+15]
//  180 				TempFahrenheit_Display[5] = (Temp_Decimal / 100) + 0x30;
        SDIV     R1,R0,R10
        ADD      R2,R1,#+48
        STRB     R2,[R6, #+17]
//  181 				TempFahrenheit_Display[6] = ((Temp_Decimal % 100) / 10) + 0x30;
        MLS      R0,R10,R1,R0
        SDIV     R1,R0,R8
        ADD      R2,R1,#+48
        STRB     R2,[R6, #+18]
//  182 				TempFahrenheit_Display[7] = ((Temp_Decimal % 100) % 10) + 0x30;
        MLS      R0,R8,R1,R0
        ADDS     R0,R0,#+48
        STRB     R0,[R6, #+19]
//  183 
//  184 				/* Display temperature value on LCD */
//  185 				LCD_PUTS(Temp_Display_Column, CurrentFont->Height * 4, TempCelsius_Display);
        MOV      R2,R6
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R1,R0,#+2
        UXTB     R1,R1
        MOVS     R0,#+33
        BL       LCD_PUTS
//  186 				LCD_PUTS(Temp_Display_Column, CurrentFont->Height * 5 + 2, TempFahrenheit_Display);
        ADD      R2,R6,#+12
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R0, LSL #+2
        ADDS     R1,R0,#+2
        UXTB     R1,R1
        MOVS     R0,#+33
        BL       LCD_PUTS
//  187 			}
//  188     }
//  189 		ADC1_Value = 0;
??TSENSORFunc_4:
        MOVS     R0,#+0
        STR      R0,[R7, #+0]
//  190 	  /* Re-enable ADC1 end of conversion interrupt */
//  191 	  ADC1_ITConfig(ADC1_FLAG_END_OF_CONVERSION, ENABLE);
        BL       ?Subroutine0
??CrossCallReturnLabel_1:
        BL       GetKey
        MOV      R11,R0
??TSENSORFunc_1:
        CMP      R11,#+0
        BEQ.N    ??TSENSORFunc_5
        BL       ADC1_GetResult
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        CMP      R0,#+0
        BEQ.N    ??CrossCallReturnLabel_1
        LDR      R0,[SP, #+0]
        LDR      R1,[R7, #+0]
        CMP      R0,R1
        BEQ.N    ??TSENSORFunc_4
        LDR      R0,[R7, #+0]
        STR      R0,[SP, #+0]
        LDR      R0,[R7, #+0]
        UBFX     R0,R0,#+16,#+12
        CMP      R0,#+31
        BNE.N    ??TSENSORFunc_4
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+20
        LSRS     R0,R0,#+20
        SUBW     R0,R0,#+1700
        MUL      R0,R9,R0
        MOVW     R1,#+6000
        SDIV     R0,R0,R1
        ADD      R1,R0,#+24832
        ADDS     R1,R1,#+168
        BPL.N    ??TSENSORFunc_6
        MOVS     R0,#+45
        STRB     R0,[R6, #+0]
        RSBS     R1,R1,#+0
        B.N      ??TSENSORFunc_7
??TSENSORFunc_6:
        MOVS     R0,#+43
        STRB     R0,[R6, #+0]
??TSENSORFunc_7:
        SDIV     R2,R1,R9
        MLS      R0,R9,R2,R1
        ADD      R1,R1,R1, LSL #+3
        MOVS     R3,#+5
        SDIV     R1,R1,R3
        ADDS     R1,R1,#+32000
        BPL.W    ??TSENSORFunc_2
        MOVS     R3,#+45
        STRB     R3,[R6, #+12]
        RSBS     R1,R1,#+0
        B.N      ??TSENSORFunc_3
//  192   }
//  193 
//  194   CurrentFont = OldFont;
??TSENSORFunc_5:
        LDR      R0,[SP, #+8]
        STR      R0,[R4, #+0]
//  195   CurrentMethod = OldMethod;
        LDRB     R0,[SP, #+4]
        STRB     R0,[R5, #+0]
//  196 
//  197   /* Disable interrupt on ADC */
//  198   NVIC_DisableIRQ(ADC_IRQn);
        LDR.N    R0,??DataTable1_6  ;; 0xe000e180
        MOV      R1,#+131072
        STR      R1,[R0, #+0]
//  199   /* Disable ADC end of conversion interrupt */
//  200   ADC1_ITConfig(ADC1_FLAG_END_OF_CONVERSION, DISABLE);
        MOVS     R1,#+0
        BL       ??Subroutine0_0
//  201   /* ADC1 disable */
//  202   ADC1_Cmd(DISABLE);
??CrossCallReturnLabel_0:
        MOVS     R0,#+0
        BL       ADC1_Cmd
//  203   DisplayMenu();
        POP      {R0-R2,R4-R11,LR}
        B.W      DisplayMenu
//  204 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     TempCelsius_Display

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     ADC1_Value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R1,#+1
??Subroutine0_0:
        MOVS     R0,#+4
        B.W      ADC1_ITConfig

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Temperature">`:
        DC8 "Temperature"

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  205 
//  206 /** @} */ /* End of group Menu_TSENSOR_Private_Functions */
//  207 
//  208 /** @} */ /* End of group Menu_TSENSOR */
//  209 
//  210 /** @} */ /* End of group Menu */
//  211 
//  212 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  213 
//  214 /******************* (C) COPYRIGHT 2010 Phyton *******************
//  215 *
//  216 * END OF FILE Menu_tsensor.c */
// 
//  12 bytes in section .bss
//  24 bytes in section .data
// 494 bytes in section .text
// 
// 494 bytes of CODE memory
//  36 bytes of DATA memory
//
//Errors: none
//Warnings: none
