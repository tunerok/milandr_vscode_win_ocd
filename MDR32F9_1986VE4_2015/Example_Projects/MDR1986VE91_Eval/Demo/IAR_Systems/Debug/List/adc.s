///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:01 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\adc.c                                  /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\adc.c --preprocess                     /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\adc.s          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `adc`

        #define SHT_PROGBITS 0x1

        EXTERN ADC1_Init
        EXTERN ADC_DeInit
        EXTERN ADC_Init
        EXTERN ADC_StructInit
        EXTERN ADCx_StructInit
        EXTERN RST_CLK_PCLKcmd

        PUBLIC ADC_Config
        PUBLIC ADC_InitStructure
        PUBLIC ADC_Temp_Sensor_Config
        PUBLIC ADCx_InitStructure

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\adc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    adc.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    09.09.2011
//    7   * @brief   This file contains all the utilities for work with ADC
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
//   19 
//   20 /* Includes ------------------------------------------------------------------*/
//   21 #include <MDR32F9Qx_port.h>
//   22 #include <MDR32F9Qx_rst_clk.h>
//   23 #include <MDR32F9Qx_adc.h>
//   24 #include "demo_init.h"
//   25 #include "MDR32F9Qx_board.h"
//   26 
//   27 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   28   * @{
//   29   */
//   30 
//   31 /** @addtogroup ADC_Routines ADC Routines
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup ADC_Private_Constants ADC Private Constants
//   36   * @{
//   37   */
//   38 
//   39 /** @} */ /* End of group ADC_Private_Constants */
//   40 
//   41 /** @defgroup ADC_Variables ADC Variables
//   42   * @{
//   43   */
//   44 
//   45 /* ADC Init structures */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 ADC_InitTypeDef  ADC_InitStructure;
//   47 ADCx_InitTypeDef ADCx_InitStructure;
ADCx_InitStructure:
        DS8 44
ADC_InitStructure:
        DS8 28
//   48 
//   49 /** @} */ /* End of group ADC_Variables */
//   50 
//   51 /** @defgroup ADC_Private_Functions ADC Private Functions
//   52   * @{
//   53   */
//   54 
//   55 /*******************************************************************************
//   56 * Function Name  : ADC_Config
//   57 * Description    : Configure the ADC1 for TRIM using.
//   58 * Input          : None
//   59 * Output         : None
//   60 * Return         : None
//   61 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void ADC_Config(void)
//   63 {
ADC_Config:
        PUSH     {R4,LR}
//   64   /* Enable the RTCHSE clock on ADC1 */
//   65   RST_CLK_PCLKcmd(RST_CLK_PCLK_ADC, ENABLE);
        BL       ?Subroutine2
//   66 
//   67   /* ADC Configuration */
//   68   /* Reset all ADC settings */
//   69   ADC_DeInit();
??CrossCallReturnLabel_3:
        BL       ADC_DeInit
//   70 
//   71   ADC_StructInit(&ADC_InitStructure);
        BL       ?Subroutine1
