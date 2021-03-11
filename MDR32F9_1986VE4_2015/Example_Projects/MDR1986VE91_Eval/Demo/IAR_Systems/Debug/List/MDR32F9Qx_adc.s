///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:55 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_adc.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_adc.c --preprocess        /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_adc. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_adc

        #define SHT_PROGBITS 0x1

        PUBLIC ADC1_ChannelSwithingConfig
        PUBLIC ADC1_ClearOutOfRangeFlag
        PUBLIC ADC1_ClearOverwriteFlag
        PUBLIC ADC1_Cmd
        PUBLIC ADC1_GetFlagStatus
        PUBLIC ADC1_GetITStatus
        PUBLIC ADC1_GetResult
        PUBLIC ADC1_GetStatus
        PUBLIC ADC1_ITConfig
        PUBLIC ADC1_Init
        PUBLIC ADC1_LevelsConfig
        PUBLIC ADC1_OperationModeConfig
        PUBLIC ADC1_SamplingModeConfig
        PUBLIC ADC1_SetChannel
        PUBLIC ADC1_SetChannels
        PUBLIC ADC1_SetHighLevel
        PUBLIC ADC1_SetLowLevel
        PUBLIC ADC1_Start
        PUBLIC ADC2_ChannelSwithingConfig
        PUBLIC ADC2_ClearOutOfRangeFlag
        PUBLIC ADC2_ClearOverwriteFlag
        PUBLIC ADC2_Cmd
        PUBLIC ADC2_GetFlagStatus
        PUBLIC ADC2_GetITStatus
        PUBLIC ADC2_GetResult
        PUBLIC ADC2_GetStatus
        PUBLIC ADC2_ITConfig
        PUBLIC ADC2_Init
        PUBLIC ADC2_LevelsConfig
        PUBLIC ADC2_OperationModeConfig
        PUBLIC ADC2_SamplingModeConfig
        PUBLIC ADC2_SetChannel
        PUBLIC ADC2_SetChannels
        PUBLIC ADC2_SetHighLevel
        PUBLIC ADC2_SetLowLevel
        PUBLIC ADC2_Start
        PUBLIC ADC_DeInit
        PUBLIC ADC_GetFlagStatus
        PUBLIC ADC_GetITStatus
        PUBLIC ADC_GetStatus
        PUBLIC ADC_ITConfig
        PUBLIC ADC_Init
        PUBLIC ADC_SetTrim
        PUBLIC ADC_StructInit
        PUBLIC ADCx_StructInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_adc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_adc.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/07/2011