//   72   ADC_InitStructure.ADC_SynchronousMode      = ADC_SyncMode_Independent;
??CrossCallReturnLabel_1:
        MOVS     R0,#+0
        STR      R0,[R4, #+44]
//   73   /* Use base voltage source to reduce the power consumption,
//   74    * thus enable the temperature sensor */
//   75   ADC_InitStructure.ADC_TempSensor           = ADC_TEMP_SENSOR_Enable;
        MOV      R0,#+131072
        STR      R0,[R4, #+52]
//   76   ADC_Init(&ADC_InitStructure);
        ADD      R0,R4,#+44
        BL       ADC_Init
//   77 
//   78   ADCx_StructInit(&ADCx_InitStructure);
        MOV      R0,R4
        BL       ADCx_StructInit
//   79 
//   80   /* Enable ADC cyclic mode */
//   81   ADCx_InitStructure.ADC_SamplingMode     = ADC_SAMPLING_MODE_CICLIC_CONV;
        MOVS     R0,#+8
        STR      R0,[R4, #+4]
//   82 #if defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//   83   ADCx_InitStructure.ADC_ChannelNumber    = ADC_CH_ADC2;
//   84 #else
//   85   ADCx_InitStructure.ADC_ChannelNumber    = ADC_CH_ADC7;
        MOVS     R0,#+7
        STR      R0,[R4, #+12]
//   86 #endif /* defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1) */
//   87   ADC1_Init(&ADCx_InitStructure);
        B.N      ?Subroutine0
//   88 }
//   89 
//   90 /*******************************************************************************
//   91 * Function Name  : ADC_Temp_Sensor_Config
//   92 * Description    : Configure the ADC1 for temperature sensor reading.
//   93 * Input          : None
//   94 * Output         : None
//   95 * Return         : None
//   96 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void ADC_Temp_Sensor_Config(void)
//   98 {
ADC_Temp_Sensor_Config:
        PUSH     {R4,LR}
//   99   /* Enable the RTCHSE clock on ADC1 */
//  100   RST_CLK_PCLKcmd((RST_CLK_PCLK_ADC), ENABLE);
        BL       ?Subroutine2
//  101 
//  102   /* ADC Configuration */
//  103   /* Reset all ADC settings */
//  104   ADC_DeInit();
??CrossCallReturnLabel_2:
        BL       ADC_DeInit
//  105 
//  106   ADC_StructInit(&ADC_InitStructure);
        BL       ?Subroutine1
//  107   ADC_InitStructure.ADC_TempSensor           = ADC_TEMP_SENSOR_Enable;
??CrossCallReturnLabel_0:
        MOV      R0,#+131072
        STR      R0,[R4, #+52]
//  108   ADC_InitStructure.ADC_TempSensorAmplifier  = ADC_TEMP_SENSOR_AMPLIFIER_Enable;
        MOV      R0,#+262144
        STR      R0,[R4, #+56]
//  109   ADC_InitStructure.ADC_TempSensorConversion = ADC_TEMP_SENSOR_CONVERSION_Enable;
        MOV      R0,#+524288
        STR      R0,[R4, #+60]
//  110 
//  111   ADC_Init (&ADC_InitStructure);
        ADD      R0,R4,#+44
        BL       ADC_Init
//  112   ADCx_InitStructure.ADC_SamplingMode     = ADC_SAMPLING_MODE_CICLIC_CONV;
        MOVS     R0,#+8
        STR      R0,[R4, #+4]
//  113   ADCx_InitStructure.ADC_ChannelNumber    = ADC_CH_TEMP_SENSOR;
        MOVS     R0,#+31
        STR      R0,[R4, #+12]
//  114   ADCx_InitStructure.ADC_IntVRefSource    = ADC_INT_VREF_SOURCE_EXACT;
        MOVS     R0,#+1
        STR      R0,[R4, #+32]
//  115   ADCx_InitStructure.ADC_Prescaler        = ADC_CLK_div_32768;
        MOV      R0,#+61440
        STR      R0,[R4, #+36]
//  116   ADCx_InitStructure.ADC_DelayGo          = 0x7;
        MOVS     R0,#+7
        STR      R0,[R4, #+40]
//  117   ADC1_Init (&ADCx_InitStructure);
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  118 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOV      R0,R4
        POP      {R4,LR}
        B.W      ADC1_Init

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOVS     R1,#+1
        MOV      R0,#+131072
        B.W      RST_CLK_PCLKcmd

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        LDR.N    R4,??DataTable0
        ADD      R0,R4,#+44
        B.W      ADC_StructInit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     ADCx_InitStructure

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  119 
//  120 /** @} */ /* End of group ADC_Private_Functions */
//  121 
//  122 /** @} */ /* End of group ADC_Routines */
//  123 
//  124 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  125 
//  126 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  127 *
//  128 * END OF FILE adc.c */
//  129 
// 
//  72 bytes in section .bss
// 144 bytes in section .text
// 
// 144 bytes of CODE memory
//  72 bytes of DATA memory
//
//Errors: none
//Warnings: none