//    7   * @brief   This file provides all the ADC firmware functions.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   14   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_adc.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_adc.h"
//   26 
//   27 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_ADC_C
//   28 
//   29 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   30   * @{
//   31   */
//   32 
//   33 /** @defgroup ADC ADC
//   34   * @{
//   35   */
//   36 
//   37 /** @defgroup ADC_Private_Functions ADC Private Functions
//   38   * @{
//   39   */
//   40 
//   41 /**
//   42   * @brief  Deinitializes the ADC peripheral registers to their default reset values.
//   43   * @param  None.
//   44   * @retval None.
//   45   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void ADC_DeInit ( void )
//   47 {
//   48   MDR_ADC->ADC1_CFG = 0;
ADC_DeInit:
        LDR.N    R0,??DataTable32  ;; 0x40088000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   49   MDR_ADC->ADC2_CFG = 0;
        STR      R1,[R0, #+4]
//   50   MDR_ADC->ADC1_H_LEVEL = 0;
        STR      R1,[R0, #+8]
//   51   MDR_ADC->ADC1_L_LEVEL = 0;
        STR      R1,[R0, #+16]
//   52   MDR_ADC->ADC1_RESULT;
        LDR      R1,[R0, #+24]
//   53   MDR_ADC->ADC1_STATUS = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//   54   MDR_ADC->ADC1_CHSEL = 0;
        STR      R1,[R0, #+40]
//   55 
//   56 #if defined ( USE_MDR1986VE9x ) /* For Cortex M3 */
//   57   MDR_ADC->ADC2_H_LEVEL = 0;
        STR      R1,[R0, #+12]
//   58   MDR_ADC->ADC2_L_LEVEL = 0;
        STR      R1,[R0, #+20]
//   59   MDR_ADC->ADC2_RESULT;
        LDR      R1,[R0, #+28]
//   60   MDR_ADC->ADC2_STATUS = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+36]
//   61   MDR_ADC->ADC2_CHSEL = 0;
        STR      R1,[R0, #+44]
//   62 #endif // #if defined ( USE_MDR1986VE9x ) /* For Cortex M3 */
//   63 
//   64 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//   65   MDR_ADC->ADC1_TRIM = 0;
//   66 #endif
//   67 }
        BX       LR               ;; return
//   68 
//   69 /**
//   70   * @brief  Initializes the ADC peripheral according to
//   71   *         the specified parameters in the ADC_InitStruct.
//   72   * @param  ADC_InitStruct: pointer to a ADC_InitTypeDef structure
//   73   *         that contains the configuration information for the specified ADC
//   74   *         peripheral.
//   75   * @retval None
//   76   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void ADC_Init(const ADC_InitTypeDef* ADC_InitStruct)
//   78 {
//   79   uint32_t tmpreg_CFG;
//   80   uint32_t tmpreg_MSK;
//   81 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//   82   uint32_t tmpreg_TRIM;
//   83 #endif
//   84 
//   85   /* Check the parameters */
//   86 #if defined (USE_MDR1986VE9x)
//   87   assert_param(IS_ADC_SYNC_MODE(ADC_InitStruct->ADC_SynchronousMode));
//   88 #endif
//   89   assert_param(IS_ADC_START_DELAY_VALUE(ADC_InitStruct->ADC_StartDelay));
//   90   assert_param(IS_ADC_TEMP_SENSOR_CONFIG(ADC_InitStruct->ADC_TempSensor));
//   91   assert_param(IS_ADC_TEMP_SENSOR_AMP_CONFIG(ADC_InitStruct->ADC_TempSensorAmplifier));
//   92   assert_param(IS_ADC_TEMP_SENSOR_CONVERSION_CONFIG(ADC_InitStruct->ADC_TempSensorConversion));
//   93   assert_param(IS_ADC_VREF_CONVERSION_CONFIG(ADC_InitStruct->ADC_IntVRefConversion));
//   94   assert_param(IS_ADC_VREF_TRIMMING_VALUE(ADC_InitStruct->ADC_IntVRefTrimming));
//   95 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//   96   assert_param(IS_ADC_INT_VREF_AMPLIFIER(ADC_InitStruct->ADC_IntVRefAmplifier));
//   97 #endif
//   98 
//   99   tmpreg_CFG = (ADC_InitStruct->ADC_StartDelay << ADC1_CFG_DELAY_ADC_Pos)
//  100              + ADC_InitStruct->ADC_TempSensor
//  101              + ADC_InitStruct->ADC_TempSensorAmplifier
//  102              + ADC_InitStruct->ADC_TempSensorConversion
//  103              + ADC_InitStruct->ADC_IntVRefConversion;
//  104 
//  105 #if defined( USE_MDR1986VE9x ) /* For Cortex M3*/
//  106   tmpreg_CFG += (ADC_InitStruct->ADC_IntVRefTrimming << ADC1_CFG_TR_Pos)
//  107              +   ADC_InitStruct->ADC_SynchronousMode;
//  108 #endif // #if defined(USE_MDR1986VE9x) /* For Cortex M3*/
//  109 
//  110   tmpreg_MSK = ADC1_CFG_DELAY_ADC_Msk
//  111              | ADC1_CFG_TS_EN
//  112              | ADC1_CFG_TS_BUF_EN
//  113              | ADC1_CFG_SEL_TS
//  114              | ADC1_CFG_SEL_VREF;
//  115 #if defined( USE_MDR1986VE9x ) /* For Cortex M3*/
//  116   tmpreg_MSK |= ADC1_CFG_TR_Msk
//  117              |  ADC1_CFG_SYNC_CONVER;
//  118 #elif defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  119   tmpreg_TRIM = (ADC_InitStruct->ADC_IntVRefTrimming << ADC1_TRIM_TS_TRIM_Pos)
//  120           | ADC_InitStruct->ADC_IntVRefAmplifier;
//  121   MDR_ADC->ADC1_TRIM  = tmpreg_TRIM;
//  122 #endif
//  123 
//  124   MDR_ADC->ADC1_CFG = (MDR_ADC->ADC1_CFG & ~tmpreg_MSK) + tmpreg_CFG;
ADC_Init:
        LDR.N    R1,??DataTable32  ;; 0x40088000
        LDR      R2,[R1, #+0]
        LDR.N    R3,??DataTable32_1  ;; 0xe00ffff
        ANDS     R2,R3,R2
        LDR      R3,[R0, #+4]
        ADD      R2,R2,R3, LSL #+28
        LDR      R3,[R0, #+8]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+12]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+16]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+20]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+24]
        ADD      R2,R2,R3, LSL #+21
        LDR      R0,[R0, #+0]
        B.N      ??Subroutine3_0
//  125 }
//  126 
//  127 /**
//  128   * @brief  Fills each ADC_InitStruct member with its default value.
//  129   * @param  ADC_InitStruct: pointer to a ADC_InitTypeDef structure
//  130   *         which will be initialized.
//  131   * @retval None
//  132   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
//  134 {
//  135 
//  136 #if defined( USE_MDR1986VE9x )
//  137   ADC_InitStruct->ADC_SynchronousMode     = ADC_SyncMode_Independent;
ADC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  138 #endif
//  139 
//  140   ADC_InitStruct->ADC_StartDelay        	= 0;
        STR      R1,[R0, #+4]
//  141   ADC_InitStruct->ADC_TempSensor        	= ADC_TEMP_SENSOR_Disable;
        STR      R1,[R0, #+8]
//  142   ADC_InitStruct->ADC_TempSensorAmplifier   = ADC_TEMP_SENSOR_AMPLIFIER_Disable;
        STR      R1,[R0, #+12]
//  143   ADC_InitStruct->ADC_TempSensorConversion  = ADC_TEMP_SENSOR_CONVERSION_Disable;
        STR      R1,[R0, #+16]
//  144   ADC_InitStruct->ADC_IntVRefConversion     = ADC_VREF_CONVERSION_Disable;
        STR      R1,[R0, #+20]
//  145   ADC_InitStruct->ADC_IntVRefTrimming     	= 0;
        STR      R1,[R0, #+24]
//  146 
//  147 #if defined ( USE_MDR1986VE3 ) || defined ( USE_MDR1986VE1T )
//  148   ADC_InitStruct->ADC_IntVRefAmplifier    	= ADC_INT_VREF_AMPLIFIER_Disable;
//  149 #endif
//  150 }
        BX       LR               ;; return
//  151 
//  152 
//  153 /**
//  154   * @brief  Sets the Internal Voltage Reference trimming.
//  155   * @param  Trim: trimming value in range 0..7.
//  156   * @retval None
//  157   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  158 void ADC_SetTrim(uint32_t Trim)
//  159 {
//  160   uint32_t tmpreg;
//  161 
//  162   /* Check the parameters */
//  163   assert_param(IS_ADC_VREF_TRIMMING_VALUE(Trim));
//  164 
//  165 #if defined(USE_MDR1986VE9x) /* For Cortex M3*/
//  166   tmpreg = MDR_ADC->ADC1_CFG & ~ADC1_CFG_TR_Msk;
ADC_SetTrim:
        LDR.N    R1,??DataTable32  ;; 0x40088000
        LDR      R2,[R1, #+0]
//  167   MDR_ADC->ADC1_CFG = tmpreg + (Trim << ADC1_CFG_TR_Pos);
        BIC      R2,R2,#0x1E00000
        ADD      R0,R2,R0, LSL #+21
        STR      R0,[R1, #+0]
//  168 
//  169 #elif defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  170   tmpreg = MDR_ADC->ADC1_TRIM;
//  171   tmpreg &= ~ADC1_TRIM_TS_TRIM_Msk;
//  172   tmpreg |= Trim << ADC1_TRIM_TS_TRIM_Pos;
//  173   MDR_ADC->ADC1_TRIM = tmpreg;
//  174 #endif
//  175 }
        BX       LR               ;; return
//  176 
//  177 
//  178 /**
//  179   * @brief  Initializes the ADC1 peripheral according to
//  180   *         the specified parameters in the ADCx_InitStruct.
//  181   * @param  ADCx_InitStruct: pointer to a ADCx_InitTypeDef structure
//  182   *         that contains the configuration information for the ADC1
//  183   *         peripheral.
//  184   * @retval None
//  185   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void ADC1_Init(const ADCx_InitTypeDef* ADCx_InitStruct)
//  187 {
ADC1_Init:
        PUSH     {R4,LR}
//  188   uint32_t tmpreg_CFG1;
//  189   uint32_t tmpreg_CFG2;
//  190 
//  191   /* Check the parameters */
//  192   assert_param(IS_ADC_CLOCK_SOURCE_CONFIG(ADCx_InitStruct->ADC_ClockSource));
//  193   assert_param(IS_ADC_SAMPLING_MODE_CONFIG(ADCx_InitStruct->ADC_SamplingMode));
//  194   assert_param(IS_ADC_CH_SWITCHING_CONFIG(ADCx_InitStruct->ADC_ChannelSwitching));
//  195   assert_param(IS_ADC1_CH_NUM(ADCx_InitStruct->ADC_ChannelNumber));
//  196   assert_param(IS_ADC1_CH_MASK(ADCx_InitStruct->ADC_Channels));
//  197   assert_param(IS_ADC_LEVEL_CONTROL_CONFIG(ADCx_InitStruct->ADC_LevelControl));
//  198   assert_param(IS_ADC_VALUE(ADCx_InitStruct->ADC_LowLevel));
//  199   assert_param(IS_ADC_VALUE(ADCx_InitStruct->ADC_HighLevel));
//  200   assert_param(IS_ADC_VREF_SOURCE_CONFIG(ADCx_InitStruct->ADC_VRefSource));
//  201   assert_param(IS_ADC_INT_VREF_SOURCE_CONFIG(ADCx_InitStruct->ADC_IntVRefSource));
//  202   assert_param(IS_ADC_CLK_div_VALUE(ADCx_InitStruct->ADC_Prescaler));
//  203   assert_param(IS_ADC_DELAY_GO_VALUE(ADCx_InitStruct->ADC_DelayGo));
//  204 
//  205   tmpreg_CFG1 = MDR_ADC->ADC1_CFG;
        LDR.N    R1,??DataTable32  ;; 0x40088000
        LDR      R3,[R1, #+0]
//  206 
//  207   tmpreg_CFG1 &= ~(ADC1_CFG_REG_CLKS
//  208                  | ADC1_CFG_REG_SAMPLE
//  209                  | ADC1_CFG_REG_CHCH
//  210                  | ADC1_CFG_REG_CHS_Msk
//  211                  | ADC1_CFG_REG_RNGC
//  212                  | ADC1_CFG_M_REF
//  213                  | ADC1_CFG_REG_DIVCLK_Msk
//  214                  | ADC1_CFG_DELAY_GO_Msk);
//  215 
//  216   tmpreg_CFG1 += ADCx_InitStruct->ADC_ClockSource
//  217                + ADCx_InitStruct->ADC_SamplingMode
//  218                + ADCx_InitStruct->ADC_ChannelSwitching
//  219                + (ADCx_InitStruct->ADC_ChannelNumber << ADC1_CFG_REG_CHS_Pos)
//  220                + ADCx_InitStruct->ADC_LevelControl
//  221                + ADCx_InitStruct->ADC_VRefSource
//  222                + ADCx_InitStruct->ADC_Prescaler
//  223                + (ADCx_InitStruct->ADC_DelayGo << ADC1_CFG_DELAY_GO_Pos);
//  224 
//  225   tmpreg_CFG2 = MDR_ADC->ADC2_CFG;
        LDR      R2,[R1, #+4]
//  226   tmpreg_CFG2 &= ~ADC2_CFG_ADC1_OP;
//  227   tmpreg_CFG2 += ADCx_InitStruct->ADC_IntVRefSource << ADC2_CFG_ADC1_OP_Pos;
        BIC      R2,R2,#0x20000
        LDR      R4,[R0, #+32]
        ADD      R2,R2,R4, LSL #+17
//  228 
//  229   MDR_ADC->ADC1_CFG = tmpreg_CFG1;
        LDR.N    R4,??DataTable32_2  ;; 0xf1ff0003
        ANDS     R3,R4,R3
        LDR      R4,[R0, #+0]
        ADDS     R3,R4,R3
        LDR      R4,[R0, #+4]
        ADDS     R3,R4,R3
        LDR      R4,[R0, #+8]
        ADDS     R3,R4,R3
        LDR      R4,[R0, #+12]
        ADD      R3,R3,R4, LSL #+4
        LDR      R4,[R0, #+20]
        ADDS     R3,R4,R3
        LDR      R4,[R0, #+28]
        ADDS     R3,R4,R3
        LDR      R4,[R0, #+36]
        ADDS     R3,R4,R3
        LDR      R4,[R0, #+40]
        ADD      R3,R3,R4, LSL #+25
        STR      R3,[R1, #+0]
//  230   MDR_ADC->ADC2_CFG = tmpreg_CFG2;
        STR      R2,[R1, #+4]
//  231 
//  232   MDR_ADC->ADC1_L_LEVEL = ADCx_InitStruct->ADC_LowLevel;
        LDRH     R2,[R0, #+24]
        STR      R2,[R1, #+16]
//  233   MDR_ADC->ADC1_H_LEVEL = ADCx_InitStruct->ADC_HighLevel;
        LDRH     R2,[R0, #+26]
        STR      R2,[R1, #+8]
//  234   MDR_ADC->ADC1_CHSEL   = ADCx_InitStruct->ADC_Channels;
        LDR      R0,[R0, #+16]
        STR      R0,[R1, #+40]
//  235 }
        POP      {R4,PC}          ;; return
//  236 
//  237 #if defined  (USE_MDR1986VE9x) /* For Cortex M3 */
//  238 /**
//  239   * @brief  Initializes the ADC2 peripheral according to
//  240   *         the specified parameters in the ADCx_InitStruct.
//  241   * @warning 	This function can be used only for microcontroller
//  242   * 		series MDR1986VE9x.
//  243   * @param  ADCx_InitStruct: pointer to a ADCx_InitTypeDef structure
//  244   *         that contains the configuration information for the ADC2
//  245   *         peripheral.
//  246   * @retval None
//  247   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  248 void ADC2_Init(const ADCx_InitTypeDef* ADCx_InitStruct)
//  249 {
//  250   uint32_t tmpreg_CFG2;
//  251 
//  252   /* Check the parameters */
//  253   assert_param(IS_ADC_CLOCK_SOURCE_CONFIG(ADCx_InitStruct->ADC_ClockSource));
//  254   assert_param(IS_ADC_SAMPLING_MODE_CONFIG(ADCx_InitStruct->ADC_SamplingMode));
//  255   assert_param(IS_ADC_CH_SWITCHING_CONFIG(ADCx_InitStruct->ADC_ChannelSwitching));
//  256   assert_param(IS_ADC2_CH_NUM(ADCx_InitStruct->ADC_ChannelNumber));
//  257   assert_param(IS_ADC2_CH_MASK(ADCx_InitStruct->ADC_Channels));
//  258   assert_param(IS_ADC_LEVEL_CONTROL_CONFIG(ADCx_InitStruct->ADC_LevelControl));
//  259   assert_param(IS_ADC_VALUE(ADCx_InitStruct->ADC_LowLevel));
//  260   assert_param(IS_ADC_VALUE(ADCx_InitStruct->ADC_HighLevel));
//  261   assert_param(IS_ADC_VREF_SOURCE_CONFIG(ADCx_InitStruct->ADC_VRefSource));
//  262   assert_param(IS_ADC_INT_VREF_SOURCE_CONFIG(ADCx_InitStruct->ADC_IntVRefSource));
//  263   assert_param(IS_ADC_CLK_div_VALUE(ADCx_InitStruct->ADC_Prescaler));
//  264   assert_param(IS_ADC_DELAY_GO_VALUE(ADCx_InitStruct->ADC_DelayGo));
//  265 
//  266   tmpreg_CFG2 = MDR_ADC->ADC2_CFG;
ADC2_Init:
        LDR.N    R1,??DataTable32_3  ;; 0x40088004
        LDR      R2,[R1, #+0]
//  267 
//  268   tmpreg_CFG2 &= ~(ADC2_CFG_REG_CLKS
//  269                  | ADC2_CFG_REG_SAMPLE
//  270                  | ADC2_CFG_REG_CHCH
//  271                  | ADC2_CFG_REG_CHS_Msk
//  272                  | ADC2_CFG_REG_RNGC
//  273                  | ADC2_CFG_M_REF
//  274                  | ADC2_CFG_ADC2_OP
//  275                  | ADC2_CFG_REG_DIVCLK_Msk
//  276                  | ADC2_CFG_DELAY_GO_Msk);
//  277 
//  278   tmpreg_CFG2 += ADCx_InitStruct->ADC_ClockSource
//  279                + ADCx_InitStruct->ADC_SamplingMode
//  280                + ADCx_InitStruct->ADC_ChannelSwitching
//  281                + (ADCx_InitStruct->ADC_ChannelNumber << ADC2_CFG_REG_CHS_Pos)
//  282                + ADCx_InitStruct->ADC_LevelControl
//  283                + ADCx_InitStruct->ADC_VRefSource
//  284                + (ADCx_InitStruct->ADC_IntVRefSource << ADC2_CFG_ADC2_OP_Pos)
//  285                + ADCx_InitStruct->ADC_Prescaler
//  286                + (ADCx_InitStruct->ADC_DelayGo << ADC2_CFG_DELAY_GO_Pos);
//  287 
//  288   MDR_ADC->ADC2_CFG = tmpreg_CFG2;
        LDR.N    R3,??DataTable32_4  ;; 0xf1fb0003
        ANDS     R2,R3,R2
        LDR      R3,[R0, #+0]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+4]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+8]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+12]
        ADD      R2,R2,R3, LSL #+4
        LDR      R3,[R0, #+20]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+28]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+32]
        ADD      R2,R2,R3, LSL #+18
        LDR      R3,[R0, #+36]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+40]
        ADD      R2,R2,R3, LSL #+25
        STR      R2,[R1, #+0]
//  289   MDR_ADC->ADC2_L_LEVEL = ADCx_InitStruct->ADC_LowLevel;
        LDRH     R2,[R0, #+24]
        STR      R2,[R1, #+16]
//  290   MDR_ADC->ADC2_H_LEVEL = ADCx_InitStruct->ADC_HighLevel;
        LDRH     R2,[R0, #+26]
        STR      R2,[R1, #+8]
//  291   MDR_ADC->ADC2_CHSEL   = ADCx_InitStruct->ADC_Channels;
        LDR      R0,[R0, #+16]
        STR      R0,[R1, #+40]
//  292 }
        BX       LR               ;; return
//  293 
//  294 #endif /* #if defined  (USE_MDR1986VE9x) */
//  295 
//  296 /**
//  297   * @brief  Fills each ADCx_InitStruct member with its default value.
//  298   * @param  ADCx_InitStruct: pointer to a ADCx_InitTypeDef structure
//  299   *         which will be initialized.
//  300   * @retval None
//  301   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 void ADCx_StructInit(ADCx_InitTypeDef* ADCx_InitStruct)
//  303 {
//  304   ADCx_InitStruct->ADC_ClockSource      = ADC_CLOCK_SOURCE_CPU;
ADCx_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  305   ADCx_InitStruct->ADC_SamplingMode     = ADC_SAMPLING_MODE_SINGLE_CONV;
        STR      R1,[R0, #+4]
//  306   ADCx_InitStruct->ADC_ChannelSwitching = ADC_CH_SWITCHING_Disable;
        STR      R1,[R0, #+8]
//  307   ADCx_InitStruct->ADC_ChannelNumber    = ADC_CH_ADC0;
        STR      R1,[R0, #+12]
//  308   ADCx_InitStruct->ADC_Channels         = 0;
        STR      R1,[R0, #+16]
//  309   ADCx_InitStruct->ADC_LevelControl     = ADC_LEVEL_CONTROL_Disable;
        STR      R1,[R0, #+20]
//  310   ADCx_InitStruct->ADC_LowLevel         = 0;
        STRH     R1,[R0, #+24]
//  311   ADCx_InitStruct->ADC_HighLevel        = 0;
        STRH     R1,[R0, #+26]
//  312   ADCx_InitStruct->ADC_VRefSource       = ADC_VREF_SOURCE_INTERNAL;
        STR      R1,[R0, #+28]
//  313   ADCx_InitStruct->ADC_IntVRefSource    = ADC_INT_VREF_SOURCE_INEXACT;
        STR      R1,[R0, #+32]
//  314   ADCx_InitStruct->ADC_Prescaler        = ADC_CLK_div_None;
        STR      R1,[R0, #+36]
//  315   ADCx_InitStruct->ADC_DelayGo          = 0;
        STR      R1,[R0, #+40]
//  316 }
        BX       LR               ;; return
//  317 
//  318 /**
//  319   * @brief  Enables or disables the ADC1 peripheral.
//  320   * @param  NewState: new state of the ADC1 peripheral.
//  321   *         This parameter can be: ENABLE or DISABLE.
//  322   * @retval None
//  323   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void ADC1_Cmd(FunctionalState NewState)
//  325 {
//  326   uint32_t tmpreg_CFG;
//  327 
//  328   /* Check the parameters */
//  329   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  330 
//  331   tmpreg_CFG = MDR_ADC->ADC1_CFG;
ADC1_Cmd:
        LDR.N    R1,??DataTable32  ;; 0x40088000
        LDR      R2,[R1, #+0]
//  332 
//  333   /* Form new value */
//  334   if (NewState != DISABLE)
        CMP      R0,#+0
        ITEE     NE 
        ORRNE    R0,R2,#0x1
        LSREQ    R0,R2,#+1
        LSLEQ    R0,R0,#+1
//  335   {
//  336     /* Enable ADC1 by setting the Cfg_REG_ADON bit in the ADC1_CFG register */
//  337     tmpreg_CFG |= ADC1_CFG_REG_ADON;
//  338   }
//  339   else
//  340   {
//  341     /* Disable ADC1 by resetting the Cfg_REG_ADON bit in the ADC1_CFG register */
//  342     tmpreg_CFG &= ~ADC1_CFG_REG_ADON;
//  343   }
//  344 
//  345   /* Configure ADC1_CFG register with new value */
//  346   MDR_ADC->ADC1_CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  347 }
        BX       LR               ;; return
//  348 
//  349 #if defined  (USE_MDR1986VE9x)
//  350 /**
//  351   * @brief  Enables or disables the ADC1 peripheral.
//  352   * @warning 	This function can be used only for microcontroller
//  353   * 		series MDR1986VE9x.
//  354   * @param  NewState: new state of the ADC1 peripheral.
//  355   *         This parameter can be: ENABLE or DISABLE.
//  356   * @retval None
//  357   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 void ADC2_Cmd(FunctionalState NewState)
//  359 {
//  360   uint32_t tmpreg_CFG;
//  361 
//  362   /* Check the parameters */
//  363   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  364 
//  365   tmpreg_CFG = MDR_ADC->ADC2_CFG;
ADC2_Cmd:
        LDR.N    R1,??DataTable32_3  ;; 0x40088004
        LDR      R2,[R1, #+0]
//  366 
//  367   /* Form new value */
//  368   if (NewState != DISABLE)
        CMP      R0,#+0
        ITEE     NE 
        ORRNE    R0,R2,#0x1
        LSREQ    R0,R2,#+1
        LSLEQ    R0,R0,#+1
//  369   {
//  370     /* Enable ADC2 by setting the Cfg_REG_ADON bit in the ADC2_CFG register */
//  371     tmpreg_CFG |= ADC2_CFG_REG_ADON;
//  372   }
//  373   else
//  374   {
//  375     /* Disable ADC2 by resetting the Cfg_REG_ADON bit in the ADC2_CFG register */
//  376     tmpreg_CFG &= ~ADC2_CFG_REG_ADON;
//  377   }
//  378 
//  379   /* Configure ADC2_CFG register with new value */
//  380   MDR_ADC->ADC2_CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  381 }
        BX       LR               ;; return
//  382 #endif /* #if defined  (USE_MDR1986VE9x) */
//  383 
//  384 /**
//  385   * @brief  Selects the ADC1 Channel number for Single Channel Mode conversion.
//  386   * @param  Channel: specifies the ADC Channel number.
//  387   * @retval None
//  388   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  389 void ADC1_SetChannel(uint32_t Channel)
//  390 {
//  391   uint32_t tmpreg_CFG;
//  392 
//  393   /* Check the parameters */
//  394   assert_param(IS_ADC1_CH_NUM(Channel));
//  395 
//  396   tmpreg_CFG = MDR_ADC->ADC1_CFG;
ADC1_SetChannel:
        LDR.N    R1,??DataTable32  ;; 0x40088000
        B.N      ?Subroutine2
//  397   tmpreg_CFG &= ~ADC1_CFG_REG_CHS_Msk;
//  398   tmpreg_CFG += Channel << ADC1_CFG_REG_CHS_Pos;
//  399   MDR_ADC->ADC1_CFG = tmpreg_CFG;
//  400 }
//  401 
//  402 #if defined  (USE_MDR1986VE9x)
//  403 /**
//  404   * @brief  Selects the ADC2 Channel number for Single Channel Mode conversion.
//  405   * @warning 	This function can be used only for microcontroller
//  406   * 		series MDR1986VE9x.
//  407   * @param  Channel: specifies the ADC Channel number.
//  408   * @retval None
//  409   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  410 void ADC2_SetChannel(uint32_t Channel)
//  411 {
//  412   uint32_t tmpreg_CFG;
//  413 
//  414   /* Check the parameters */
//  415   assert_param(IS_ADC2_CH_NUM(Channel));
//  416 
//  417   tmpreg_CFG = MDR_ADC->ADC2_CFG;
ADC2_SetChannel:
        LDR.N    R1,??DataTable32_3  ;; 0x40088004
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  418   tmpreg_CFG &= ~ADC2_CFG_REG_CHS_Msk;
//  419   tmpreg_CFG += Channel << ADC2_CFG_REG_CHS_Pos;
//  420   MDR_ADC->ADC2_CFG = tmpreg_CFG;
//  421 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0x1F0
        ADD      R0,R2,R0, LSL #+4
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  422 #endif /* #if defined  (USE_MDR1986VE9x) */
//  423 
//  424 /**
//  425   * @brief  Selects the ADC1 Channels for conversion with Channels switching.
//  426   * @param  ChannelMask: specifies the ADC Channels Mask.
//  427   * @retval None
//  428   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  429 void ADC1_SetChannels(uint32_t ChannelMask)
//  430 {
//  431   /* Check the parameters */
//  432   assert_param(IS_ADC1_CH_MASK(ChannelMask));
//  433 
//  434   MDR_ADC->ADC1_CHSEL = ChannelMask;
ADC1_SetChannels:
        LDR.N    R1,??DataTable32_5  ;; 0x40088028
        STR      R0,[R1, #+0]
//  435 }
        BX       LR               ;; return
//  436 
//  437 #if defined  (USE_MDR1986VE9x)
//  438 /**
//  439   * @brief  Selects the ADC2 Channels for conversion with Channels switching.
//  440   * @param  ChannelMask: specifies the ADC Channels Mask.
//  441   * @retval None
//  442   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  443 void ADC2_SetChannels(uint32_t ChannelMask)
//  444 {
//  445   /* Check the parameters */
//  446   assert_param(IS_ADC2_CH_MASK(ChannelMask));
//  447 
//  448   MDR_ADC->ADC2_CHSEL = ChannelMask;
ADC2_SetChannels:
        LDR.N    R1,??DataTable32_6  ;; 0x4008802c
        STR      R0,[R1, #+0]
//  449 }
        BX       LR               ;; return
//  450 #endif /* #if defined  (USE_MDR1986VE9x) */
//  451 
//  452 /**
//  453   * @brief  Sets the ADC1 operation mode.
//  454   * @param  SamplingMode: specifies the ADC1 sampling.
//  455   * @param  SwitchingMode: specifies the ADC1 channel switching.
//  456   * @retval None
//  457   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  458 void ADC1_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode)
//  459 {
//  460   uint32_t tmpreg_CFG;
//  461 
//  462   /* Check the parameters */
//  463   assert_param(IS_ADC_SAMPLING_MODE_CONFIG(SamplingMode));
//  464   assert_param(IS_ADC_CH_SWITCHING_CONFIG(SwitchingMode));
//  465 
//  466   tmpreg_CFG = MDR_ADC->ADC1_CFG;
ADC1_OperationModeConfig:
        LDR.N    R2,??DataTable32  ;; 0x40088000
        B.N      ?Subroutine1
//  467   tmpreg_CFG &= ~(ADC1_CFG_REG_SAMPLE | ADC1_CFG_REG_CHCH);
//  468   tmpreg_CFG += SamplingMode + SwitchingMode;
//  469   MDR_ADC->ADC1_CFG = tmpreg_CFG;
//  470 }
//  471 
//  472 #if defined  (USE_MDR1986VE9x)
//  473 /**
//  474   * @brief  Sets the ADC2 operation mode.
//  475   * @warning 	This function can be used only for microcontroller
//  476   * 		series MDR1986VE9x.
//  477   * @param  SamplingMode: specifies the ADC2 sampling.
//  478   * @param  SwitchingMode: specifies the ADC2 channel switching.
//  479   * @retval None
//  480   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 void ADC2_OperationModeConfig(uint32_t SamplingMode, uint32_t SwitchingMode)
//  482 {
//  483   uint32_t tmpreg_CFG;
//  484 
//  485   /* Check the parameters */
//  486   assert_param(IS_ADC_SAMPLING_MODE_CONFIG(SamplingMode));
//  487   assert_param(IS_ADC_CH_SWITCHING_CONFIG(SwitchingMode));
//  488 
//  489   tmpreg_CFG = MDR_ADC->ADC2_CFG;
ADC2_OperationModeConfig:
        LDR.N    R2,??DataTable32_3  ;; 0x40088004
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  490   tmpreg_CFG &= ~(ADC2_CFG_REG_SAMPLE | ADC2_CFG_REG_CHCH);
//  491   tmpreg_CFG += SamplingMode + SwitchingMode;
//  492   MDR_ADC->ADC2_CFG = tmpreg_CFG;
//  493 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        LDR      R3,[R2, #+0]
        BIC      R3,R3,#0x208
        ADDS     R0,R0,R3
        ADDS     R0,R1,R0
        STR      R0,[R2, #+0]
        BX       LR               ;; return
//  494 #endif /* #if defined  (USE_MDR1986VE9x) */
//  495 
//  496 /**
//  497   * @brief  Sets the ADC1 sampling mode.
//  498   * @param  SamplingMode: specifies the ADC1 sampling.
//  499   * @retval None
//  500   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  501 void ADC1_SamplingModeConfig(uint32_t SamplingMode)
//  502 {
//  503   uint32_t tmpreg_CFG;
//  504 
//  505   /* Check the parameters */
//  506   assert_param(IS_ADC_SAMPLING_MODE_CONFIG(SamplingMode));
//  507 
//  508   tmpreg_CFG = MDR_ADC->ADC1_CFG;
ADC1_SamplingModeConfig:
        LDR.N    R1,??DataTable32  ;; 0x40088000
        B.N      ?Subroutine3
//  509   tmpreg_CFG &= ~ADC1_CFG_REG_SAMPLE;
//  510   tmpreg_CFG += SamplingMode;
//  511   MDR_ADC->ADC1_CFG = tmpreg_CFG;
//  512 }
//  513 
//  514 #if defined  (USE_MDR1986VE9x)
//  515 /**
//  516   * @brief  Sets the ADC2 sampling mode.
//  517   * @warning 	This function can be used only for microcontroller
//  518   * 		series MDR1986VE9x.
//  519   * @param  SamplingMode: specifies the ADC2 sampling.
//  520   * @retval None
//  521   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  522 void ADC2_SamplingModeConfig(uint32_t SamplingMode)
//  523 {
//  524   uint32_t tmpreg_CFG;
//  525 
//  526   /* Check the parameters */
//  527   assert_param(IS_ADC_SAMPLING_MODE_CONFIG(SamplingMode));
//  528 
//  529   tmpreg_CFG = MDR_ADC->ADC2_CFG;
ADC2_SamplingModeConfig:
        LDR.N    R1,??DataTable32_3  ;; 0x40088004
        REQUIRE ?Subroutine3
        ;; // Fall through to label ?Subroutine3
//  530   tmpreg_CFG &= ~ADC2_CFG_REG_SAMPLE;
//  531   tmpreg_CFG += SamplingMode;
//  532   MDR_ADC->ADC2_CFG = tmpreg_CFG;
//  533 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0x8
??Subroutine3_0:
        ADDS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  534 #endif /* #if defined  (USE_MDR1986VE9x) */
//  535 
//  536 /**
//  537   * @brief  Sets the ADC1 channel switching mode.
//  538   * @param  SwitchingMode: specifies the ADC1 channel switching.
//  539   * @retval None
//  540   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  541 void ADC1_ChannelSwithingConfig(uint32_t SwitchingMode)
//  542 {
//  543   uint32_t tmpreg_CFG;
//  544 
//  545   /* Check the parameters */
//  546   assert_param(IS_ADC_CH_SWITCHING_CONFIG(SwitchingMode));
//  547 
//  548   tmpreg_CFG = MDR_ADC->ADC1_CFG;
ADC1_ChannelSwithingConfig:
        LDR.N    R1,??DataTable32  ;; 0x40088000
        LDR      R2,[R1, #+0]
//  549   tmpreg_CFG &= ~ADC1_CFG_REG_CHCH;
//  550   tmpreg_CFG += SwitchingMode;
//  551   MDR_ADC->ADC1_CFG = tmpreg_CFG;
        BIC      R2,R2,#0x200
        B.N      ??Subroutine3_0
//  552 }
//  553 
//  554 #if defined  (USE_MDR1986VE9x)
//  555 /**
//  556   * @brief  Sets the ADC2 channel switching mode.
//  557   * @warning 	This function can be used only for microcontroller
//  558   * 		series MDR1986VE9x.
//  559   * @param  SwitchingMode: specifies the ADC2 channel switching.
//  560   * @retval None
//  561   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  562 void ADC2_ChannelSwithingConfig(uint32_t SwitchingMode)
//  563 {
//  564   uint32_t tmpreg_CFG;
//  565 
//  566   /* Check the parameters */
//  567   assert_param(IS_ADC_CH_SWITCHING_CONFIG(SwitchingMode));
//  568 
//  569   tmpreg_CFG = MDR_ADC->ADC2_CFG;
ADC2_ChannelSwithingConfig:
        LDR.N    R1,??DataTable32_3  ;; 0x40088004
        LDR      R2,[R1, #+0]
//  570   tmpreg_CFG &= ~ADC2_CFG_REG_CHCH;
//  571   tmpreg_CFG += SwitchingMode;
//  572   MDR_ADC->ADC2_CFG = tmpreg_CFG;
        BIC      R2,R2,#0x200
        B.N      ??Subroutine3_0
//  573 }
//  574 #endif /* #if defined  (USE_MDR1986VE9x) */
//  575 
//  576 /**
//  577   * @brief  Configures the ADC1 threshould levels.
//  578   * @param  LowLevel: specifies the ADC1 low level value.
//  579   * @param  HighLevel: specifies the ADC1 high level value.
//  580   * @param  NewState: enables or disables levels control.
//  581   * @retval None
//  582   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  583 void ADC1_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState)
//  584 {
ADC1_LevelsConfig:
        PUSH     {R4,LR}
//  585   uint32_t tmpreg_CFG;
//  586 
//  587   /* Check the parameters */
//  588   assert_param(IS_ADC_LEVEL_CONTROL_CONFIG(NewState));
//  589   assert_param(IS_ADC_VALUE(LowLevel));
//  590   assert_param(IS_ADC_VALUE(HighLevel));
//  591 
//  592   tmpreg_CFG = MDR_ADC->ADC1_CFG;
        LDR.N    R3,??DataTable32  ;; 0x40088000
        B.N      ?Subroutine7
//  593   tmpreg_CFG &= ~ADC1_CFG_REG_RNGC;
//  594   tmpreg_CFG += NewState;
//  595   MDR_ADC->ADC1_CFG = tmpreg_CFG;
//  596 
//  597   MDR_ADC->ADC1_L_LEVEL = LowLevel;
//  598   MDR_ADC->ADC1_H_LEVEL = HighLevel;
//  599 }
//  600 
//  601 #if defined  (USE_MDR1986VE9x)
//  602 /**
//  603   * @brief  Configures the ADC2 threshould levels.
//  604   * @warning 	This function can be used only for microcontroller
//  605   * 		series MDR1986VE9x.
//  606   * @param  LowLevel: specifies the ADC2 low level value.
//  607   * @param  HighLevel: specifies the ADC2 high level value.
//  608   * @param  NewState: enables or disables levels control.
//  609   * @retval None
//  610   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  611 void ADC2_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, uint32_t NewState)
//  612 {
ADC2_LevelsConfig:
        PUSH     {R4,LR}
//  613   uint32_t tmpreg_CFG;
//  614 
//  615   /* Check the parameters */
//  616   assert_param(IS_ADC_LEVEL_CONTROL_CONFIG(NewState));
//  617   assert_param(IS_ADC_VALUE(LowLevel));
//  618   assert_param(IS_ADC_VALUE(HighLevel));
//  619 
//  620   tmpreg_CFG = MDR_ADC->ADC2_CFG;
        LDR.N    R3,??DataTable32_3  ;; 0x40088004
        REQUIRE ?Subroutine7
        ;; // Fall through to label ?Subroutine7
//  621   tmpreg_CFG &= ~ADC2_CFG_REG_RNGC;
//  622   tmpreg_CFG += NewState;
//  623   MDR_ADC->ADC2_CFG = tmpreg_CFG;
//  624 
//  625   MDR_ADC->ADC2_L_LEVEL = LowLevel;
//  626   MDR_ADC->ADC2_H_LEVEL = HighLevel;
//  627 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine7:
        LDR      R4,[R3, #+0]
        BIC      R4,R4,#0x400
        ADDS     R2,R2,R4
        STR      R2,[R3, #+0]
        STR      R0,[R3, #+16]
        STR      R1,[R3, #+8]
        POP      {R4,PC}          ;; return
//  628 #endif /* #if defined  (USE_MDR1986VE9x) */
//  629 
//  630 /**
//  631   * @brief  Sets the ADC1 low level.
//  632   * @param  LowLevel: specifies the ADC1 low level value.
//  633   * @retval None
//  634   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  635 void ADC1_SetLowLevel(uint32_t LowLevel)
//  636 {
//  637   /* Check the parameters */
//  638   assert_param(IS_ADC_VALUE(LowLevel));
//  639 
//  640   MDR_ADC->ADC1_L_LEVEL = LowLevel;
ADC1_SetLowLevel:
        LDR.N    R1,??DataTable32_7  ;; 0x40088010
        STR      R0,[R1, #+0]
//  641 }
        BX       LR               ;; return
//  642 
//  643 #if defined  (USE_MDR1986VE9x)
//  644 /**
//  645   * @brief  Sets the ADC2 low level.
//  646   * @param  LowLevel: specifies the ADC2 low level value.
//  647   * @retval None
//  648   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  649 void ADC2_SetLowLevel(uint32_t LowLevel)
//  650 {
//  651   /* Check the parameters */
//  652   assert_param(IS_ADC_VALUE(LowLevel));
//  653 
//  654   MDR_ADC->ADC2_L_LEVEL = LowLevel;
ADC2_SetLowLevel:
        LDR.N    R1,??DataTable32_8  ;; 0x40088014
        STR      R0,[R1, #+0]
//  655 }
        BX       LR               ;; return
//  656 #endif /* #if defined  (USE_MDR1986VE9x) */
//  657 
//  658 /**
//  659   * @brief  Sets the ADC1 high level.
//  660   * @param  HighLevel: specifies the ADC1 high level value.
//  661   * @retval None
//  662   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  663 void ADC1_SetHighLevel(uint32_t HighLevel)
//  664 {
//  665   /* Check the parameters */
//  666   assert_param(IS_ADC_VALUE(HighLevel));
//  667 
//  668   MDR_ADC->ADC1_H_LEVEL = HighLevel;
ADC1_SetHighLevel:
        LDR.N    R1,??DataTable32_9  ;; 0x40088008
        STR      R0,[R1, #+0]
//  669 }
        BX       LR               ;; return
//  670 
//  671 #if defined  (USE_MDR1986VE9x)
//  672 /**
//  673   * @brief  Sets the ADC2 high level.
//  674   * @warning 	This function can be used only for microcontroller
//  675   * 		series MDR1986VE9x.
//  676   * @param  HighLevel: specifies the ADC2 high level value.
//  677   * @retval None
//  678   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  679 void ADC2_SetHighLevel(uint32_t HighLevel)
//  680 {
//  681   /* Check the parameters */
//  682   assert_param(IS_ADC_VALUE(HighLevel));
//  683 
//  684   MDR_ADC->ADC2_H_LEVEL = HighLevel;
ADC2_SetHighLevel:
        LDR.N    R1,??DataTable32_10  ;; 0x4008800c
        STR      R0,[R1, #+0]
//  685 }
        BX       LR               ;; return
//  686 #endif /* #if defined  (USE_MDR1986VE9x) */
//  687 
//  688 /**
//  689   * @brief  Starts the ADC1 conversion.
//  690   * @param  None.
//  691   * @retval None.
//  692   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  693 void ADC1_Start(void)
//  694 {
//  695   MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_GO;
ADC1_Start:
        LDR.N    R0,??DataTable32  ;; 0x40088000
        B.N      ?Subroutine5
//  696 }
//  697 
//  698 #if defined  (USE_MDR1986VE9x)
//  699 /**
//  700   * @brief  Starts the ADC2 conversion.
//  701   * @warning 	This function can be used only for microcontroller
//  702   * 		series MDR1986VE9x.
//  703   * @param  None.
//  704   * @retval None.
//  705   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  706 void ADC2_Start(void)
//  707 {
//  708   MDR_ADC->ADC2_CFG |= ADC2_CFG_REG_GO;
ADC2_Start:
        LDR.N    R0,??DataTable32_3  ;; 0x40088004
        REQUIRE ?Subroutine5
        ;; // Fall through to label ?Subroutine5
//  709 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine5:
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
//  710 #endif /* #if defined  (USE_MDR1986VE9x) */
//  711 
//  712 /**
//  713   * @brief  Returns the ADC1 result.
//  714   * @param  None.
//  715   * @retval ADC1 Result Register value.
//  716   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  717 uint32_t ADC1_GetResult(void)
//  718 {
//  719   return MDR_ADC->ADC1_RESULT;
ADC1_GetResult:
        LDR.N    R0,??DataTable32_11  ;; 0x40088018
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  720 }
//  721 
//  722 #if defined  (USE_MDR1986VE9x)
//  723 /**
//  724   * @brief  Returns the ADC2 result.
//  725   * @warning 	This function can be used only for microcontroller
//  726   * 		series MDR1986VE9x.
//  727   * @param  None.
//  728   * @retval ADC2 Result Register value.
//  729   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  730 uint32_t ADC2_GetResult(void)
//  731 {
//  732   return MDR_ADC->ADC2_RESULT;
ADC2_GetResult:
        LDR.N    R0,??DataTable32_12  ;; 0x4008801c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  733 }
//  734 #endif /* #if defined  (USE_MDR1986VE9x) */
//  735 
//  736 /**
//  737   * @brief  Returns the ADC1, ADC2 Status Registers combined value.
//  738   * @param  None.
//  739   * @retval The ADC1_STATUS, ADC2_STATUS Registers combined value.
//  740   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  741 uint32_t ADC_GetStatus ( void )
//  742 {
//  743 #if defined  (USE_MDR1986VE9x) 									/* For Cortex M3 */
//  744   return MDR_ADC->ADC1_STATUS + (MDR_ADC->ADC2_STATUS << 16);
ADC_GetStatus:
        LDR.N    R0,??DataTable32_13  ;; 0x40088020
        LDR      R1,[R0, #+0]
        LDR      R0,[R0, #+4]
        ADD      R0,R1,R0, LSL #+16
        BX       LR               ;; return
//  745 #elif defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T) 	/* For Cortex M1 */
//  746   return MDR_ADC->ADC1_STATUS;
//  747 #endif
//  748 }
//  749 
//  750 /**
//  751   * @brief  Returns the ADC1 Status Register value.
//  752   * @param  None.
//  753   * @retval The ADC1_STATUS Register value.
//  754   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  755 uint32_t ADC1_GetStatus(void)
//  756 {
//  757   return MDR_ADC->ADC1_STATUS;
ADC1_GetStatus:
        LDR.N    R0,??DataTable32_13  ;; 0x40088020
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  758 }
//  759 
//  760 #ifdef USE_MDR1986VE9x /* For Cortex M3 */
//  761 /**
//  762   * @brief  Returns the ADC2 Status Register value.
//  763   * @warning 	This function can be used only for microcontroller
//  764   * 		series MDR1986VE9x.
//  765   * @param  None.
//  766   * @retval The ADC2_STATUS Register value.
//  767   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  768 uint32_t ADC2_GetStatus(void)
//  769 {
//  770   return MDR_ADC->ADC2_STATUS;
ADC2_GetStatus:
        LDR.N    R0,??DataTable32_14  ;; 0x40088024
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  771 }
//  772 #endif // #ifdef USE_MDR1986VE9x /* For Cortex M3 */
//  773 
//  774 /**
//  775   * @brief  Checks whether the specified ADC1, ADC2 Status flag is set or not.
//  776   * @param  Flag: specifies the flag to check.
//  777   *         This parameter can be one of the following values:
//  778   *           @arg ADC1_FLAG_OVERWRITE:         the previous ADC1 measured value was overwritten;
//  779   *           @arg ADC1_FLAG_OUT_OF_RANGE:      the ADC1 measured value is out of range;
//  780   *           @arg ADC1_FLAG_END_OF_CONVERSION: the ADC1 conversion finished;
//  781   *           @arg ADC2_FLAG_OVERWRITE:         the previous ADC2 measured value was overwritten;
//  782   *           @arg ADC2_FLAG_OUT_OF_RANGE:      the ADC2 measured value is out of range;
//  783   *           @arg ADC2_FLAG_END_OF_CONVERSION: the ADC2 conversion finished.
//  784   * @retval Current Status flag state (SET or RESET).
//  785   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  786 FlagStatus ADC_GetFlagStatus(uint32_t Flag)
//  787 {
ADC_GetFlagStatus:
        PUSH     {R4,LR}
        MOV      R4,R0
//  788   FlagStatus bitstatus;
//  789 
//  790   /* Check the parameters */
//  791   assert_param(IS_ADC_STATUS_FLAG(Flag));
//  792 
//  793   if ((ADC_GetStatus() & Flag) == 0)
        BL       ADC_GetStatus
        ANDS     R0,R4,R0
        IT       NE 
        MOVNE    R0,#+1
//  794   {
//  795     bitstatus = RESET;
//  796   }
//  797   else
//  798   {
//  799     bitstatus = SET;
//  800   }
//  801 
//  802   return bitstatus;
        UXTB     R0,R0
        POP      {R4,PC}          ;; return
//  803 }
//  804 
//  805 /**
//  806   * @brief  Checks whether the specified ADC1 Status flag is set or not.
//  807   * @param  Flag: specifies the flag to check.
//  808   *         This parameter can be one of the following values:
//  809   *           @arg ADCx_FLAG_OVERWRITE:         the previous ADC1 measured value was overwritten;
//  810   *           @arg ADCx_FLAG_OUT_OF_RANGE:      the ADC1 measured value is out of range;
//  811   *           @arg ADCx_FLAG_END_OF_CONVERSION: the ADC1 conversion finished.
//  812   * @retval Current Status flag state (SET or RESET).
//  813   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  814 FlagStatus ADC1_GetFlagStatus(uint32_t Flag)
//  815 {
//  816   FlagStatus bitstatus;
//  817 
//  818   /* Check the parameters */
//  819   assert_param(IS_ADCx_STATUS_FLAG(Flag));
//  820 
//  821   if ((MDR_ADC->ADC1_STATUS & Flag) == 0)
ADC1_GetFlagStatus:
        LDR.N    R1,??DataTable32_13  ;; 0x40088020
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  822   {
//  823     bitstatus = RESET;
//  824   }
//  825   else
//  826   {
//  827     bitstatus = SET;
//  828   }
//  829 
//  830   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  831 }
//  832 
//  833 #if defined  (USE_MDR1986VE9x)
//  834 /**
//  835   * @brief  Checks whether the specified ADC2 Status flag is set or not.
//  836   * @warning 	This function can be used only for microcontroller
//  837   * 		series MDR1986VE9x.
//  838   * @param  Flag: specifies the flag to check.
//  839   *         This parameter can be one of the following values:
//  840   *           @arg ADCx_FLAG_OVERWRITE:         the previous ADC2 measured value was overwritten;
//  841   *           @arg ADCx_FLAG_OUT_OF_RANGE:      the ADC2 measured value is out of range;
//  842   *           @arg ADCx_FLAG_END_OF_CONVERSION: the ADC2 conversion finished.
//  843   * @retval Current Status flag state (SET or RESET).
//  844   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  845 FlagStatus ADC2_GetFlagStatus(uint32_t Flag)
//  846 {
//  847   FlagStatus bitstatus;
//  848 
//  849   /* Check the parameters */
//  850   assert_param(IS_ADCx_STATUS_FLAG(Flag));
//  851 
//  852   if ((MDR_ADC->ADC2_STATUS & Flag) == 0)
ADC2_GetFlagStatus:
        LDR.N    R1,??DataTable32_14  ;; 0x40088024
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  853   {
//  854     bitstatus = RESET;
//  855   }
//  856   else
//  857   {
//  858     bitstatus = SET;
//  859   }
//  860 
//  861   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  862 }
//  863 #endif /* #if defined  (USE_MDR1986VE9x) */
//  864 
//  865 /**
//  866   * @brief  Clears the ADC1 Overwrite flag.
//  867   * @param  None.
//  868   * @retval None
//  869   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  870 void ADC1_ClearOverwriteFlag(void)
//  871 {
//  872   MDR_ADC->ADC1_STATUS &= ~ADCx_FLAG_OVERWRITE;
ADC1_ClearOverwriteFlag:
        LDR.N    R0,??DataTable32_13  ;; 0x40088020
        B.N      ?Subroutine4
//  873 }
//  874 
//  875 #if defined  (USE_MDR1986VE9x)
//  876 /**
//  877   * @brief  Clears the ADC2 Overwrite flag.
//  878   * @warning 	This function can be used only for microcontroller
//  879   * 		series MDR1986VE9x.
//  880   * @param  None.
//  881   * @retval None
//  882   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  883 void ADC2_ClearOverwriteFlag(void)
//  884 {
//  885   MDR_ADC->ADC2_STATUS &= ~ADCx_FLAG_OVERWRITE;
ADC2_ClearOverwriteFlag:
        LDR.N    R0,??DataTable32_14  ;; 0x40088024
        REQUIRE ?Subroutine4
        ;; // Fall through to label ?Subroutine4
//  886 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
        BX       LR               ;; return
//  887 #endif /* #if defined  (USE_MDR1986VE9x) */
//  888 
//  889 /**
//  890   * @brief  Clears the ADC1 AWOIFEN flag.
//  891   * @param  None.
//  892   * @retval None
//  893   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  894 void ADC1_ClearOutOfRangeFlag(void)
//  895 {
//  896   MDR_ADC->ADC1_STATUS &= ~ADCx_FLAG_OUT_OF_RANGE;
ADC1_ClearOutOfRangeFlag:
        LDR.N    R0,??DataTable32_13  ;; 0x40088020
        B.N      ?Subroutine6
//  897 }
//  898 
//  899 #if defined  (USE_MDR1986VE9x)
//  900 /**
//  901   * @brief  Clears the ADC2 AWOIFEN flag.
//  902   * @warning 	This function can be used only for microcontroller
//  903   * 		series MDR1986VE9x.
//  904   * @param  None.
//  905   * @retval None
//  906   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  907 void ADC2_ClearOutOfRangeFlag(void)
//  908 {
//  909   MDR_ADC->ADC2_STATUS &= ~ADCx_FLAG_OUT_OF_RANGE;
ADC2_ClearOutOfRangeFlag:
        LDR.N    R0,??DataTable32_14  ;; 0x40088024
        REQUIRE ?Subroutine6
        ;; // Fall through to label ?Subroutine6
//  910 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine6:
        LDR      R1,[R0, #+0]
        BIC      R1,R1,#0x2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
//  911 #endif /* #if defined  (USE_MDR1986VE9x) */
//  912 
//  913 /**
//  914   * @brief  Enables or disables the ADC1, ADC2 interrupts.
//  915   * @param  ADC_IT: specifies the ADC interrupts sources to be enabled or disabled.
//  916   *         This parameter can be any combination of the following values:
//  917   *           @arg ADC1_IT_OUT_OF_RANGE:        the ADC1 measured value is out of range;
//  918   *           @arg ADC1_IT_END_OF_CONVERSION:   the ADC1 conversion finished;
//  919   *           @arg ADC2_IT_OUT_OF_RANGE:        the ADC2 measured value is out of range;
//  920   *           @arg ADC2_IT_END_OF_CONVERSION:   the ADC2 conversion finished.
//  921   * @param  NewState: new state of the ADC interrupts.
//  922   *         This parameter can be: ENABLE or DISABLE.
//  923   * @retval None
//  924   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  925 void ADC_ITConfig(uint32_t ADC_IT, FunctionalState NewState)
//  926 {
ADC_ITConfig:
        PUSH     {R4,LR}
//  927   uint32_t tmpreg_ADC1_IE;
//  928   uint32_t tmpreg_ADC_IT;
//  929 #if defined  (USE_MDR1986VE9x)
//  930   uint32_t tmpreg_ADC2_IE;
//  931 #endif
//  932 
//  933   /* Check the parameters */
//  934   assert_param(IS_ADC_CONFIG_IT(ADC_IT));
//  935   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  936 
//  937   tmpreg_ADC1_IE = MDR_ADC->ADC1_STATUS;
        LDR.N    R2,??DataTable32_13  ;; 0x40088020
        LDR      R3,[R2, #+0]
//  938   tmpreg_ADC_IT = ADC_IT << 2;
        LSLS     R0,R0,#+2
//  939 
//  940   /* Form new value */
//  941   if (NewState != DISABLE)
        UXTH     R4,R0
        CMP      R1,#+0
        ITE      NE 
        ORRNE    R3,R4,R3
        BICEQ    R3,R3,R4
//  942   {
//  943     /* Enable the ADC Interrupt requests by setting bits in the ADCx_STATUS registers */
//  944     tmpreg_ADC1_IE |= tmpreg_ADC_IT & 0xFFFF;
//  945   }
//  946   else
//  947   {
//  948     /* Disable the ADC Interrupt requests by clearing bits in the ADCx_STATUS registers */
//  949     tmpreg_ADC1_IE &= ~(tmpreg_ADC_IT & 0xFFFF);
//  950   }
//  951 
//  952   /* Configure ADCx_STATUS registers with new value */
//  953   MDR_ADC->ADC1_STATUS = tmpreg_ADC1_IE;
        STR      R3,[R2, #+0]
//  954 
//  955 #if defined  (USE_MDR1986VE9x)
//  956 
//  957   tmpreg_ADC2_IE = MDR_ADC->ADC2_STATUS;
        LDR      R3,[R2, #+4]
//  958 
//  959   /* Form new value */
//  960   if (NewState != DISABLE)
        CBZ.N    R1,??ADC_ITConfig_0
//  961   {
//  962     /* Enable the ADC Interrupt requests by setting bits in the ADCx_STATUS registers */
//  963     tmpreg_ADC2_IE |= tmpreg_ADC_IT >> 16;
        ORRS     R0,R3,R0, LSR #+16
        B.N      ??ADC_ITConfig_1
//  964   }
//  965   else
//  966   {
//  967     /* Disable the ADC Interrupt requests by clearing bits in the ADCx_STATUS registers */
//  968     tmpreg_ADC2_IE &= ~(tmpreg_ADC_IT >> 16);
??ADC_ITConfig_0:
        BIC      R0,R3,R0, LSR #+16
//  969   }
//  970   /* Configure ADCx_STATUS registers with new value */
//  971   MDR_ADC->ADC2_STATUS = tmpreg_ADC2_IE;
??ADC_ITConfig_1:
        STR      R0,[R2, #+4]
//  972 #endif /* #if defined  (USE_MDR1986VE9x) */
//  973 }
        POP      {R4,PC}          ;; return
//  974 
//  975 /**
//  976   * @brief  Enables or disables the ADC1 interrupts.
//  977   * @param  ADC_IT: specifies the ADC1 interrupts sources to be enabled or disabled.
//  978   *         This parameter can be any combination of the following values:
//  979   *           @arg ADC1_IT_OUT_OF_RANGE:        the ADC1 measured value is out of range;
//  980   *           @arg ADC1_IT_END_OF_CONVERSION:   the ADC1 conversion finished.
//  981   * @param  NewState: new state of the ADC1 interrupts.
//  982   *         This parameter can be: ENABLE or DISABLE.
//  983   * @retval None
//  984   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  985 void ADC1_ITConfig(uint32_t ADC_IT, FunctionalState NewState)
//  986 {
//  987   uint32_t tmpreg_ADC1_IE;
//  988 
//  989   /* Check the parameters */
//  990   assert_param(IS_ADCx_CONFIG_IT(ADC_IT));
//  991   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  992 
//  993   tmpreg_ADC1_IE = MDR_ADC->ADC1_STATUS;
ADC1_ITConfig:
        LDR.N    R2,??DataTable32_13  ;; 0x40088020
        B.N      ?Subroutine0
//  994 
//  995   /* Form new value */
//  996   if (NewState != DISABLE)
//  997   {
//  998     /* Enable the ADC Interrupt requests by setting bits in the ADC1_STATUS register */
//  999     tmpreg_ADC1_IE |= (ADC_IT << 2);
// 1000   }
// 1001   else
// 1002   {
// 1003     /* Disable the ADC Interrupt requests by clearing bits in the ADC1_STATUS register */
// 1004     tmpreg_ADC1_IE &= ~(ADC_IT << 2);
// 1005   }
// 1006 
// 1007   /* Configure ADC1_STATUS registers with new value */
// 1008   MDR_ADC->ADC1_STATUS = tmpreg_ADC1_IE;
// 1009 }
// 1010 
// 1011 #if defined  (USE_MDR1986VE9x)
// 1012 /**
// 1013   * @brief  Enables or disables the ADC2 interrupts.
// 1014   * @warning 	This function can be used only for microcontroller
// 1015   * 		series MDR1986VE9x.
// 1016   * @param  ADC_IT: specifies the ADC2 interrupts sources to be enabled or disabled.
// 1017   *         This parameter can be any combination of the following values:
// 1018   *           @arg ADC2_IT_OUT_OF_RANGE:        the ADC2 measured value is out of range;
// 1019   *           @arg ADC2_IT_END_OF_CONVERSION:   the ADC2 conversion finished.
// 1020   * @param  NewState: new state of the ADC2 interrupts.
// 1021   *         This parameter can be: ENABLE or DISABLE.
// 1022   * @retval None
// 1023   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1024 void ADC2_ITConfig(uint32_t ADC_IT, FunctionalState NewState)
// 1025 {
// 1026   uint32_t tmpreg_ADC2_IE;
// 1027 
// 1028   /* Check the parameters */
// 1029   assert_param(IS_ADCx_CONFIG_IT(ADC_IT));
// 1030   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1031 
// 1032   tmpreg_ADC2_IE = MDR_ADC->ADC2_STATUS;
ADC2_ITConfig:
        LDR.N    R2,??DataTable32_14  ;; 0x40088024
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1033 
// 1034   /* Form new value */
// 1035   if (NewState != DISABLE)
// 1036   {
// 1037     /* Enable the ADC Interrupt requests by setting bits in the ADC2_STATUS register */
// 1038     tmpreg_ADC2_IE |= (ADC_IT << 2);
// 1039   }
// 1040   else
// 1041   {
// 1042     /* Disable the ADC Interrupt requests by clearing bits in the ADC2_STATUS register */
// 1043     tmpreg_ADC2_IE &= ~(ADC_IT << 2);
// 1044   }
// 1045 
// 1046   /* Configure ADC2_STATUS registers with new value */
// 1047   MDR_ADC->ADC2_STATUS = tmpreg_ADC2_IE;
// 1048 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R3,[R2, #+0]
        CBZ.N    R1,??Subroutine0_0
        ORRS     R0,R3,R0, LSL #+2
        B.N      ??Subroutine0_1
??Subroutine0_0:
        BIC      R0,R3,R0, LSL #+2
??Subroutine0_1:
        STR      R0,[R2, #+0]
        BX       LR               ;; return
// 1049 #endif /* #if defined  (USE_MDR1986VE9x) */
// 1050 
// 1051 /**
// 1052   * @brief  Checks whether the ADC1, ADC2 interrupt has occurred or not.
// 1053   * @param  ADC_IT: specifies the ADC interrupt source to check.
// 1054   *         This parameter can be one of the following values:
// 1055   *           @arg ADC1_IT_OUT_OF_RANGE:        the ADC1 measured value is out of range;
// 1056   *           @arg ADC1_IT_END_OF_CONVERSION:   the ADC1 conversion finished;
// 1057   *           @arg ADC2_IT_OUT_OF_RANGE:        the ADC2 measured value is out of range;
// 1058   *           @arg ADC2_IT_END_OF_CONVERSION:   the ADC2 conversion finished.
// 1059   * @retval The new state of the ADC_IT (SET or RESET).
// 1060   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1061 ITStatus ADC_GetITStatus(uint32_t ADC_IT)
// 1062 {
ADC_GetITStatus:
        PUSH     {R4,LR}
        MOV      R4,R0
// 1063   ITStatus bitstatus;
// 1064   uint32_t tmpreg;
// 1065 
// 1066   /* Check the parameters */
// 1067   assert_param(IS_ADC_CONFIG_IT(ADC_IT));
// 1068 
// 1069   tmpreg = ADC_GetStatus();
        BL       ADC_GetStatus
// 1070   tmpreg &= (tmpreg >> 2) & ADC_IT;
// 1071 
// 1072   if (tmpreg == 0)
        AND      R0,R0,R0, LSR #+2
        ANDS     R0,R4,R0
        IT       NE 
        MOVNE    R0,#+1
// 1073   {
// 1074     bitstatus = RESET;
// 1075   }
// 1076   else
// 1077   {
// 1078     bitstatus = SET;
// 1079   }
// 1080 
// 1081   return bitstatus;
        UXTB     R0,R0
        POP      {R4,PC}          ;; return
// 1082 }
// 1083 
// 1084 /**
// 1085   * @brief  Checks whether the ADC1 interrupt has occurred or not.
// 1086   * @param  ADC_IT: specifies the ADC interrupt source to check.
// 1087   *         This parameter can be one of the following values:
// 1088   *           @arg ADC1_IT_OUT_OF_RANGE:        the ADC1 measured value is out of range;
// 1089   *           @arg ADC1_IT_END_OF_CONVERSION:   the ADC1 conversion finished.
// 1090   * @retval The new state of the ADC_IT (SET or RESET).
// 1091   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1092 ITStatus ADC1_GetITStatus(uint32_t ADC_IT)
// 1093 {
// 1094   ITStatus bitstatus;
// 1095   uint32_t tmpreg;
// 1096 
// 1097   /* Check the parameters */
// 1098   assert_param(IS_ADCx_CONFIG_IT(ADC_IT));
// 1099 
// 1100   tmpreg = MDR_ADC->ADC1_STATUS;
ADC1_GetITStatus:
        LDR.N    R1,??DataTable32_13  ;; 0x40088020
        LDR      R1,[R1, #+0]
// 1101   tmpreg &= (tmpreg >> 2) & ADC_IT;
// 1102 
// 1103   if (tmpreg == 0)
        AND      R1,R1,R1, LSR #+2
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
// 1104   {
// 1105     bitstatus = RESET;
// 1106   }
// 1107   else
// 1108   {
// 1109     bitstatus = SET;
// 1110   }
// 1111 
// 1112   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
// 1113 }
// 1114 
// 1115 #if defined  (USE_MDR1986VE9x)
// 1116 /**
// 1117   * @brief  Checks whether the ADC2 interrupt has occurred or not.
// 1118   * @warning 	This function can be used only for microcontroller
// 1119   * 		series MDR1986VE9x.
// 1120   * @param  ADC_IT: specifies the ADC interrupt source to check.
// 1121   *         This parameter can be one of the following values:
// 1122   *           @arg ADC2_IT_OUT_OF_RANGE:        the ADC2 measured value is out of range;
// 1123   *           @arg ADC2_IT_END_OF_CONVERSION:   the ADC2 conversion finished.
// 1124   * @retval The new state of the ADC_IT (SET or RESET).
// 1125   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1126 ITStatus ADC2_GetITStatus(uint32_t ADC_IT)
// 1127 {
// 1128   ITStatus bitstatus;
// 1129   uint32_t tmpreg;
// 1130 
// 1131   /* Check the parameters */
// 1132   assert_param(IS_ADCx_CONFIG_IT(ADC_IT));
// 1133 
// 1134   tmpreg = MDR_ADC->ADC2_STATUS;
ADC2_GetITStatus:
        LDR.N    R1,??DataTable32_14  ;; 0x40088024
        LDR      R1,[R1, #+0]
// 1135   tmpreg &= (tmpreg >> 2) & ADC_IT;
// 1136 
// 1137   if (tmpreg == 0)
        AND      R1,R1,R1, LSR #+2
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
// 1138   {
// 1139     bitstatus = RESET;
// 1140   }
// 1141   else
// 1142   {
// 1143     bitstatus = SET;
// 1144   }
// 1145 
// 1146   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
// 1147 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     0x40088000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     0xe00ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_2:
        DC32     0xf1ff0003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_3:
        DC32     0x40088004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_4:
        DC32     0xf1fb0003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_5:
        DC32     0x40088028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_6:
        DC32     0x4008802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_7:
        DC32     0x40088010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_8:
        DC32     0x40088014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_9:
        DC32     0x40088008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_10:
        DC32     0x4008800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_11:
        DC32     0x40088018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_12:
        DC32     0x4008801c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_13:
        DC32     0x40088020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_14:
        DC32     0x40088024

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1148 #endif /* #if defined  (USE_MDR1986VE9x) */
// 1149 
// 1150 /** @} */ /* End of group ADC_Private_Functions */
// 1151 
// 1152 /** @} */ /* End of group ADC */
// 1153 
// 1154 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
// 1155 
// 1156 /******************* (C) COPYRIGHT 2011 Phyton *********************************
// 1157 *
// 1158 * END OF FILE MDR32F9Qx_adc.c */
// 1159 
// 
// 768 bytes in section .text
// 
// 768 bytes of CODE memory
//
//Errors: none
//Warnings: 1
