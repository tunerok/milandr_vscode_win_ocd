///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:58 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_timer.c                   /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_timer.c --preprocess      /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_time /
//                    r.s                                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_timer

        #define SHT_PROGBITS 0x1

        PUBLIC TIMER_BRGInit
        PUBLIC TIMER_BRKPolarityConfig
        PUBLIC TIMER_ChnBRKResetConfig
        PUBLIC TIMER_ChnCCR1_Cmd
        PUBLIC TIMER_ChnCCR1_EventSourceConfig
        PUBLIC TIMER_ChnCapturePrescalerConfig
        PUBLIC TIMER_ChnCompare1Config
        PUBLIC TIMER_ChnCompareConfig
        PUBLIC TIMER_ChnETRResetConfig
        PUBLIC TIMER_ChnETR_Cmd
        PUBLIC TIMER_ChnEventSourceConfig
        PUBLIC TIMER_ChnFilterConfig
        PUBLIC TIMER_ChnInit
        PUBLIC TIMER_ChnNOutConfig
        PUBLIC TIMER_ChnNOutModeConfig
        PUBLIC TIMER_ChnNOutPolarityConfig
        PUBLIC TIMER_ChnNOutSourceConfig
        PUBLIC TIMER_ChnOutConfig
        PUBLIC TIMER_ChnOutDTGConfig
        PUBLIC TIMER_ChnOutInit
        PUBLIC TIMER_ChnOutModeConfig
        PUBLIC TIMER_ChnOutPolarityConfig
        PUBLIC TIMER_ChnOutSourceConfig
        PUBLIC TIMER_ChnOutStructInit
        PUBLIC TIMER_ChnREFFormatConfig
        PUBLIC TIMER_ChnStructInit
        PUBLIC TIMER_ClearFlag
        PUBLIC TIMER_Cmd
        PUBLIC TIMER_CntAutoreloadConfig
        PUBLIC TIMER_CntEventSourceConfig
        PUBLIC TIMER_CntInit
        PUBLIC TIMER_CntStructInit
        PUBLIC TIMER_CounterModeConfig
        PUBLIC TIMER_DMACmd
        PUBLIC TIMER_DeInit
        PUBLIC TIMER_ETRFilterConfig
        PUBLIC TIMER_ETRInputConfig
        PUBLIC TIMER_ETRPolarityConfig
        PUBLIC TIMER_ETRPrescalerConfig
        PUBLIC TIMER_FilterSamplingConfig
        PUBLIC TIMER_GetChnCapture
        PUBLIC TIMER_GetChnCapture1
        PUBLIC TIMER_GetChnWriteComplete
        PUBLIC TIMER_GetCntWriteComplete
        PUBLIC TIMER_GetCounter
        PUBLIC TIMER_GetCounterDirection
        PUBLIC TIMER_GetFlagStatus
        PUBLIC TIMER_GetITStatus
        PUBLIC TIMER_GetStatus
        PUBLIC TIMER_ITConfig
        PUBLIC TIMER_SetChnCompare
        PUBLIC TIMER_SetChnCompare1
        PUBLIC TIMER_SetCntAutoreload
        PUBLIC TIMER_SetCntPrescaler
        PUBLIC TIMER_SetCounter
        PUBLIC TIMER_SetCounterDirection

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_timer.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_timer.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/02/2011
//    7   * @brief   This file provides all the TIMER firmware functions.
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
//   18   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_timer.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_timer.h"
//   26 
//   27 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_TIMER_C
//   28 
//   29 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   30   * @{
//   31   */
//   32 
//   33 /** @defgroup TIMER TIMER
//   34   * @{
//   35   */
//   36 
//   37 /** @defgroup TIMER_Private_Functions TIMER Private Functions
//   38   * @{
//   39   */
//   40 
//   41 /**
//   42   * @brief  Deinitializes the TIMERx peripheral registers to their default reset values.
//   43   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//   44   * @retval None
//   45   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void TIMER_DeInit ( MDR_TIMER_TypeDef* TIMERx ) {
//   47 	/* Check the parameters */
//   48 	assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//   49 
//   50 	TIMERx->CNTRL = 0;
TIMER_DeInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   51 	TIMERx->CNT = 0;
        STR      R1,[R0, #+0]
//   52 	TIMERx->PSG = 0;
        STR      R1,[R0, #+4]
//   53 	TIMERx->ARR = 0;
        STR      R1,[R0, #+8]
//   54 
//   55 	TIMERx->CH1_CNTRL = 0;
        STR      R1,[R0, #+32]
//   56 	TIMERx->CH2_CNTRL = 0;
        STR      R1,[R0, #+36]
//   57 	TIMERx->CH3_CNTRL = 0;
        STR      R1,[R0, #+40]
//   58 	TIMERx->CH4_CNTRL = 0;
        STR      R1,[R0, #+44]
//   59 	TIMERx->CH1_CNTRL1 = 0;
        STR      R1,[R0, #+48]
//   60 	TIMERx->CH2_CNTRL1 = 0;
        STR      R1,[R0, #+52]
//   61 	TIMERx->CH3_CNTRL1 = 0;
        STR      R1,[R0, #+56]
//   62 	TIMERx->CH4_CNTRL1 = 0;
        STR      R1,[R0, #+60]
//   63 	TIMERx->CH1_CNTRL2 = 0;
        STR      R1,[R0, #+96]
//   64 	TIMERx->CH2_CNTRL2 = 0;
        STR      R1,[R0, #+100]
//   65 	TIMERx->CH3_CNTRL2 = 0;
        STR      R1,[R0, #+104]
//   66 	TIMERx->CH4_CNTRL2 = 0;
        STR      R1,[R0, #+108]
//   67 
//   68 	TIMERx->CCR1 = 0;
        STR      R1,[R0, #+16]
//   69 	TIMERx->CCR2 = 0;
        STR      R1,[R0, #+20]
//   70 	TIMERx->CCR3 = 0;
        STR      R1,[R0, #+24]
//   71 	TIMERx->CCR4 = 0;
        STR      R1,[R0, #+28]
//   72 	TIMERx->CCR11 = 0;
        STR      R1,[R0, #+112]
//   73 	TIMERx->CCR21 = 0;
        STR      R1,[R0, #+116]
//   74 	TIMERx->CCR31 = 0;
        STR      R1,[R0, #+120]
//   75 	TIMERx->CCR41 = 0;
        STR      R1,[R0, #+124]
//   76 	TIMERx->CH1_DTG = 0;
        STR      R1,[R0, #+64]
//   77 	TIMERx->CH2_DTG = 0;
        STR      R1,[R0, #+68]
//   78 	TIMERx->CH3_DTG = 0;
        STR      R1,[R0, #+72]
//   79 	TIMERx->CH4_DTG = 0;
        STR      R1,[R0, #+76]
//   80 	TIMERx->BRKETR_CNTRL = 0;
        STR      R1,[R0, #+80]
//   81 	TIMERx->STATUS = 0;
        STR      R1,[R0, #+84]
//   82 	TIMERx->IE = 0;
        STR      R1,[R0, #+88]
//   83 	TIMERx->DMA_RE = 0;
        STR      R1,[R0, #+92]
//   84 #if defined(USE_MDR1986VE3) || defined (USE_MDR1986VE1T) /* For Cortex M1 */
//   85 	TIMERx->DMA_REChx[0] = TIMERx->DMA_REChx[1] =
//   86 			TIMERx->DMA_REChx[2] = TIMERx->DMA_REChx[3] = 0;
//   87 #endif
//   88 }
        BX       LR               ;; return
//   89 
//   90 /**
//   91   * @brief  Initializes the TIMERx Counter peripheral according to
//   92   *         the specified parameters in the TIMER_CntInitStruct.
//   93   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//   94   * @param  TIMER_CntInitStruct: pointer to a TIMER_CntInitTypeDef structure
//   95   *         that contains the configuration information for the specified TIMER
//   96   *         peripheral.
//   97   * @retval None
//   98   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   99 void TIMER_CntInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_CntInitTypeDef* TIMER_CntInitStruct)
//  100 {
//  101   uint32_t tmpreg_CNTRL;
//  102   uint32_t tmpreg_BRKETR_CNTRL;
//  103 
//  104   /* Check the parameters */
//  105   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  106   assert_param(IS_TIMER_COUNTER_MODE(TIMER_CntInitStruct->TIMER_CounterMode));
//  107   assert_param(IS_TIMER_COUNTER_DIR(TIMER_CntInitStruct->TIMER_CounterDirection));
//  108   assert_param(IS_TIMER_EVENT_SOURCE(TIMER_CntInitStruct->TIMER_EventSource));
//  109   assert_param(IS_TIMER_FILTER_SAMPLING(TIMER_CntInitStruct->TIMER_FilterSampling));
//  110   assert_param(IS_TIMER_ARR_UPDATE_MODE(TIMER_CntInitStruct->TIMER_ARR_UpdateMode));
//  111   assert_param(IS_TIMER_FILTER_CONF(TIMER_CntInitStruct->TIMER_ETR_FilterConf));
//  112   assert_param(IS_TIMER_ETR_PRESCALER(TIMER_CntInitStruct->TIMER_ETR_Prescaler));
//  113   assert_param(IS_TIMER_ETR_POLARITY(TIMER_CntInitStruct->TIMER_ETR_Polarity));
//  114   assert_param(IS_TIMER_BRK_POLARITY(TIMER_CntInitStruct->TIMER_BRK_Polarity));
//  115 
//  116   TIMERx->CNT = TIMER_CntInitStruct->TIMER_IniCounter;
TIMER_CntInit:
        LDRH     R2,[R1, #+0]
        STR      R2,[R0, #+0]
//  117   TIMERx->PSG = TIMER_CntInitStruct->TIMER_Prescaler;
        LDRH     R2,[R1, #+2]
        STR      R2,[R0, #+4]
//  118   TIMERx->ARR = TIMER_CntInitStruct->TIMER_Period;
        LDRH     R2,[R1, #+4]
        STR      R2,[R0, #+8]
//  119 
//  120   /* Form new value for the TIMERx_CNTRL register */
//  121   tmpreg_CNTRL = TIMER_CntInitStruct->TIMER_CounterMode
//  122                + TIMER_CntInitStruct->TIMER_CounterDirection
//  123                + TIMER_CntInitStruct->TIMER_EventSource
//  124                + TIMER_CntInitStruct->TIMER_FilterSampling
//  125                + TIMER_CntInitStruct->TIMER_ARR_UpdateMode;
//  126 
//  127   /* Configure TIMERx_CNTRL register with new value */
//  128   TIMERx->CNTRL = tmpreg_CNTRL;
        LDRH     R2,[R1, #+6]
        LDRH     R3,[R1, #+8]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+10]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+12]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+14]
        ADDS     R2,R3,R2
        STR      R2,[R0, #+12]
//  129 
//  130   /* Form new value for the TIMERx_BRKETR_CNTRL register */
//  131   tmpreg_BRKETR_CNTRL = (TIMER_CntInitStruct->TIMER_ETR_FilterConf << TIMER_BRKETR_CNTRL_ETR_FILTER_Pos)
//  132                       + TIMER_CntInitStruct->TIMER_ETR_Prescaler
//  133                       + TIMER_CntInitStruct->TIMER_ETR_Polarity
//  134                       + TIMER_CntInitStruct->TIMER_BRK_Polarity;
//  135 
//  136   /* Configure TIMERx_BRKETR_CNTRL register with new value */
//  137   TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
        LDRH     R2,[R1, #+16]
        LDRH     R3,[R1, #+18]
        ADD      R2,R3,R2, LSL #+4
        LDRH     R3,[R1, #+20]
        ADDS     R2,R3,R2
        LDRH     R1,[R1, #+22]
        B.N      ?Subroutine2
//  138 }
//  139 
//  140 /**
//  141   * @brief  Fills each TIMER_CntInitStruct member with its default value.
//  142   * @param  TIMER_CntInitStruct: pointer to a TIMER_CntInitTypeDef structure
//  143   *         which will be initialized.
//  144   * @retval None
//  145   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void TIMER_CntStructInit(TIMER_CntInitTypeDef* TIMER_CntInitStruct)
//  147 {
//  148   TIMER_CntInitStruct->TIMER_IniCounter = 0;
TIMER_CntStructInit:
        B.N      ?Subroutine0
//  149   TIMER_CntInitStruct->TIMER_Prescaler  = 0;
//  150   TIMER_CntInitStruct->TIMER_Period     = 0;
//  151   TIMER_CntInitStruct->TIMER_CounterMode      = TIMER_CntMode_ClkFixedDir;
//  152   TIMER_CntInitStruct->TIMER_CounterDirection = TIMER_CntDir_Up;
//  153   TIMER_CntInitStruct->TIMER_EventSource      = TIMER_EvSrc_None;
//  154   TIMER_CntInitStruct->TIMER_FilterSampling   = TIMER_FDTS_TIMER_CLK_div_1;
//  155   TIMER_CntInitStruct->TIMER_ARR_UpdateMode   = TIMER_ARR_Update_Immediately;
//  156   TIMER_CntInitStruct->TIMER_ETR_FilterConf   = TIMER_Filter_1FF_at_TIMER_CLK;
//  157   TIMER_CntInitStruct->TIMER_ETR_Prescaler    = TIMER_ETR_Prescaler_None;
//  158   TIMER_CntInitStruct->TIMER_ETR_Polarity     = TIMER_ETRPolarity_NonInverted;
//  159   TIMER_CntInitStruct->TIMER_BRK_Polarity     = TIMER_BRKPolarity_NonInverted;
//  160 }
//  161 
//  162 /**
//  163   * @brief  Enables or disables the specified TIMER peripheral.
//  164   * @param  TIMERx: where x can be 1 to 3 to select the TIMERx peripheral.
//  165   * @param  NewState: new state of the TIMERx peripheral.
//  166   *         This parameter can be: ENABLE or DISABLE.
//  167   * @retval None
//  168   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void TIMER_Cmd(MDR_TIMER_TypeDef* TIMERx, FunctionalState NewState)
//  170 {
//  171   uint32_t tmpreg_CNTRL;
//  172 
//  173   /* Check the parameters */
//  174   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  175   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  176 
//  177   tmpreg_CNTRL = TIMERx->CNTRL;
TIMER_Cmd:
        LDR      R2,[R0, #+12]
//  178 
//  179   /* Form new value */
//  180   if (NewState != DISABLE)
        CMP      R1,#+0
        ITEE     NE 
        ORRNE    R1,R2,#0x1
        LSREQ    R1,R2,#+1
        LSLEQ    R1,R1,#+1
//  181   {
//  182     /* Enable TIMERx by setting the CNT_EN bit in the CNTRL register */
//  183     tmpreg_CNTRL |= TIMER_CNTRL_CNT_EN;
//  184   }
//  185   else
//  186   {
//  187     /* Disable TIMERx by resetting the CNT_EN bit in the CNTRL register */
//  188     tmpreg_CNTRL &= ~TIMER_CNTRL_CNT_EN;
//  189   }
//  190 
//  191   /* Configure CNTRL register with new value */
//  192   TIMERx->CNTRL = tmpreg_CNTRL;
        STR      R1,[R0, #+12]
//  193 }
        BX       LR               ;; return
//  194 
//  195 /**
//  196   * @brief  Sets the TIMERx Counter Register value.
//  197   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  198   * @param  Counter: specifies the Counter register new value.
//  199   * @retval None
//  200   */
//  201 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  202 void TIMER_SetCounter(MDR_TIMER_TypeDef* TIMERx, uint32_t Counter)
//  203 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 void TIMER_SetCounter(MDR_TIMER_TypeDef* TIMERx, uint16_t Counter)
//  205 #endif
//  206 {
//  207   /* Check the parameters */
//  208   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  209 
//  210   TIMERx->CNT = Counter;
TIMER_SetCounter:
        STR      R1,[R0, #+0]
//  211 }
        BX       LR               ;; return
//  212 
//  213 /**
//  214   * @brief  Sets the TIMERx Prescaler.
//  215   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  216   * @param  Prescaler: specifies the Prescaler Register value.
//  217   * @retval None
//  218   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  219 void TIMER_SetCntPrescaler(MDR_TIMER_TypeDef* TIMERx, uint16_t Prescaler)
//  220 {
//  221   /* Check the parameters */
//  222   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  223 
//  224   TIMERx->PSG = Prescaler;
TIMER_SetCntPrescaler:
        STR      R1,[R0, #+4]
//  225 }
        BX       LR               ;; return
//  226 
//  227 /**
//  228   * @brief  Sets the TIMERx Autoreload Register value.
//  229   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  230   * @param  Autoreload: specifies the Autoreload Register value.
//  231   * @retval None
//  232   */
//  233 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  234 void TIMER_SetCntAutoreload(MDR_TIMER_TypeDef* TIMERx, uint32_t Autoreload)
//  235 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 void TIMER_SetCntAutoreload(MDR_TIMER_TypeDef* TIMERx, uint16_t Autoreload)
//  237 #endif
//  238 {
//  239   /* Check the parameters */
//  240   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  241 
//  242   TIMERx->ARR = Autoreload;
TIMER_SetCntAutoreload:
        STR      R1,[R0, #+8]
//  243 }
        BX       LR               ;; return
//  244 
//  245 /**
//  246   * @brief  Sets the TIMERx Autoreload Register value.
//  247   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  248   * @param  Autoreload: specifies the Autoreload Register value.
//  249   * @param  UpdateMode: specifies the Autoreload Register Update mode.
//  250   *         This parameter can be one of the following values:
//  251   *           @arg TIMER_ARR_Update_Immediately:     the ARR register is updated immediately;
//  252   *           @arg TIMER_ARR_Update_On_CNT_Overflow: the ARR register is updated at CNT count end.
//  253   * @retval None
//  254   */
//  255 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  256 void TIMER_CntAutoreloadConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Autoreload, uint32_t UpdateMode)
//  257 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void TIMER_CntAutoreloadConfig(MDR_TIMER_TypeDef* TIMERx, uint16_t Autoreload, uint32_t UpdateMode)
//  259 #endif
//  260 {
//  261   uint32_t tmpreg_CNTRL;
//  262 
//  263   /* Check the parameters */
//  264   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  265   assert_param(IS_TIMER_ARR_UPDATE_MODE(UpdateMode));
//  266 
//  267   tmpreg_CNTRL = TIMERx->CNTRL;
//  268   tmpreg_CNTRL &= ~TIMER_CNTRL_ARRB_EN;
//  269   tmpreg_CNTRL += UpdateMode;
//  270   TIMERx->CNTRL = tmpreg_CNTRL;
TIMER_CntAutoreloadConfig:
        LDR      R3,[R0, #+12]
        BIC      R3,R3,#0x2
        ADDS     R2,R2,R3
        STR      R2,[R0, #+12]
//  271 
//  272   TIMERx->ARR = Autoreload;
        STR      R1,[R0, #+8]
//  273 }
        BX       LR               ;; return
//  274 
//  275 /**
//  276   * @brief  Returns the TIMERx Counter value.
//  277   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  278   * @retval Counter Register value.
//  279   */
//  280 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  281 uint32_t TIMER_GetCounter(MDR_TIMER_TypeDef* TIMERx)
//  282 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  283 uint16_t TIMER_GetCounter(MDR_TIMER_TypeDef* TIMERx)
//  284 #endif
//  285 {
//  286   /* Check the parameters */
//  287   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  288 
//  289   return TIMERx->CNT;
TIMER_GetCounter:
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        BX       LR               ;; return
//  290 }
//  291 
//  292 /**
//  293   * @brief  Configures the TIMERx Counter Event source.
//  294   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  295   * @param  EventSource: specifies the Event source.
//  296   *         This parameter can be one of the following values:
//  297   *           @arg TIMER_EvSrc_None: no events;
//  298   *           @arg TIMER_EvSrc_TM1:  selects TIMER1 (CNT == ARR) event;
//  299   *           @arg TIMER_EvSrc_TM2:  selects TIMER2 (CNT == ARR) event;
//  300   *           @arg TIMER_EvSrc_TM3:  selects TIMER3 (CNT == ARR) event;
//  301   *           @arg TIMER_EvSrc_CH1:  selects Channel 1 event;
//  302   *           @arg TIMER_EvSrc_CH2:  selects Channel 2 event;
//  303   *           @arg TIMER_EvSrc_CH3:  selects Channel 3 event;
//  304   *           @arg TIMER_EvSrc_CH4:  selects Channel 4 event;
//  305   *           @arg TIMER_EvSrc_ETR:  selects ETR event.
//  306   * @retval None
//  307   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 void TIMER_CntEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t EventSource)
//  309 {
//  310   uint32_t tmpreg_CNTRL;
//  311 
//  312   /* Check the parameters */
//  313   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  314   assert_param(IS_TIMER_EVENT_SOURCE(EventSource));
//  315 
//  316   tmpreg_CNTRL = TIMERx->CNTRL;
//  317   tmpreg_CNTRL &= ~TIMER_CNTRL_EVENT_SEL_Msk;
//  318   tmpreg_CNTRL += EventSource;
//  319   TIMERx->CNTRL = tmpreg_CNTRL;
TIMER_CntEventSourceConfig:
        LDR      R2,[R0, #+12]
        BIC      R2,R2,#0xF00
        B.N      ?Subroutine3
//  320 }
//  321 
//  322 /**
//  323   * @brief  Configures the TIMERx Filter Sampling clock.
//  324   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  325   * @param  Prescaler: specifies the Filter Sampling clock.
//  326   *         This parameter can be one of the following values:
//  327   *           @arg TIMER_FDTS_TIMER_CLK_div_1: the FDTS clock occures each TIMER_CLK clock;
//  328   *           @arg TIMER_FDTS_TIMER_CLK_div_2: the FDTS clock occures each 2-nd TIMER_CLK clock;
//  329   *           @arg TIMER_FDTS_TIMER_CLK_div_3: the FDTS clock occures each 3-rd TIMER_CLK clock;
//  330   *           @arg TIMER_FDTS_TIMER_CLK_div_4: the FDTS clock occures each 4-th TIMER_CLK clock.
//  331   * @retval None
//  332   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void TIMER_FilterSamplingConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler)
//  334 {
//  335   uint32_t tmpreg_CNTRL;
//  336 
//  337   /* Check the parameters */
//  338   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  339   assert_param(IS_TIMER_FILTER_SAMPLING(Prescaler));
//  340 
//  341   tmpreg_CNTRL = TIMERx->CNTRL;
//  342   tmpreg_CNTRL &= ~TIMER_CNTRL_FDTS_Msk;
//  343   tmpreg_CNTRL += Prescaler;
//  344   TIMERx->CNTRL = tmpreg_CNTRL;
TIMER_FilterSamplingConfig:
        LDR      R2,[R0, #+12]
        BIC      R2,R2,#0x30
        REQUIRE ?Subroutine3
        ;; // Fall through to label ?Subroutine3
//  345 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        ADDS     R1,R1,R2
        STR      R1,[R0, #+12]
        BX       LR               ;; return
//  346 
//  347 /**
//  348   * @brief  Configures the TIMERx count mode.
//  349   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  350   * @param  Mode: specifies the Timer count mode.
//  351   *         This parameter can be one of the following values:
//  352   *           @arg TIMER_CntMode_ClkFixedDir:  The Timer clock changes the TIMERx_CNT value. The count direction is not changed.
//  353   *           @arg TIMER_CntMode_ClkChangeDir: The Timer clock changes the TIMERx_CNT value. The count direction changes.
//  354   *           @arg TIMER_CntMode_EvtFixedDir:  The event changes the TIMERx_CNT value. The count direction is not changed.
//  355   *           @arg TIMER_CntMode_EvtChangeDir: The event changes the TIMERx_CNT value. The count direction changes.
//  356   * @retval None
//  357   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 void TIMER_CounterModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Mode)
//  359 {
//  360   uint32_t tmpreg_CNTRL;
//  361 
//  362   /* Check the parameters */
//  363   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  364   assert_param(IS_TIMER_COUNTER_MODE(Mode));
//  365 
//  366   tmpreg_CNTRL = TIMERx->CNTRL;
//  367   tmpreg_CNTRL &= ~TIMER_CNTRL_CNT_MODE_Msk;
//  368   tmpreg_CNTRL += Mode;
//  369   TIMERx->CNTRL = tmpreg_CNTRL;
TIMER_CounterModeConfig:
        LDR      R2,[R0, #+12]
        BIC      R2,R2,#0xC0
        B.N      ?Subroutine3
//  370 }
//  371 
//  372 /**
//  373   * @brief  Configures the TIMERx count direction.
//  374   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  375   * @param  Direction: specifies the Timer count direction.
//  376   *         This parameter can be one of the following values:
//  377   *           @arg TIMER_CntDir_Up: increments the Timer TIMERx_CNT counter value;
//  378   *           @arg TIMER_CntDir_Dn: decrements the Timer TIMERx_CNT counter value.
//  379   * @retval None
//  380   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  381 void TIMER_SetCounterDirection(MDR_TIMER_TypeDef* TIMERx, uint32_t Direction)
//  382 {
//  383   uint32_t tmpreg_CNTRL;
//  384 
//  385   /* Check the parameters */
//  386   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  387   assert_param(IS_TIMER_COUNTER_DIR(Direction));
//  388 
//  389   tmpreg_CNTRL = TIMERx->CNTRL;
//  390   tmpreg_CNTRL &= ~TIMER_CNTRL_DIR;
//  391   tmpreg_CNTRL += Direction;
//  392   TIMERx->CNTRL = tmpreg_CNTRL;
TIMER_SetCounterDirection:
        LDR      R2,[R0, #+12]
        BIC      R2,R2,#0x8
        B.N      ?Subroutine3
//  393 }
//  394 
//  395 /**
//  396   * @brief  Configures the TIMERx count direction.
//  397   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  398   * @param  Prescaler: specifies the ETR signal prescaler value.
//  399   *         This parameter can be one of the following values:
//  400   *           @arg TIMER_ETR_Prescaler_None : no division of input frequency;
//  401   *           @arg TIMER_ETR_Prescaler_div_2: selects input frequency divider by 2;
//  402   *           @arg TIMER_ETR_Prescaler_div_4: selects input frequency divider by 4;
//  403   *           @arg TIMER_ETR_Prescaler_div_8: selects input frequency divider by 8.
//  404   * @param  Polarity: enables or disables inversion on ETR input.
//  405   *         This parameter can be one of the following values:
//  406   *           @arg TIMER_ETRPolarity_NonInverted: no inversion of the ETR input;
//  407   *           @arg TIMER_ETRPolarity_Inverted:    the ETR input is inverted.
//  408   * @param  Filter: specifies the ETR Filter configuration.
//  409   *         This parameter can be one of the following values:
//  410   *           @arg TIMER_Filter_1FF_at_TIMER_CLK:   signal is latched by 1 trigger  at TIMER_CLK clock frequency;
//  411   *           @arg TIMER_Filter_2FF_at_TIMER_CLK:   signal is latched by 2 triggers at TIMER_CLK clock frequency;
//  412   *           @arg TIMER_Filter_4FF_at_TIMER_CLK:   signal is latched by 4 triggers at TIMER_CLK clock frequency;
//  413   *           @arg TIMER_Filter_8FF_at_TIMER_CLK:   signal is latched by 8 triggers at TIMER_CLK clock frequency;
//  414   *           @arg TIMER_Filter_6FF_at_FTDS_div_2:  signal is latched by 6 triggers at FDTS/2  clock frequency;
//  415   *           @arg TIMER_Filter_8FF_at_FTDS_div_2:  signal is latched by 8 triggers at FDTS/2  clock frequency;
//  416   *           @arg TIMER_Filter_6FF_at_FTDS_div_4:  signal is latched by 6 triggers at FDTS/4  clock frequency;
//  417   *           @arg TIMER_Filter_8FF_at_FTDS_div_4:  signal is latched by 8 triggers at FDTS/4  clock frequency;
//  418   *           @arg TIMER_Filter_6FF_at_FTDS_div_8:  signal is latched by 6 triggers at FDTS/8  clock frequency;
//  419   *           @arg TIMER_Filter_8FF_at_FTDS_div_8:  signal is latched by 8 triggers at FDTS/8  clock frequency;
//  420   *           @arg TIMER_Filter_5FF_at_FTDS_div_16: signal is latched by 5 triggers at FDTS/16 clock frequency;
//  421   *           @arg TIMER_Filter_6FF_at_FTDS_div_16: signal is latched by 6 triggers at FDTS/16 clock frequency;
//  422   *           @arg TIMER_Filter_8FF_at_FTDS_div_16: signal is latched by 8 triggers at FDTS/16 clock frequency;
//  423   *           @arg TIMER_Filter_5FF_at_FTDS_div_32: signal is latched by 5 triggers at FDTS/32 clock frequency;
//  424   *           @arg TIMER_Filter_6FF_at_FTDS_div_32: signal is latched by 6 triggers at FDTS/32 clock frequency;
//  425   *           @arg TIMER_Filter_8FF_at_FTDS_div_32: signal is latched by 8 triggers at FDTS/32 clock frequency.
//  426   * @retval None
//  427   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  428 void TIMER_ETRInputConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler, uint32_t Polarity, uint32_t Filter)
//  429 {
TIMER_ETRInputConfig:
        PUSH     {R4,LR}
//  430   uint32_t tmpreg_BRKETR_CNTRL;
//  431 
//  432   /* Check the parameters */
//  433   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  434   assert_param(IS_TIMER_ETR_PRESCALER(Prescaler));
//  435   assert_param(IS_TIMER_ETR_POLARITY(Polarity));
//  436   assert_param(IS_TIMER_FILTER_CONF(Filter));
//  437 
//  438   tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
//  439   tmpreg_BRKETR_CNTRL &= ~(TIMER_BRKETR_CNTRL_ETR_PSC_Msk + TIMER_BRKETR_CNTRL_ETR_INV + TIMER_BRKETR_CNTRL_ETR_FILTER_Msk);
//  440   tmpreg_BRKETR_CNTRL += Prescaler + Polarity + (Filter << TIMER_BRKETR_CNTRL_ETR_FILTER_Pos);
//  441   TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
        LDR      R4,[R0, #+80]
        BIC      R4,R4,#0xFE
        ADDS     R1,R1,R4
        ADDS     R1,R2,R1
        ADD      R1,R1,R3, LSL #+4
        STR      R1,[R0, #+80]
//  442 }
        POP      {R4,PC}          ;; return
//  443 
//  444 /**
//  445   * @brief  Configures the TIMERx ETR Filter peripheral.
//  446   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  447   * @param  Filter: specifies the ETR Filter configuration.
//  448   *         This parameter can be one of the following values:
//  449   *           @arg TIMER_Filter_1FF_at_TIMER_CLK:   signal is latched by 1 trigger  at TIMER_CLK clock frequency;
//  450   *           @arg TIMER_Filter_2FF_at_TIMER_CLK:   signal is latched by 2 triggers at TIMER_CLK clock frequency;
//  451   *           @arg TIMER_Filter_4FF_at_TIMER_CLK:   signal is latched by 4 triggers at TIMER_CLK clock frequency;
//  452   *           @arg TIMER_Filter_8FF_at_TIMER_CLK:   signal is latched by 8 triggers at TIMER_CLK clock frequency;
//  453   *           @arg TIMER_Filter_6FF_at_FTDS_div_2:  signal is latched by 6 triggers at FDTS/2  clock frequency;
//  454   *           @arg TIMER_Filter_8FF_at_FTDS_div_2:  signal is latched by 8 triggers at FDTS/2  clock frequency;
//  455   *           @arg TIMER_Filter_6FF_at_FTDS_div_4:  signal is latched by 6 triggers at FDTS/4  clock frequency;
//  456   *           @arg TIMER_Filter_8FF_at_FTDS_div_4:  signal is latched by 8 triggers at FDTS/4  clock frequency;
//  457   *           @arg TIMER_Filter_6FF_at_FTDS_div_8:  signal is latched by 6 triggers at FDTS/8  clock frequency;
//  458   *           @arg TIMER_Filter_8FF_at_FTDS_div_8:  signal is latched by 8 triggers at FDTS/8  clock frequency;
//  459   *           @arg TIMER_Filter_5FF_at_FTDS_div_16: signal is latched by 5 triggers at FDTS/16 clock frequency;
//  460   *           @arg TIMER_Filter_6FF_at_FTDS_div_16: signal is latched by 6 triggers at FDTS/16 clock frequency;
//  461   *           @arg TIMER_Filter_8FF_at_FTDS_div_16: signal is latched by 8 triggers at FDTS/16 clock frequency;
//  462   *           @arg TIMER_Filter_5FF_at_FTDS_div_32: signal is latched by 5 triggers at FDTS/32 clock frequency;
//  463   *           @arg TIMER_Filter_6FF_at_FTDS_div_32: signal is latched by 6 triggers at FDTS/32 clock frequency;
//  464   *           @arg TIMER_Filter_8FF_at_FTDS_div_32: signal is latched by 8 triggers at FDTS/32 clock frequency.
//  465   * @retval None
//  466   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  467 void TIMER_ETRFilterConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Filter)
//  468 {
//  469   uint32_t tmpreg_BRKETR_CNTRL;
//  470 
//  471   /* Check the parameters */
//  472   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  473   assert_param(IS_TIMER_FILTER_CONF(Filter));
//  474 
//  475   tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
//  476   tmpreg_BRKETR_CNTRL &= ~TIMER_BRKETR_CNTRL_ETR_FILTER_Msk;
//  477   tmpreg_BRKETR_CNTRL += Filter << TIMER_BRKETR_CNTRL_ETR_FILTER_Pos;
//  478   TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
TIMER_ETRFilterConfig:
        LDR      R2,[R0, #+80]
        BIC      R2,R2,#0xF0
        ADD      R1,R2,R1, LSL #+4
        STR      R1,[R0, #+80]
//  479 }
        BX       LR               ;; return
//  480 
//  481 /**
//  482   * @brief  Configures the TIMERx ETR signal prescaler value.
//  483   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  484   * @param  Prescaler: specifies the ETR signal prescaler value.
//  485   *         This parameter can be one of the following values:
//  486   *           @arg TIMER_ETR_Prescaler_None : no division of input frequency;
//  487   *           @arg TIMER_ETR_Prescaler_div_2: selects input frequency divider by 2;
//  488   *           @arg TIMER_ETR_Prescaler_div_4: selects input frequency divider by 4;
//  489   *           @arg TIMER_ETR_Prescaler_div_8: selects input frequency divider by 8.
//  490   * @retval None
//  491   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  492 void TIMER_ETRPrescalerConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Prescaler)
//  493 {
//  494   uint32_t tmpreg_BRKETR_CNTRL;
//  495 
//  496   /* Check the parameters */
//  497   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  498   assert_param(IS_TIMER_ETR_PRESCALER(Prescaler));
//  499 
//  500   tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
//  501   tmpreg_BRKETR_CNTRL &= ~TIMER_BRKETR_CNTRL_ETR_PSC_Msk;
//  502   tmpreg_BRKETR_CNTRL += Prescaler;
//  503   TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
TIMER_ETRPrescalerConfig:
        LDR      R2,[R0, #+80]
        BIC      R2,R2,#0xC
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  504 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        ADDS     R1,R1,R2
        STR      R1,[R0, #+80]
        BX       LR               ;; return
//  505 
//  506 /**
//  507   * @brief  Configures the TIMERx ETR input inversion.
//  508   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  509   * @param  Polarity: enables or disables inversion on ETR input.
//  510   *         This parameter can be one of the following values:
//  511   *           @arg TIMER_ETRPolarity_NonInverted: no inversion of the ETR input;
//  512   *           @arg TIMER_ETRPolarity_Inverted:    the ETR input is inverted.
//  513   * @retval None
//  514   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  515 void TIMER_ETRPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Polarity)
//  516 {
//  517   uint32_t tmpreg_BRKETR_CNTRL;
//  518 
//  519   /* Check the parameters */
//  520   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  521   assert_param(IS_TIMER_ETR_POLARITY(Polarity));
//  522 
//  523   tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
//  524   tmpreg_BRKETR_CNTRL &= ~TIMER_BRKETR_CNTRL_ETR_INV;
//  525   tmpreg_BRKETR_CNTRL += Polarity;
//  526   TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
TIMER_ETRPolarityConfig:
        LDR      R2,[R0, #+80]
        BIC      R2,R2,#0x2
        B.N      ?Subroutine2
//  527 }
//  528 
//  529 /**
//  530   * @brief  Configures the TIMERx BRK input inversion.
//  531   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  532   * @param  Polarity: enables or disables inversion on BRK input.
//  533   *         This parameter can be one of the following values:
//  534   *           @arg TIMER_BRKPolarity_NonInverted: no inversion of the BRK input;
//  535   *           @arg TIMER_BRKPolarity_Inverted:    the BRK input is inverted.
//  536   * @retval None
//  537   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  538 void TIMER_BRKPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Polarity)
//  539 {
//  540   uint32_t tmpreg_BRKETR_CNTRL;
//  541 
//  542   /* Check the parameters */
//  543   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  544   assert_param(IS_TIMER_BRK_POLARITY(Polarity));
//  545 
//  546   tmpreg_BRKETR_CNTRL = TIMERx->BRKETR_CNTRL;
//  547   tmpreg_BRKETR_CNTRL &= ~TIMER_BRKETR_CNTRL_BRK_INV;
//  548   tmpreg_BRKETR_CNTRL += Polarity;
//  549   TIMERx->BRKETR_CNTRL = tmpreg_BRKETR_CNTRL;
TIMER_BRKPolarityConfig:
        LDR      R2,[R0, #+80]
        LSRS     R2,R2,#+1
        ADDS     R1,R1,R2, LSL #+1
        STR      R1,[R0, #+80]
//  550 }
        BX       LR               ;; return
//  551 
//  552 /**
//  553   * @brief  Returns the TIMERx count direction.
//  554   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  555   * @retval The current Timer count direction (TIMER_CntDir_Up or TIMER_CntDir_Dn)
//  556   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  557 uint32_t TIMER_GetCounterDirection(MDR_TIMER_TypeDef* TIMERx)
//  558 {
//  559   uint32_t bitstatus;
//  560 
//  561   /* Check the parameters */
//  562   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  563 
//  564   if ((TIMERx->CNTRL & TIMER_CNTRL_DIR) == 0)
TIMER_GetCounterDirection:
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+28
        BMI.N    ??TIMER_GetCounterDirection_0
//  565   {
//  566     bitstatus = TIMER_CntDir_Up;
        MOVS     R0,#+0
        BX       LR
//  567   }
//  568   else
//  569   {
//  570     bitstatus = TIMER_CntDir_Dn;
??TIMER_GetCounterDirection_0:
        MOVS     R0,#+8
//  571   }
//  572 
//  573   return bitstatus;
        BX       LR               ;; return
//  574 }
//  575 
//  576 /**
//  577   * @brief  Checks whether the TIMERx WR_CMPL flag is set or not.
//  578   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  579   * @retval The WR_CMPL flag current state (SET or RESET).
//  580   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  581 FlagStatus TIMER_GetCntWriteComplete(MDR_TIMER_TypeDef* TIMERx)
//  582 {
//  583   FlagStatus bitstatus;
//  584 
//  585   /* Check the parameters */
//  586   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  587 
//  588   if ((TIMERx->CNTRL & TIMER_CNTRL_WR_CMPL) == 0)
TIMER_GetCntWriteComplete:
        LDR      R0,[R0, #+12]
//  589   {
//  590     bitstatus = RESET;
//  591   }
//  592   else
//  593   {
//  594     bitstatus = SET;
//  595   }
//  596 
//  597   return bitstatus;
        LSRS     R0,R0,#+2
        B.N      ?Subroutine5
//  598 }
//  599 
//  600 /**
//  601   * @brief  Initializes the TIMERx Channel peripheral according to
//  602   *         the specified parameters in the TIMER_ChnInitStruct.
//  603   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  604   * @param  TIMER_ChnInitStruct: pointer to a TIMER_ChnInitTypeDef structure
//  605   *         that contains the configuration information for the specified
//  606   *         TIMER Channel peripheral.
//  607   * @retval None
//  608   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  609 void TIMER_ChnInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnInitTypeDef* TIMER_ChnInitStruct)
//  610 {
//  611   uint32_t tmpreg_CH_Number;
//  612   uint32_t tmpreg_CH_CNTRL;
//  613   uint32_t tmpreg_CH_CNTRL2;
//  614 
//  615   /* Check the parameters */
//  616   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  617   assert_param(IS_TIMER_CHANNEL_NUMBER(TIMER_ChnInitStruct->TIMER_CH_Number));
//  618   assert_param(IS_TIMER_CHANNEL_MODE(TIMER_ChnInitStruct->TIMER_CH_Mode));
//  619   assert_param(IS_FUNCTIONAL_STATE(TIMER_ChnInitStruct->TIMER_CH_ETR_Ena));
//  620   assert_param(IS_TIMER_CHANNEL_ETR_RESET_CONFIG(TIMER_ChnInitStruct->TIMER_CH_ETR_Reset));
//  621   assert_param(IS_TIMER_CHANNEL_BRK_RESET_CONFIG(TIMER_ChnInitStruct->TIMER_CH_BRK_Reset));
//  622   assert_param(IS_TIMER_CHANNEL_REF_FORMAT(TIMER_ChnInitStruct->TIMER_CH_REF_Format));
//  623   assert_param(IS_TIMER_CHANNEL_PRESCALER(TIMER_ChnInitStruct->TIMER_CH_Prescaler));
//  624   assert_param(IS_TIMER_CHANNEL_EVENT_SOURCE(TIMER_ChnInitStruct->TIMER_CH_EventSource));
//  625   assert_param(IS_TIMER_FILTER_CONF(TIMER_ChnInitStruct->TIMER_CH_FilterConf));
//  626   assert_param(IS_TIMER_CHANNEL_CCR_UPDATE_MODE(TIMER_ChnInitStruct->TIMER_CH_CCR_UpdateMode));
//  627   assert_param(IS_FUNCTIONAL_STATE(TIMER_ChnInitStruct->TIMER_CH_CCR1_Ena));
//  628   assert_param(IS_TIMER_CHANNEL_CCR1_EVENT_SOURCE(TIMER_ChnInitStruct->TIMER_CH_CCR1_EventSource));
//  629 
//  630   tmpreg_CH_CNTRL = TIMER_ChnInitStruct->TIMER_CH_Mode
//  631                   + TIMER_ChnInitStruct->TIMER_CH_ETR_Reset
//  632                   + TIMER_ChnInitStruct->TIMER_CH_BRK_Reset
//  633                   + TIMER_ChnInitStruct->TIMER_CH_REF_Format
//  634                   + (TIMER_ChnInitStruct->TIMER_CH_Prescaler << TIMER_CH_CNTRL_CHPSC_Pos)
//  635                   + TIMER_ChnInitStruct->TIMER_CH_EventSource
//  636                   + (TIMER_ChnInitStruct->TIMER_CH_FilterConf << TIMER_CH_CNTRL_CHFLTR_Pos);
TIMER_ChnInit:
        LDRH     R2,[R1, #+2]
        LDRH     R3,[R1, #+6]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+8]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+10]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+12]
        ADD      R2,R2,R3, LSL #+6
        LDRH     R3,[R1, #+14]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+16]
        ADDS     R2,R3,R2
//  637 
//  638   if (TIMER_ChnInitStruct->TIMER_CH_ETR_Ena != DISABLE)
        LDRH     R3,[R1, #+4]
        CBZ.N    R3,??TIMER_ChnInit_0
//  639   {
//  640     tmpreg_CH_CNTRL += TIMER_CH_CNTRL_ETREN;
        ADD      R2,R2,#+8192
//  641   }
//  642 
//  643   tmpreg_CH_Number = TIMER_ChnInitStruct->TIMER_CH_Number;
??TIMER_ChnInit_0:
        LDRH     R3,[R1, #+0]
//  644 
//  645   *(&TIMERx->CH1_CNTRL + tmpreg_CH_Number) = tmpreg_CH_CNTRL;
        ADD      R0,R0,R3, LSL #+2
        STR      R2,[R0, #+32]
//  646 
//  647   tmpreg_CH_CNTRL2 = TIMER_ChnInitStruct->TIMER_CH_CCR_UpdateMode
//  648                    + TIMER_ChnInitStruct->TIMER_CH_CCR1_EventSource;
        LDRH     R2,[R1, #+18]
        LDRH     R3,[R1, #+22]
        ADDS     R2,R3,R2
//  649 
//  650   if (TIMER_ChnInitStruct->TIMER_CH_CCR1_Ena != DISABLE)
        LDRH     R1,[R1, #+20]
        CBZ.N    R1,??TIMER_ChnInit_1
//  651   {
//  652     tmpreg_CH_CNTRL2 += TIMER_CH_CNTRL2_CCR1_EN;
        ADDS     R2,R2,#+4
//  653   }
//  654 
//  655   *(&TIMERx->CH1_CNTRL2 + tmpreg_CH_Number) = tmpreg_CH_CNTRL2;
??TIMER_ChnInit_1:
        STR      R2,[R0, #+96]
//  656 }
        BX       LR               ;; return
//  657 
//  658 /**
//  659   * @brief  Fills each TIMER_ChnInitStruct member with its default value.
//  660   * @param  TIMER_ChnInitStruct : pointer to a TIMER_ChnInitTypeDef structure
//  661   *         which will be initialized.
//  662   * @retval None
//  663   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  664 void TIMER_ChnStructInit(TIMER_ChnInitTypeDef* TIMER_ChnInitStruct)
TIMER_ChnStructInit:
        Nop      
//  665 {
//  666   TIMER_ChnInitStruct->TIMER_CH_Number           = TIMER_CHANNEL1;
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  667   TIMER_ChnInitStruct->TIMER_CH_Mode             = TIMER_CH_MODE_PWM;
        STRH     R1,[R0, #+2]
//  668   TIMER_ChnInitStruct->TIMER_CH_ETR_Ena          = DISABLE;
        STRH     R1,[R0, #+4]
//  669   TIMER_ChnInitStruct->TIMER_CH_ETR_Reset        = TIMER_CH_ETR_RESET_Disable;
        STRH     R1,[R0, #+6]
//  670   TIMER_ChnInitStruct->TIMER_CH_BRK_Reset        = TIMER_CH_BRK_RESET_Disable;
        STRH     R1,[R0, #+8]
//  671   TIMER_ChnInitStruct->TIMER_CH_REF_Format       = TIMER_CH_REF_Format0;
        STRH     R1,[R0, #+10]
//  672   TIMER_ChnInitStruct->TIMER_CH_Prescaler        = TIMER_CH_Prescaler_None;
        STRH     R1,[R0, #+12]
//  673   TIMER_ChnInitStruct->TIMER_CH_EventSource      = TIMER_CH_EvSrc_PE;
        STRH     R1,[R0, #+14]
//  674   TIMER_ChnInitStruct->TIMER_CH_FilterConf       = TIMER_Filter_1FF_at_TIMER_CLK;
        STRH     R1,[R0, #+16]
//  675   TIMER_ChnInitStruct->TIMER_CH_CCR_UpdateMode   = TIMER_CH_CCR_Update_Immediately;
        STRH     R1,[R0, #+18]
//  676   TIMER_ChnInitStruct->TIMER_CH_CCR1_Ena         = DISABLE;
        STRH     R1,[R0, #+20]
//  677   TIMER_ChnInitStruct->TIMER_CH_CCR1_EventSource = TIMER_CH_CCR1EvSrc_PE;
        STRH     R1,[R0, #+22]
//  678 }
        BX       LR               ;; return
//  679 
//  680 /**
//  681   * @brief  Sets the TIMERx Channel Capture Compare Register (CCR) value.
//  682   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  683   * @param  Channel: specifies the Timer Channel number.
//  684   *         This parameter can be one of the following values:
//  685   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  686   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  687   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  688   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  689   * @param  Compare: specifies the Capture Compare Register (CCR) new value.
//  690   * @retval None
//  691   */
//  692 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  693 void TIMER_SetChnCompare(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare)
//  694 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  695 void TIMER_SetChnCompare(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint16_t Compare)
//  696 #endif
//  697 {
//  698   __IO uint32_t *tmpreg_CCRx;
//  699 
//  700   /* Check the parameters */
//  701   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  702   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  703 
//  704   tmpreg_CCRx = &TIMERx->CCR1 + Channel;
//  705   *tmpreg_CCRx = Compare;
TIMER_SetChnCompare:
        ADD      R0,R0,R1, LSL #+2
        STR      R2,[R0, #+16]
//  706 }
        BX       LR               ;; return
//  707 
//  708 /**
//  709   * @brief  Sets the TIMERx Channel Capture Compare Register1 (CCR1) value.
//  710   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  711   * @param  Channel: specifies the Timer Channel number.
//  712   *         This parameter can be one of the following values:
//  713   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  714   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  715   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  716   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  717   * @param  Compare: specifies the Capture Compare Register1 (CCR1) new value.
//  718   * @retval None
//  719   */
//  720 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  721 void TIMER_SetChnCompare1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare)
//  722 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  723 void TIMER_SetChnCompare1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint16_t Compare)
//  724 #endif
//  725 {
//  726   __IO uint32_t *tmpreg_CCR1x;
//  727 
//  728   /* Check the parameters */
//  729   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  730   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  731 
//  732   tmpreg_CCR1x = &TIMERx->CCR11 + Channel;
//  733   *tmpreg_CCR1x = Compare;
TIMER_SetChnCompare1:
        ADD      R0,R0,R1, LSL #+2
        STR      R2,[R0, #+112]
//  734 }
        BX       LR               ;; return
//  735 
//  736 /**
//  737   * @brief  Sets the TIMERx Channel Capture Compare Register (CCR) value.
//  738   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  739   * @param  Channel: specifies the Timer Channel number.
//  740   *         This parameter can be one of the following values:
//  741   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  742   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  743   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  744   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  745   * @param  Compare: specifies the Capture Compare Register (CCR) new value.
//  746   * @param  UpdateMode: specifies the Capture Compare Register Update mode.
//  747   *         This parameter can be one of the following values:
//  748   *           @arg TIMER_CH_CCR_Update_Immediately: the CCR register is updated immediately;
//  749   *           @arg TIMER_CH_CCR_Update_On_CNT_eq_0: the CCR register is updated at (CNT == 0) condition.
//  750   * @retval None
//  751   */
//  752 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  753 void TIMER_ChnCompareConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare, uint32_t UpdateMode)
//  754 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  755 void TIMER_ChnCompareConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint16_t Compare, uint32_t UpdateMode)
//  756 #endif
//  757 {
TIMER_ChnCompareConfig:
        PUSH     {R4,LR}
//  758   __IO uint32_t *tmpreg_CNTRL2x;
//  759   __IO uint32_t *tmpreg_CCRx;
//  760   uint32_t tmpreg_CNTRL2;
//  761 
//  762   /* Check the parameters */
//  763   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  764   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  765   assert_param(IS_TIMER_ARR_UPDATE_MODE(UpdateMode));
//  766 
//  767   tmpreg_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;
        ADD      R0,R0,R1, LSL #+2
        ADD      R1,R0,#+96
//  768 
//  769   tmpreg_CNTRL2 = *tmpreg_CNTRL2x;
//  770   tmpreg_CNTRL2 &= ~TIMER_CH_CNTRL2_CCRRLD;
//  771   tmpreg_CNTRL2 += UpdateMode;
//  772   *tmpreg_CNTRL2x = tmpreg_CNTRL2;
        LDR      R4,[R1, #+0]
        BIC      R4,R4,#0x8
        ADDS     R3,R3,R4
        STR      R3,[R1, #+0]
//  773 
//  774   tmpreg_CCRx = &TIMERx->CCR1 + Channel;
//  775 
//  776   *tmpreg_CCRx = Compare;
        STR      R2,[R0, #+16]
//  777 }
        POP      {R4,PC}          ;; return
//  778 
//  779 /**
//  780   * @brief  Sets the TIMERx Channel Capture Compare Register1 (CCR1) value.
//  781   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  782   * @param  Channel: specifies the Timer Channel number.
//  783   *         This parameter can be one of the following values:
//  784   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  785   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  786   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  787   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  788   * @param  Compare: specifies the Capture Compare Register1 (CCR1) new value.
//  789   * @param  UpdateMode: specifies the Capture Compare Register1 Update mode.
//  790   *         This parameter can be one of the following values:
//  791   *           @arg TIMER_CH_CCR_Update_Immediately: the CCR1 register is updated immediately;
//  792   *           @arg TIMER_CH_CCR_Update_On_CNT_eq_0: the CCR1 register is updated at (CNT == 0) condition.
//  793   * @retval None
//  794   */
//  795 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  796 void TIMER_ChnCompare1Config(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Compare, uint32_t UpdateMode)
//  797 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  798 void TIMER_ChnCompare1Config(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint16_t Compare, uint32_t UpdateMode)
//  799 #endif
//  800 {
TIMER_ChnCompare1Config:
        PUSH     {R4,LR}
//  801   __IO uint32_t *tmpreg_CNTRL2x;
//  802   __IO uint32_t *tmpreg_CCR1x;
//  803   uint32_t tmpreg_CNTRL2;
//  804 
//  805   /* Check the parameters */
//  806   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  807   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  808   assert_param(IS_TIMER_ARR_UPDATE_MODE(UpdateMode));
//  809 
//  810   tmpreg_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;
        ADD      R0,R0,R1, LSL #+2
        ADD      R1,R0,#+96
//  811 
//  812   tmpreg_CNTRL2 = *tmpreg_CNTRL2x;
//  813   tmpreg_CNTRL2 &= ~TIMER_CH_CNTRL2_CCRRLD;
//  814   tmpreg_CNTRL2 += UpdateMode;
//  815   *tmpreg_CNTRL2x = tmpreg_CNTRL2;
        LDR      R4,[R1, #+0]
        BIC      R4,R4,#0x8
        ADDS     R3,R3,R4
        STR      R3,[R1, #+0]
//  816 
//  817   tmpreg_CCR1x = &TIMERx->CCR11 + Channel;
//  818 
//  819   *tmpreg_CCR1x = Compare;
        STR      R2,[R0, #+112]
//  820 }
        POP      {R4,PC}          ;; return
//  821 
//  822 /**
//  823   * @brief  Returns the TIMERx Channel Capture Compare Register (CCR) value.
//  824   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  825   * @param  Channel: specifies the Timer Channel number.
//  826   *         This parameter can be one of the following values:
//  827   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  828   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  829   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  830   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  831   * @retval Capture Compare Register (CCR) value.
//  832   */
//  833 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  834 uint32_t TIMER_GetChnCapture(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)
//  835 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  836 uint16_t TIMER_GetChnCapture(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)
//  837 #endif
//  838 {
//  839   __IO uint32_t *tmpreg_CCRx;
//  840   uint32_t tmpreg;
//  841 
//  842   /* Check the parameters */
//  843   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  844   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  845 
//  846   tmpreg_CCRx = &TIMERx->CCR1 + Channel;
//  847   tmpreg = *tmpreg_CCRx;
TIMER_GetChnCapture:
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+16]
//  848 
//  849   return tmpreg;
        UXTH     R0,R0
        BX       LR               ;; return
//  850 }
//  851 
//  852 /**
//  853   * @brief  Returns the TIMERx Channel Capture Compare Register1 (CCR1) value.
//  854   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  855   * @param  Channel: specifies the Timer Channel number.
//  856   *         This parameter can be one of the following values:
//  857   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  858   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  859   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  860   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  861   * @retval Capture Compare Register1 (CCR1) value.
//  862   */
//  863 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
//  864 uint32_t TIMER_GetChnCapture1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)
//  865 #elif defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  866 uint16_t TIMER_GetChnCapture1(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)
//  867 #endif
//  868 {
//  869   __IO uint32_t *tmpreg_CCR1x;
//  870   uint32_t tmpreg;
//  871 
//  872   /* Check the parameters */
//  873   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  874   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  875 
//  876   tmpreg_CCR1x = &TIMERx->CCR11 + Channel;
//  877   tmpreg = *tmpreg_CCR1x;
TIMER_GetChnCapture1:
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+112]
//  878 
//  879   return tmpreg;
        UXTH     R0,R0
        BX       LR               ;; return
//  880 }
//  881 
//  882 /**
//  883   * @brief  Enables or disables the TIMERx Channel ETR input.
//  884   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  885   * @param  Channel: specifies the Timer Channel number.
//  886   *         This parameter can be one of the following values:
//  887   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  888   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  889   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  890   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  891   * @param  NewState: new state of the ETR enable (OCCE) bit.
//  892   *         This parameter can be: ENABLE or DISABLE.
//  893   * @retval None
//  894   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  895 void TIMER_ChnETR_Cmd(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, FunctionalState NewState)
//  896 {
//  897   __IO uint32_t *tmpreg_CH_CNTRLx;
//  898   uint32_t tmpreg_CH_CNTRL;
//  899 
//  900   /* Check the parameters */
//  901   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  902   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  903   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  904 
//  905   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnETR_Cmd:
        ADD      R0,R0,R1, LSL #+2
//  906 
//  907   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
        LDR      R1,[R0, #+32]!
//  908 
//  909   /* Form new value */
//  910   if (NewState != DISABLE)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,#0x100
        BICEQ    R1,R1,#0x100
//  911   {
//  912     /* Enable TIMERx by setting the CNT_EN bit in the CNTRL register */
//  913     tmpreg_CH_CNTRL |= TIMER_CH_CNTRL_OCCE;
//  914   }
//  915   else
//  916   {
//  917     /* Disable TIMERx by resetting the CNT_EN bit in the CNTRL register */
//  918     tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_OCCE;
//  919   }
//  920 
//  921   /* Configure CNTRL register with new value */
//  922   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        STR      R1,[R0, #+0]
//  923 }
        BX       LR               ;; return
//  924 
//  925 /**
//  926   * @brief  Enables or disables TIMERx Channel ETR Reset.
//  927   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  928   * @param  Channel: specifies the Timer Channel number.
//  929   *         This parameter can be one of the following values:
//  930   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  931   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  932   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  933   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  934   * @param  NewState: new state of the ETR Reset enable.
//  935   *         This parameter can be one of the following values:
//  936   *           @arg TIMER_CH_ETR_RESET_Disable: disables ETR Reset;
//  937   *           @arg TIMER_CH_ETR_RESET_Enable:  enables ETR Reset.
//  938   * @retval None
//  939   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  940 void TIMER_ChnETRResetConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t NewState)
//  941 {
//  942   __IO uint32_t *tmpreg_CH_CNTRLx;
//  943   uint32_t tmpreg_CH_CNTRL;
//  944 
//  945   /* Check the parameters */
//  946   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  947   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  948   assert_param(IS_TIMER_CHANNEL_ETR_RESET_CONFIG(NewState));
//  949 
//  950   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnETRResetConfig:
        ADD      R0,R0,R1, LSL #+2
//  951 
//  952   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
//  953   tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_ETREN;
//  954   tmpreg_CH_CNTRL += NewState;
//  955   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        LDR      R1,[R0, #+32]!
        BIC      R1,R1,#0x2000
        B.N      ?Subroutine4
//  956 }
//  957 
//  958 /**
//  959   * @brief  Enables or disables TIMERx Channel BRK Reset.
//  960   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  961   * @param  Channel: specifies the Timer Channel number.
//  962   *         This parameter can be one of the following values:
//  963   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  964   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  965   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  966   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
//  967   * @param  NewState: new state of the BRK Reset enable.
//  968   *         This parameter can be one of the following values:
//  969   *           @arg TIMER_CH_BRK_RESET_Disable: disables BRK Reset;
//  970   *           @arg TIMER_CH_BRK_RESET_Enable:  enables BRK Reset.
//  971   * @retval None
//  972   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  973 void TIMER_ChnBRKResetConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t NewState)
//  974 {
//  975   __IO uint32_t *tmpreg_CH_CNTRLx;
//  976   uint32_t tmpreg_CH_CNTRL;
//  977 
//  978   /* Check the parameters */
//  979   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
//  980   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
//  981   assert_param(IS_TIMER_CHANNEL_BRK_RESET_CONFIG(NewState));
//  982 
//  983   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnBRKResetConfig:
        ADD      R0,R0,R1, LSL #+2
//  984 
//  985   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
//  986   tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_BRKEN;
//  987   tmpreg_CH_CNTRL += NewState;
//  988   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        LDR      R1,[R0, #+32]!
        BIC      R1,R1,#0x1000
        REQUIRE ?Subroutine4
        ;; // Fall through to label ?Subroutine4
//  989 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        ADDS     R1,R2,R1
        STR      R1,[R0, #+0]
        BX       LR               ;; return
//  990 
//  991 /**
//  992   * @brief  Configures the TIMERx REF signal format.
//  993   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
//  994   * @param  Channel: specifies the Timer Channel number.
//  995   *         This parameter can be one of the following values:
//  996   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
//  997   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
//  998   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
//  999   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1000   * @param  Format: new value of the TIMERx REF format.
// 1001   *         This parameter can be one of @ref TIMER_CH_REF_Format values.
// 1002   * @retval None
// 1003   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1004 void TIMER_ChnREFFormatConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Format)
// 1005 {
// 1006   __IO uint32_t *tmpreg_CH_CNTRLx;
// 1007   uint32_t tmpreg_CH_CNTRL;
// 1008 
// 1009   /* Check the parameters */
// 1010   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1011   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1012   assert_param(IS_TIMER_CHANNEL_REF_FORMAT(Format));
// 1013 
// 1014   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnREFFormatConfig:
        ADD      R0,R0,R1, LSL #+2
// 1015 
// 1016   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
// 1017   tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_OCCM_Msk;
// 1018   tmpreg_CH_CNTRL += Format;
// 1019   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        LDR      R1,[R0, #+32]!
        BIC      R1,R1,#0xE00
        B.N      ?Subroutine4
// 1020 }
// 1021 
// 1022 /**
// 1023   * @brief  Configures the TIMERx Capture prescaler value.
// 1024   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1025   * @param  Channel: specifies the Timer Channel number.
// 1026   *         This parameter can be one of the following values:
// 1027   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1028   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1029   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1030   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1031   * @param  Prescaler: specifies the Capture signal prescaler value.
// 1032   *         This parameter can be one of the following values:
// 1033   *           @arg TIMER_CH_Prescaler_None : no division of input frequency;
// 1034   *           @arg TIMER_CH_Prescaler_div_2: selects input frequency divider by 2;
// 1035   *           @arg TIMER_CH_Prescaler_div_4: selects input frequency divider by 4;
// 1036   *           @arg TIMER_CH_Prescaler_div_8: selects input frequency divider by 8.
// 1037   * @retval None
// 1038   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1039 void TIMER_ChnCapturePrescalerConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Prescaler)
// 1040 {
// 1041   __IO uint32_t *tmpreg_CH_CNTRLx;
// 1042   uint32_t tmpreg_CH_CNTRL;
// 1043 
// 1044   /* Check the parameters */
// 1045   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1046   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1047   assert_param(IS_TIMER_CHANNEL_PRESCALER(Prescaler));
// 1048 
// 1049   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnCapturePrescalerConfig:
        ADD      R0,R0,R1, LSL #+2
// 1050 
// 1051   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
// 1052   tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_CHPSC_Msk;
// 1053   tmpreg_CH_CNTRL += Prescaler << TIMER_CH_CNTRL_CHPSC_Pos;
// 1054   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        LDR      R1,[R0, #+32]!
        BIC      R1,R1,#0xC0
        ADD      R1,R1,R2, LSL #+6
        STR      R1,[R0, #+0]
// 1055 }
        BX       LR               ;; return
// 1056 
// 1057 /**
// 1058   * @brief  Configures the TIMERx Channel Capture Event source.
// 1059   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1060   * @param  Channel: specifies the Timer Channel number.
// 1061   *         This parameter can be one of the following values:
// 1062   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1063   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1064   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1065   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1066   * @param  EventSource: specifies the Event source.
// 1067   *         This parameter can be one of the following values:
// 1068   *           @arg TIMER_CH_EvSrc_PE:     selects positive edge from current TIMER channel;
// 1069   *           @arg TIMER_CH_EvSrc_NE:     selects negative edge from current TIMER channel;
// 1070   *           @arg TIMER_CH_EvSrc_PE_OC1: selects positive edge from other TIMER channel (variant 1);
// 1071   *           @arg TIMER_CH_EvSrc_PE_OC2: selects positive edge from other TIMER channel (variant 2).
// 1072   * @retval None
// 1073   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1074 void TIMER_ChnEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t EventSource)
// 1075 {
// 1076   __IO uint32_t *tmpreg_CH_CNTRLx;
// 1077   uint32_t tmpreg_CH_CNTRL;
// 1078 
// 1079   /* Check the parameters */
// 1080   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1081   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1082   assert_param(IS_TIMER_CHANNEL_EVENT_SOURCE(EventSource));
// 1083 
// 1084   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnEventSourceConfig:
        ADD      R0,R0,R1, LSL #+2
// 1085 
// 1086   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
// 1087   tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_CHSEL_Msk;
// 1088   tmpreg_CH_CNTRL += EventSource;
// 1089   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        LDR      R1,[R0, #+32]!
        BIC      R1,R1,#0x30
        B.N      ?Subroutine4
// 1090 }
// 1091 
// 1092 /**
// 1093   * @brief  Configures the TIMERx Channel Filter peripheral.
// 1094   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1095   * @param  Channel: specifies the Timer Channel number.
// 1096   *         This parameter can be one of the following values:
// 1097   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1098   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1099   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1100   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1101   * @param  Filter: specifies the Channel Filter configuration.
// 1102   *         This parameter can be one of the following values:
// 1103   *           @arg TIMER_Filter_1FF_at_TIMER_CLK:   signal is latched by 1 trigger  at TIMER_CLK clock frequency;
// 1104   *           @arg TIMER_Filter_2FF_at_TIMER_CLK:   signal is latched by 2 triggers at TIMER_CLK clock frequency;
// 1105   *           @arg TIMER_Filter_4FF_at_TIMER_CLK:   signal is latched by 4 triggers at TIMER_CLK clock frequency;
// 1106   *           @arg TIMER_Filter_8FF_at_TIMER_CLK:   signal is latched by 8 triggers at TIMER_CLK clock frequency;
// 1107   *           @arg TIMER_Filter_6FF_at_FTDS_div_2:  signal is latched by 6 triggers at FDTS/2  clock frequency;
// 1108   *           @arg TIMER_Filter_8FF_at_FTDS_div_2:  signal is latched by 8 triggers at FDTS/2  clock frequency;
// 1109   *           @arg TIMER_Filter_6FF_at_FTDS_div_4:  signal is latched by 6 triggers at FDTS/4  clock frequency;
// 1110   *           @arg TIMER_Filter_8FF_at_FTDS_div_4:  signal is latched by 8 triggers at FDTS/4  clock frequency;
// 1111   *           @arg TIMER_Filter_6FF_at_FTDS_div_8:  signal is latched by 6 triggers at FDTS/8  clock frequency;
// 1112   *           @arg TIMER_Filter_8FF_at_FTDS_div_8:  signal is latched by 8 triggers at FDTS/8  clock frequency;
// 1113   *           @arg TIMER_Filter_5FF_at_FTDS_div_16: signal is latched by 5 triggers at FDTS/16 clock frequency;
// 1114   *           @arg TIMER_Filter_6FF_at_FTDS_div_16: signal is latched by 6 triggers at FDTS/16 clock frequency;
// 1115   *           @arg TIMER_Filter_8FF_at_FTDS_div_16: signal is latched by 8 triggers at FDTS/16 clock frequency;
// 1116   *           @arg TIMER_Filter_5FF_at_FTDS_div_32: signal is latched by 5 triggers at FDTS/32 clock frequency;
// 1117   *           @arg TIMER_Filter_6FF_at_FTDS_div_32: signal is latched by 6 triggers at FDTS/32 clock frequency;
// 1118   *           @arg TIMER_Filter_8FF_at_FTDS_div_32: signal is latched by 8 triggers at FDTS/32 clock frequency.
// 1119   * @retval None
// 1120   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1121 void TIMER_ChnFilterConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Filter)
// 1122 {
// 1123   __IO uint32_t *tmpreg_CH_CNTRLx;
// 1124   uint32_t tmpreg_CH_CNTRL;
// 1125 
// 1126   /* Check the parameters */
// 1127   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1128   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1129   assert_param(IS_TIMER_FILTER_CONF(Filter));
// 1130 
// 1131   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
TIMER_ChnFilterConfig:
        ADD      R0,R0,R1, LSL #+2
// 1132 
// 1133   tmpreg_CH_CNTRL = *tmpreg_CH_CNTRLx;
// 1134   tmpreg_CH_CNTRL &= ~TIMER_CH_CNTRL_CHFLTR_Msk;
// 1135   tmpreg_CH_CNTRL += Filter << TIMER_CH_CNTRL_CHFLTR_Pos;
// 1136   *tmpreg_CH_CNTRLx = tmpreg_CH_CNTRL;
        LDR      R1,[R0, #+32]!
        LSRS     R1,R1,#+4
        ADDS     R1,R2,R1, LSL #+4
        STR      R1,[R0, #+0]
// 1137 }
        BX       LR               ;; return
// 1138 
// 1139 /**
// 1140   * @brief  Checks whether the TIMERx CCR (CCR1) writ operation is complete or not.
// 1141   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1142   * @param  Channel: specifies the Timer Channel number.
// 1143   *         This parameter can be one of the following values:
// 1144   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1145   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1146   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1147   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1148   * @retval The TIMERx_CHy_CNTRL.WR_CMPL flag current state (SET or RESET).
// 1149   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1150 FlagStatus TIMER_GetChnWriteComplete(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel)
// 1151 {
// 1152   __IO uint32_t *tmpreg_CH_CNTRLx;
// 1153   FlagStatus bitstatus;
// 1154 
// 1155   /* Check the parameters */
// 1156   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1157   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1158 
// 1159   tmpreg_CH_CNTRLx = &TIMERx->CH1_CNTRL + Channel;
// 1160 
// 1161   if ((*tmpreg_CH_CNTRLx & TIMER_CH_CNTRL_WR_CMPL) == 0)
TIMER_GetChnWriteComplete:
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+32]
// 1162   {
// 1163     bitstatus = RESET;
// 1164   }
// 1165   else
// 1166   {
// 1167     bitstatus = SET;
// 1168   }
// 1169 
// 1170   return bitstatus;
        LSRS     R0,R0,#+14
        REQUIRE ?Subroutine5
        ;; // Fall through to label ?Subroutine5
// 1171 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine5:
        AND      R0,R0,#0x1
        BX       LR               ;; return
// 1172 
// 1173 /**
// 1174   * @brief  Configures the TIMERx Channel Capture1 Event source.
// 1175   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1176   * @param  Channel: specifies the Timer Channel number.
// 1177   *         This parameter can be one of the following values:
// 1178   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1179   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1180   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1181   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1182   * @param  EventSource: specifies the Event source.
// 1183   *         This parameter can be one of the following values:
// 1184   *           @arg TIMER_CH_CCR1EvSrc_PE    : selects positive edge from current TIMER channel.
// 1185   *           @arg TIMER_CH_CCR1EvSrc_NE    : selects negative edge from current TIMER channel.
// 1186   *           @arg TIMER_CH_CCR1EvSrc_NE_OC1: selects negative edge from other TIMER channel (variant 1).
// 1187   *           @arg TIMER_CH_CCR1EvSrc_NE_OC2: selects negative edge from other TIMER channel (variant 2).
// 1188   * @retval None
// 1189   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1190 void TIMER_ChnCCR1_EventSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t EventSource)
// 1191 {
// 1192   __IO uint32_t *tmpreg_CH_CNTRL2x;
// 1193   uint32_t tmpreg_CH_CNTRL2;
// 1194 
// 1195   /* Check the parameters */
// 1196   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1197   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1198   assert_param(IS_TIMER_CHANNEL_CCR1_EVENT_SOURCE(EventSource));
// 1199 
// 1200   tmpreg_CH_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;
TIMER_ChnCCR1_EventSourceConfig:
        ADD      R0,R0,R1, LSL #+2
// 1201 
// 1202   tmpreg_CH_CNTRL2 = *tmpreg_CH_CNTRL2x;
// 1203   tmpreg_CH_CNTRL2 &= ~TIMER_CH_CNTRL2_CHSEL1_Msk;
// 1204   tmpreg_CH_CNTRL2 += EventSource;
// 1205   *tmpreg_CH_CNTRL2x = tmpreg_CH_CNTRL2;
        LDR      R1,[R0, #+96]!
        B.N      ?Subroutine1
// 1206 }
// 1207 
// 1208 /**
// 1209   * @brief  Enables or disables the TIMERx Channel CCR1 register.
// 1210   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1211   * @param  Channel: specifies the Timer Channel number.
// 1212   *         This parameter can be one of the following values:
// 1213   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1214   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1215   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1216   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1217   * @param  NewState: new state of the CCR1_EN bit.
// 1218   *         This parameter can be: ENABLE or DISABLE.
// 1219   * @retval None
// 1220   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1221 void TIMER_ChnCCR1_Cmd(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, FunctionalState NewState)
// 1222 {
// 1223   __IO uint32_t *tmpreg_CH_CNTRL2x;
// 1224   uint32_t tmpreg_CH_CNTRL2;
// 1225 
// 1226   /* Check the parameters */
// 1227   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1228   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1229   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1230 
// 1231   tmpreg_CH_CNTRL2x = &TIMERx->CH1_CNTRL2 + Channel;
TIMER_ChnCCR1_Cmd:
        ADD      R0,R0,R1, LSL #+2
// 1232 
// 1233   tmpreg_CH_CNTRL2 = *tmpreg_CH_CNTRL2x;
        LDR      R1,[R0, #+96]!
// 1234 
// 1235   /* Form new value */
// 1236   if (NewState != DISABLE)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,#0x4
        BICEQ    R1,R1,#0x4
// 1237   {
// 1238     /* Enable TIMERx by setting the CCR1_EN bit in the CNTRL2 register */
// 1239     tmpreg_CH_CNTRL2 |= TIMER_CH_CNTRL2_CCR1_EN;
// 1240   }
// 1241   else
// 1242   {
// 1243     /* Disable TIMERx by resetting the CCR1_EN bit in the CNTRL2 register */
// 1244     tmpreg_CH_CNTRL2 &= ~TIMER_CH_CNTRL2_CCR1_EN;
// 1245   }
// 1246 
// 1247   /* Configure CNTRL register with new value */
// 1248   *tmpreg_CH_CNTRL2x = tmpreg_CH_CNTRL2;
        STR      R1,[R0, #+0]
// 1249 }
        BX       LR               ;; return
// 1250 
// 1251 /**
// 1252   * @brief  Initializes the TIMERx Channel Output peripheral according to
// 1253   *         the specified parameters in the TIMER_ChnOutInitStruct.
// 1254   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1255   * @param  TIMER_ChnOutInitStruct: pointer to a TIMER_ChnOutInitTypeDef structure
// 1256   *         that contains the configuration information for the specified
// 1257   *         TIMER Channel peripheral.
// 1258   * @retval None
// 1259   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1260 void TIMER_ChnOutInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct)
// 1261 {
// 1262   uint32_t tmpreg_CH_Number;
// 1263   uint32_t tmpreg_CH_CNTRL1;
// 1264   uint32_t tmpreg_CH_DTG;
// 1265 
// 1266   /* Check the parameters */
// 1267   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1268   assert_param(IS_TIMER_CHANNEL_NUMBER(TIMER_ChnOutInitStruct->TIMER_CH_Number));
// 1269   assert_param(IS_TIMER_CHO_POLARITY(TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Polarity));
// 1270   assert_param(IS_TIMER_CHO_SOURCE(TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Source));
// 1271   assert_param(IS_TIMER_CHO_MODE(TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Mode));
// 1272   assert_param(IS_TIMER_CHO_POLARITY(TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Polarity));
// 1273   assert_param(IS_TIMER_CHO_SOURCE(TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Source));
// 1274   assert_param(IS_TIMER_CHO_MODE(TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Mode));
// 1275   assert_param(IS_TIMER_CHANNEL_DTG_MAIN_PRESCALER(TIMER_ChnOutInitStruct->TIMER_CH_DTG_MainPrescaler));
// 1276   assert_param(IS_TIMER_CHANNEL_DTG_AUX_PRESCALER(TIMER_ChnOutInitStruct->TIMER_CH_DTG_AuxPrescaler));
// 1277   assert_param(IS_TIMER_CHANNEL_DTG_CLK_SOURCE(TIMER_ChnOutInitStruct->TIMER_CH_DTG_ClockSource));
// 1278 
// 1279   tmpreg_CH_CNTRL1 = (TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Polarity << TIMER_CH_CNTRL1_INV_Pos)
// 1280                    + (TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Source   << TIMER_CH_CNTRL1_SELO_Pos)
// 1281                    + (TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Mode     << TIMER_CH_CNTRL1_SELOE_Pos)
// 1282                    + (TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Polarity << TIMER_CH_CNTRL1_NINV_Pos)
// 1283                    + (TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Source   << TIMER_CH_CNTRL1_NSELO_Pos)
// 1284                    + (TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Mode     << TIMER_CH_CNTRL1_NSELOE_Pos);
// 1285 
// 1286   tmpreg_CH_Number = TIMER_ChnOutInitStruct->TIMER_CH_Number;
TIMER_ChnOutInit:
        LDRH     R2,[R1, #+0]
// 1287 
// 1288   *(&TIMERx->CH1_CNTRL1 + tmpreg_CH_Number) = tmpreg_CH_CNTRL1;
        ADD      R0,R0,R2, LSL #+2
        LDRH     R2,[R1, #+2]
        LDRH     R3,[R1, #+4]
        LSLS     R3,R3,#+2
        ADD      R2,R3,R2, LSL #+4
        LDRH     R3,[R1, #+6]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+8]
        ADD      R2,R2,R3, LSL #+12
        LDRH     R3,[R1, #+10]
        ADD      R2,R2,R3, LSL #+10
        LDRH     R3,[R1, #+12]
        ADD      R2,R2,R3, LSL #+8
        STR      R2,[R0, #+48]
// 1289 
// 1290   tmpreg_CH_DTG = (TIMER_ChnOutInitStruct->TIMER_CH_DTG_MainPrescaler << TIMER_CH_DTG_Pos)
// 1291                 + (TIMER_ChnOutInitStruct->TIMER_CH_DTG_AuxPrescaler  << TIMER_CH_DTGX_Pos)
// 1292                 + TIMER_ChnOutInitStruct->TIMER_CH_DTG_ClockSource;
// 1293 
// 1294   *(&TIMERx->CH1_DTG + tmpreg_CH_Number) = tmpreg_CH_DTG;
        LDRH     R2,[R1, #+14]
        LDRH     R3,[R1, #+16]
        ADD      R2,R3,R2, LSL #+8
        LDRH     R1,[R1, #+18]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+64]
// 1295 }
        BX       LR               ;; return
// 1296 
// 1297 /**
// 1298   * @brief  Fills each TIMER_ChnOutInitStruct member with its default value.
// 1299   * @param  TIMER_ChnOutInitStruct: pointer to a TIMER_ChnOutInitTypeDef structure
// 1300   *         which will be initialized.
// 1301   * @retval None
// 1302   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1303 void TIMER_ChnOutStructInit(TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct)
// 1304 {
// 1305   TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Polarity   = TIMER_CHOPolarity_NonInverted;
TIMER_ChnOutStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
// 1306   TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Source     = TIMER_CH_OutSrc_Only_0;
        STRH     R1,[R0, #+4]
// 1307   TIMER_ChnOutInitStruct->TIMER_CH_DirOut_Mode       = TIMER_CH_OutMode_Input;
        STRH     R1,[R0, #+6]
// 1308   TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Polarity   = TIMER_CHOPolarity_NonInverted;
        STRH     R1,[R0, #+8]
// 1309   TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Source     = TIMER_CH_OutSrc_Only_0;
        STRH     R1,[R0, #+10]
// 1310   TIMER_ChnOutInitStruct->TIMER_CH_NegOut_Mode       = TIMER_CH_OutMode_Input;
        STRH     R1,[R0, #+12]
// 1311   TIMER_ChnOutInitStruct->TIMER_CH_DTG_MainPrescaler = 0;
        STRH     R1,[R0, #+14]
// 1312   TIMER_ChnOutInitStruct->TIMER_CH_DTG_AuxPrescaler  = 0;
        STRH     R1,[R0, #+16]
// 1313   TIMER_ChnOutInitStruct->TIMER_CH_DTG_ClockSource   = TIMER_CH_DTG_ClkSrc_TIMER_CLK;
        STRH     R1,[R0, #+18]
// 1314 }
        BX       LR               ;; return
// 1315 
// 1316 /**
// 1317   * @brief  Configures the TIMERx Channel output.
// 1318   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1319   * @param  Channel: specifies the Timer Channel number.
// 1320   *         This parameter can be one of the following values:
// 1321   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1322   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1323   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1324   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1325   * @param  OutSource: specifies the Channel Output source.
// 1326   *         This parameter can be one of the following values:
// 1327   *           @arg TIMER_CH_OutSrc_Only_0: selects the '0' state on the CHx line;
// 1328   *           @arg TIMER_CH_OutSrc_Only_1: selects the '1' state on the CHx line;
// 1329   *           @arg TIMER_CH_OutSrc_REF:    selects the REF state on the CHx line;
// 1330   *           @arg TIMER_CH_OutSrc_DTG:    selects the DTG output state on the CHx line.
// 1331   * @param  Mode: specifies the Channel Output Enable source.
// 1332   *         This parameter can be one of the following values:
// 1333   *           @arg TIMER_CH_OutMode_Input:     selects the Input mode on the CHx line;
// 1334   *           @arg TIMER_CH_OutMode_Output:    selects the Output mode on the CHx line;
// 1335   *           @arg TIMER_CH_OutMode_REF_as_OE: the REF signal specifies the CHx line mode;
// 1336   *           @arg TIMER_CH_OutMode_DTG_as_OE: the DTG output specifies the CHx line mode.
// 1337   * @param  Polarity: enables or disables the Channel Output inversion.
// 1338   *         This parameter can be one of the following values:
// 1339   *           @arg TIMER_CHOPolarity_NonInverted: no inversion on the Channel output;
// 1340   *           @arg TIMER_CHOPolarity_Inverted:    the Channel output is inverted.
// 1341   * @retval None
// 1342   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1343 void TIMER_ChnOutConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource, uint32_t Mode, uint32_t Polarity)
// 1344 {
TIMER_ChnOutConfig:
        PUSH     {R4,LR}
        LDR      R4,[SP, #+8]
// 1345   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1346   uint32_t tmpreg_CH_CNTRL1;
// 1347 
// 1348   /* Check the parameters */
// 1349   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1350   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1351   assert_param(IS_TIMER_CHO_SOURCE(OutSource));
// 1352   assert_param(IS_TIMER_CHO_MODE(Mode));
// 1353   assert_param(IS_TIMER_CHO_POLARITY(Polarity));
// 1354 
// 1355   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
        ADD      R0,R0,R1, LSL #+2
// 1356 
// 1357   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1358   tmpreg_CH_CNTRL1 &= ~(TIMER_CH_CNTRL1_INV + TIMER_CH_CNTRL1_SELO_Msk + TIMER_CH_CNTRL1_SELOE_Msk);
// 1359   tmpreg_CH_CNTRL1 += (Polarity  << TIMER_CH_CNTRL1_INV_Pos)
// 1360                     + (OutSource << TIMER_CH_CNTRL1_SELO_Pos)
// 1361                     + (Mode      << TIMER_CH_CNTRL1_SELOE_Pos);
// 1362   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        LSRS     R1,R1,#+5
        LSLS     R1,R1,#+5
        ADD      R1,R1,R4, LSL #+4
        ADD      R1,R1,R2, LSL #+2
        ADDS     R1,R3,R1
        STR      R1,[R0, #+0]
// 1363 }
        POP      {R4,PC}          ;; return
// 1364 
// 1365 /**
// 1366   * @brief  Configures the TIMERx Channel Output source.
// 1367   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1368   * @param  Channel: specifies the Timer Channel number.
// 1369   *         This parameter can be one of the following values:
// 1370   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1371   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1372   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1373   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1374   * @param  OutSource: specifies the Channel Output source.
// 1375   *         This parameter can be one of the following values:
// 1376   *           @arg TIMER_CH_OutSrc_Only_0: selects the '0' state on the CHx line;
// 1377   *           @arg TIMER_CH_OutSrc_Only_1: selects the '1' state on the CHx line;
// 1378   *           @arg TIMER_CH_OutSrc_REF:    selects the REF state on the CHx line;
// 1379   *           @arg TIMER_CH_OutSrc_DTG:    selects the DTG output state on the CHx line.
// 1380   * @retval None
// 1381   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1382 void TIMER_ChnOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource)
// 1383 {
// 1384   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1385   uint32_t tmpreg_CH_CNTRL1;
// 1386 
// 1387   /* Check the parameters */
// 1388   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1389   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1390   assert_param(IS_TIMER_CHO_SOURCE(OutSource));
// 1391 
// 1392   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
TIMER_ChnOutSourceConfig:
        ADD      R0,R0,R1, LSL #+2
// 1393 
// 1394   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1395   tmpreg_CH_CNTRL1 &= ~TIMER_CH_CNTRL1_SELO_Msk;
// 1396   tmpreg_CH_CNTRL1 += OutSource << TIMER_CH_CNTRL1_SELO_Pos;
// 1397   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        BIC      R1,R1,#0xC
        ADD      R1,R1,R2, LSL #+2
        STR      R1,[R0, #+0]
// 1398 }
        BX       LR               ;; return
// 1399 
// 1400 /**
// 1401   * @brief  Configures the TIMERx Channel Output mode.
// 1402   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1403   * @param  Channel: specifies the Timer Channel number.
// 1404   *         This parameter can be one of the following values:
// 1405   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1406   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1407   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1408   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1409   * @param  Mode: specifies the Channel Output Enable source.
// 1410   *         This parameter can be one of the following values:
// 1411   *           @arg TIMER_CH_OutMode_Input:     selects the Input mode on the CHx line;
// 1412   *           @arg TIMER_CH_OutMode_Output:    selects the Output mode on the CHx line;
// 1413   *           @arg TIMER_CH_OutMode_REF_as_OE: the REF signal specifies the CHx line mode;
// 1414   *           @arg TIMER_CH_OutMode_DTG_as_OE: the DTG output specifies the CHx line mode.
// 1415   * @retval None
// 1416   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1417 void TIMER_ChnOutModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Mode)
// 1418 {
// 1419   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1420   uint32_t tmpreg_CH_CNTRL1;
// 1421 
// 1422   /* Check the parameters */
// 1423   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1424   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1425   assert_param(IS_TIMER_CHO_MODE(Mode));
// 1426 
// 1427   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
TIMER_ChnOutModeConfig:
        ADD      R0,R0,R1, LSL #+2
// 1428 
// 1429   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1430   tmpreg_CH_CNTRL1 &= ~TIMER_CH_CNTRL1_SELOE_Msk;
// 1431   tmpreg_CH_CNTRL1 += Mode << TIMER_CH_CNTRL1_SELOE_Pos;
// 1432   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1433 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        LSRS     R1,R1,#+2
        ADDS     R1,R2,R1, LSL #+2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
// 1434 
// 1435 /**
// 1436   * @brief  Configures the TIMERx Channel Output polarity.
// 1437   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1438   * @param  Channel: specifies the Timer Channel number.
// 1439   *         This parameter can be one of the following values:
// 1440   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1441   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1442   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1443   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1444   * @param  Polarity: enables or disables the Channel Output inversion.
// 1445   *         This parameter can be one of the following values:
// 1446   *           @arg TIMER_CHOPolarity_NonInverted: no inversion on the Channel output;
// 1447   *           @arg TIMER_CHOPolarity_Inverted:    the Channel output is inverted.
// 1448   * @retval None
// 1449   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1450 void TIMER_ChnOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Polarity)
// 1451 {
// 1452   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1453   uint32_t tmpreg_CH_CNTRL1;
// 1454 
// 1455   /* Check the parameters */
// 1456   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1457   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1458   assert_param(IS_TIMER_CHO_POLARITY(Polarity));
// 1459 
// 1460   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
TIMER_ChnOutPolarityConfig:
        ADD      R0,R0,R1, LSL #+2
// 1461 
// 1462   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1463   tmpreg_CH_CNTRL1 &= ~TIMER_CH_CNTRL1_INV;
// 1464   tmpreg_CH_CNTRL1 += Polarity << TIMER_CH_CNTRL1_INV_Pos;
// 1465   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        BIC      R1,R1,#0x10
        ADD      R1,R1,R2, LSL #+4
        STR      R1,[R0, #+0]
// 1466 }
        BX       LR               ;; return
// 1467 
// 1468 /**
// 1469   * @brief  Configures the TIMERx NChannel output.
// 1470   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1471   * @param  Channel: specifies the Timer Channel number.
// 1472   *         This parameter can be one of the following values:
// 1473   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1474   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1475   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1476   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1477   * @param  OutSource: specifies the NChannel Output source.
// 1478   *         This parameter can be one of the following values:
// 1479   *           @arg TIMER_CH_OutSrc_Only_0: selects the '0' state on the CHxN line;
// 1480   *           @arg TIMER_CH_OutSrc_Only_1: selects the '1' state on the CHxN line;
// 1481   *           @arg TIMER_CH_OutSrc_REF:    selects the REF state on the CHxN line;
// 1482   *           @arg TIMER_CH_OutSrc_DTG:    selects the DTG output state on the CHxN line.
// 1483   * @param  Mode: specifies the NChannel Output Enable source.
// 1484   *         This parameter can be one of the following values:
// 1485   *           @arg TIMER_CH_OutMode_Input:     selects the Input mode on the CHxN line;
// 1486   *           @arg TIMER_CH_OutMode_Output:    selects the Output mode on the CHxN line;
// 1487   *           @arg TIMER_CH_OutMode_REF_as_OE: the REF signal specifies the CHxN line mode;
// 1488   *           @arg TIMER_CH_OutMode_DTG_as_OE: the DTG output specifies the CHxN line mode.
// 1489   * @param  Polarity: enables or disables the NChannel Output inversion.
// 1490   *         This parameter can be one of the following values:
// 1491   *           @arg TIMER_CHOPolarity_NonInverted: no inversion on the NChannel output;
// 1492   *           @arg TIMER_CHOPolarity_Inverted:    the NChannel output is inverted.
// 1493   * @retval None
// 1494   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1495 void TIMER_ChnNOutConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource, uint32_t Mode, uint32_t Polarity)
// 1496 {
TIMER_ChnNOutConfig:
        PUSH     {R4,LR}
        LDR      R4,[SP, #+8]
// 1497   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1498   uint32_t tmpreg_CH_CNTRL1;
// 1499 
// 1500   /* Check the parameters */
// 1501   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1502   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1503   assert_param(IS_TIMER_CHO_SOURCE(OutSource));
// 1504   assert_param(IS_TIMER_CHO_MODE(Mode));
// 1505   assert_param(IS_TIMER_CHO_POLARITY(Polarity));
// 1506 
// 1507   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
        ADD      R0,R0,R1, LSL #+2
// 1508 
// 1509   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1510   tmpreg_CH_CNTRL1 &= ~(TIMER_CH_CNTRL1_NINV + TIMER_CH_CNTRL1_NSELO_Msk + TIMER_CH_CNTRL1_NSELOE_Msk);
// 1511   tmpreg_CH_CNTRL1 += (Polarity  << TIMER_CH_CNTRL1_NINV_Pos)
// 1512                     + (OutSource << TIMER_CH_CNTRL1_NSELO_Pos)
// 1513                     + (Mode      << TIMER_CH_CNTRL1_NSELOE_Pos);
// 1514   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        BIC      R1,R1,#0x1F00
        ADD      R1,R1,R4, LSL #+12
        ADD      R1,R1,R2, LSL #+10
        ADD      R1,R1,R3, LSL #+8
        STR      R1,[R0, #+0]
// 1515 }
        POP      {R4,PC}          ;; return
// 1516 
// 1517 /**
// 1518   * @brief  Configures the TIMERx NChannel Output source.
// 1519   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1520   * @param  Channel: specifies the Timer Channel number.
// 1521   *         This parameter can be one of the following values:
// 1522   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1523   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1524   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1525   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1526   * @param  OutSource: specifies the NChannel Output source.
// 1527   *         This parameter can be one of the following values:
// 1528   *           @arg TIMER_CH_OutSrc_Only_0: selects the '0' state on the CHxN line;
// 1529   *           @arg TIMER_CH_OutSrc_Only_1: selects the '1' state on the CHxN line;
// 1530   *           @arg TIMER_CH_OutSrc_REF:    selects the REF state on the CHxN line;
// 1531   *           @arg TIMER_CH_OutSrc_DTG:    selects the DTG output state on the CHxN line.
// 1532   * @retval None
// 1533   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1534 void TIMER_ChnNOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t OutSource)
// 1535 {
// 1536   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1537   uint32_t tmpreg_CH_CNTRL1;
// 1538 
// 1539   /* Check the parameters */
// 1540   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1541   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1542   assert_param(IS_TIMER_CHO_SOURCE(OutSource));
// 1543 
// 1544   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
TIMER_ChnNOutSourceConfig:
        ADD      R0,R0,R1, LSL #+2
// 1545 
// 1546   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1547   tmpreg_CH_CNTRL1 &= ~TIMER_CH_CNTRL1_NSELO_Msk;
// 1548   tmpreg_CH_CNTRL1 += OutSource << TIMER_CH_CNTRL1_NSELO_Pos;
// 1549   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        BIC      R1,R1,#0xC00
        ADD      R1,R1,R2, LSL #+10
        STR      R1,[R0, #+0]
// 1550 }
        BX       LR               ;; return
// 1551 
// 1552 /**
// 1553   * @brief  Configures the TIMERx NChannel Output mode.
// 1554   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1555   * @param  Channel: specifies the Timer Channel number.
// 1556   *         This parameter can be one of the following values:
// 1557   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1558   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1559   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1560   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1561   * @param  Mode: specifies the NChannel Output Enable source.
// 1562   *         This parameter can be one of the following values:
// 1563   *           @arg TIMER_CH_OutMode_Input:     selects the Input mode on the CHxN line;
// 1564   *           @arg TIMER_CH_OutMode_Output:    selects the Output mode on the CHxN line;
// 1565   *           @arg TIMER_CH_OutMode_REF_as_OE: the REF signal specifies the CHxN line mode;
// 1566   *           @arg TIMER_CH_OutMode_DTG_as_OE: the DTG output specifies the CHxN line mode.
// 1567   * @retval None
// 1568   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1569 void TIMER_ChnNOutModeConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Mode)
// 1570 {
// 1571   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1572   uint32_t tmpreg_CH_CNTRL1;
// 1573 
// 1574   /* Check the parameters */
// 1575   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1576   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1577   assert_param(IS_TIMER_CHO_MODE(Mode));
// 1578 
// 1579   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
TIMER_ChnNOutModeConfig:
        ADD      R0,R0,R1, LSL #+2
// 1580 
// 1581   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1582   tmpreg_CH_CNTRL1 &= ~TIMER_CH_CNTRL1_NSELOE_Msk;
// 1583   tmpreg_CH_CNTRL1 += Mode << TIMER_CH_CNTRL1_NSELOE_Pos;
// 1584   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        BIC      R1,R1,#0x300
        ADD      R1,R1,R2, LSL #+8
        STR      R1,[R0, #+0]
// 1585 }
        BX       LR               ;; return
// 1586 
// 1587 /**
// 1588   * @brief  Configures the TIMERx NChannel Output polarity.
// 1589   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1590   * @param  Channel: specifies the Timer Channel number.
// 1591   *         This parameter can be one of the following values:
// 1592   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1593   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1594   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1595   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1596   * @param  Polarity: enables or disables the NChannel Output inversion.
// 1597   *         This parameter can be one of the following values:
// 1598   *           @arg TIMER_CHOPolarity_NonInverted: no inversion on the NChannel output;
// 1599   *           @arg TIMER_CHOPolarity_Inverted:    the NChannel output is inverted.
// 1600   * @retval None
// 1601   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1602 void TIMER_ChnNOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel, uint32_t Polarity)
// 1603 {
// 1604   __IO uint32_t *tmpreg_CH_CNTRL1x;
// 1605   uint32_t tmpreg_CH_CNTRL1;
// 1606 
// 1607   /* Check the parameters */
// 1608   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1609   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1610   assert_param(IS_TIMER_CHO_POLARITY(Polarity));
// 1611 
// 1612   tmpreg_CH_CNTRL1x = &TIMERx->CH1_CNTRL1 + Channel;
TIMER_ChnNOutPolarityConfig:
        ADD      R0,R0,R1, LSL #+2
// 1613 
// 1614   tmpreg_CH_CNTRL1 = *tmpreg_CH_CNTRL1x;
// 1615   tmpreg_CH_CNTRL1 &= ~TIMER_CH_CNTRL1_NINV;
// 1616   tmpreg_CH_CNTRL1 += Polarity << TIMER_CH_CNTRL1_NINV_Pos;
// 1617   *tmpreg_CH_CNTRL1x = tmpreg_CH_CNTRL1;
        LDR      R1,[R0, #+48]!
        BIC      R1,R1,#0x1000
        ADD      R1,R1,R2, LSL #+12
        STR      R1,[R0, #+0]
// 1618 }
        BX       LR               ;; return
// 1619 
// 1620 /**
// 1621   * @brief  Configures the TIMERx Dead Time Generator (DTG) peripheral.
// 1622   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1623   * @param  Channel: specifies the Timer Channel number.
// 1624   *         This parameter can be one of the following values:
// 1625   *           @arg TIMER_CHANNEL1: specifies TIMERx Channel 1;
// 1626   *           @arg TIMER_CHANNEL2: specifies TIMERx Channel 2;
// 1627   *           @arg TIMER_CHANNEL3: specifies TIMERx Channel 3;
// 1628   *           @arg TIMER_CHANNEL4: specifies TIMERx Channel 4.
// 1629   * @param  MainPrescaler: specifies the Main Prescaler value.
// 1630   *         This parameter can be a number between 0x0000 and 0x00FF.
// 1631   * @param  AuxPrescaler: specifies the Auxiliary Prescaler value.
// 1632   *         This parameter can be a number between 0x0000 and 0x000F.
// 1633   * @param  ClockSource: specifies the DTG clock source.
// 1634   *         This parameter can be one of the following values:
// 1635   *           @arg TIMER_CH_DTG_ClkSrc_TIMER_CLK: specifies the TIMER_CLK signal as DTG clock source;
// 1636   *           @arg TIMER_CH_DTG_ClkSrc_FDTS:      specifies the FDTS signal as DTG clock source.
// 1637   * @retval None
// 1638   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1639 void TIMER_ChnOutDTGConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t Channel,
// 1640                          uint32_t MainPrescaler, uint32_t AuxPrescaler, uint32_t ClockSource)
// 1641 {
TIMER_ChnOutDTGConfig:
        PUSH     {R4,LR}
        LDR      R4,[SP, #+8]
// 1642   uint32_t tmpreg_CH_DTG;
// 1643 
// 1644   /* Check the parameters */
// 1645   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1646   assert_param(IS_TIMER_CHANNEL_NUMBER(Channel));
// 1647   assert_param(IS_TIMER_CHANNEL_DTG_MAIN_PRESCALER(MainPrescaler));
// 1648   assert_param(IS_TIMER_CHANNEL_DTG_AUX_PRESCALER(AuxPrescaler));
// 1649   assert_param(IS_TIMER_CHANNEL_DTG_CLK_SOURCE(ClockSource));
// 1650 
// 1651   tmpreg_CH_DTG = (MainPrescaler << TIMER_CH_DTG_Pos)
// 1652                 + (AuxPrescaler  << TIMER_CH_DTGX_Pos)
// 1653                 + ClockSource;
// 1654 
// 1655   *(&TIMERx->CH1_DTG + Channel) = tmpreg_CH_DTG;
        ADD      R2,R3,R2, LSL #+8
        ADDS     R2,R4,R2
        ADD      R0,R0,R1, LSL #+2
        STR      R2,[R0, #+64]
// 1656 }
        POP      {R4,PC}          ;; return
// 1657 
// 1658 /**
// 1659   * @brief  Returns the TIMERx Status Register value.
// 1660   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1661   * @retval The TIMERx_STATUS Register value.
// 1662   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1663 uint32_t TIMER_GetStatus(MDR_TIMER_TypeDef* TIMERx)
// 1664 {
// 1665   /* Check the parameters */
// 1666   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1667 
// 1668   return (TIMERx->STATUS);
TIMER_GetStatus:
        LDR      R0,[R0, #+84]
        BX       LR               ;; return
// 1669 }
// 1670 
// 1671 /**
// 1672   * @brief  Checks whether the specified TIMERx Status flag is set or not.
// 1673   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1674   * @param  Flag: specifies the flag to check.
// 1675   *         This parameter can be one of the following values:
// 1676   *           @arg TIMER_STATUS_CNT_ZERO:         the (CNT == 0) condition occured;
// 1677   *           @arg TIMER_STATUS_CNT_ARR:          the (CNT == ARR) condition occured;
// 1678   *           @arg TIMER_STATUS_ETR_RISING_EDGE:  the ETR rising edge occured;
// 1679   *           @arg TIMER_STATUS_ETR_FALLING_EDGE: the ETR falling edge occured;
// 1680   *           @arg TIMER_STATUS_BRK:              the (BRK == 1) condition occured;
// 1681   *           @arg TIMER_STATUS_CCR_CAP_CH1:      the Channel 1 CCR capture condition occured;
// 1682   *           @arg TIMER_STATUS_CCR_CAP_CH2:      the Channel 2 CCR capture condition occured;
// 1683   *           @arg TIMER_STATUS_CCR_CAP_CH3:      the Channel 3 CCR capture condition occured;
// 1684   *           @arg TIMER_STATUS_CCR_CAP_CH4:      the Channel 4 CCR capture condition occured;
// 1685   *           @arg TIMER_STATUS_CCR_REF_CH1:      the Channel 1 (REF == 1) condition occured;
// 1686   *           @arg TIMER_STATUS_CCR_REF_CH2:      the Channel 2 (REF == 1) condition occured;
// 1687   *           @arg TIMER_STATUS_CCR_REF_CH3:      the Channel 3 (REF == 1) condition occured;
// 1688   *           @arg TIMER_STATUS_CCR_REF_CH4:      the Channel 4 (REF == 1) condition occured;
// 1689   *           @arg TIMER_STATUS_CCR_CAP1_CH1:     the Channel 1 CCR1 capture condition occured;
// 1690   *           @arg TIMER_STATUS_CCR_CAP1_CH2:     the Channel 2 CCR1 capture condition occured;
// 1691   *           @arg TIMER_STATUS_CCR_CAP1_CH3:     the Channel 3 CCR1 capture condition occured;
// 1692   *           @arg TIMER_STATUS_CCR_CAP1_CH4:     the Channel 4 CCR1 capture condition occured.
// 1693   * @retval Current Status flag state (SET or RESET).
// 1694   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1695 FlagStatus TIMER_GetFlagStatus(MDR_TIMER_TypeDef* TIMERx, uint32_t Flag)
// 1696 {
// 1697   FlagStatus bitstatus;
// 1698 
// 1699   /* Check the parameters */
// 1700   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1701   assert_param(IS_TIMER_STATUS_FLAG(Flag));
// 1702 
// 1703   if ((TIMERx->STATUS & Flag) == 0)
TIMER_GetFlagStatus:
        LDR      R0,[R0, #+84]
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
// 1704   {
// 1705     bitstatus = RESET;
// 1706   }
// 1707   else
// 1708   {
// 1709     bitstatus = SET;
// 1710   }
// 1711 
// 1712   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
// 1713 }
// 1714 
// 1715 /**
// 1716   * @brief  Clears the TIMERx's pending flags.
// 1717   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1718   * @param  Flags: specifies the flag bit mask to clear.
// 1719   *         This parameter can be any combination of the following values:
// 1720   *           @arg TIMER_STATUS_CNT_ZERO:         the (CNT == 0) condition occured;
// 1721   *           @arg TIMER_STATUS_CNT_ARR:          the (CNT == ARR) condition occured;
// 1722   *           @arg TIMER_STATUS_ETR_RISING_EDGE:  the ETR rising edge occured;
// 1723   *           @arg TIMER_STATUS_ETR_FALLING_EDGE: the ETR falling edge occured;
// 1724   *           @arg TIMER_STATUS_BRK:              the (BRK == 1) condition occured;
// 1725   *           @arg TIMER_STATUS_CCR_CAP_CH1:      the Channel 1 CCR capture condition occured;
// 1726   *           @arg TIMER_STATUS_CCR_CAP_CH2:      the Channel 2 CCR capture condition occured;
// 1727   *           @arg TIMER_STATUS_CCR_CAP_CH3:      the Channel 3 CCR capture condition occured;
// 1728   *           @arg TIMER_STATUS_CCR_CAP_CH4:      the Channel 4 CCR capture condition occured;
// 1729   *           @arg TIMER_STATUS_CCR_REF_CH1:      the Channel 1 (REF == 1) condition occured;
// 1730   *           @arg TIMER_STATUS_CCR_REF_CH2:      the Channel 2 (REF == 1) condition occured;
// 1731   *           @arg TIMER_STATUS_CCR_REF_CH3:      the Channel 3 (REF == 1) condition occured;
// 1732   *           @arg TIMER_STATUS_CCR_REF_CH4:      the Channel 4 (REF == 1) condition occured;
// 1733   *           @arg TIMER_STATUS_CCR_CAP1_CH1:     the Channel 1 CCR1 capture condition occured;
// 1734   *           @arg TIMER_STATUS_CCR_CAP1_CH2:     the Channel 2 CCR1 capture condition occured;
// 1735   *           @arg TIMER_STATUS_CCR_CAP1_CH3:     the Channel 3 CCR1 capture condition occured;
// 1736   *           @arg TIMER_STATUS_CCR_CAP1_CH4:     the Channel 4 CCR1 capture condition occured.
// 1737   * @retval None
// 1738   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1739 void TIMER_ClearFlag(MDR_TIMER_TypeDef* TIMERx, uint32_t Flags)
// 1740 {
// 1741   /* Check the parameters */
// 1742   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1743   assert_param(IS_TIMER_STATUS(Flags));
// 1744 
// 1745   TIMERx->STATUS &= ~Flags;
TIMER_ClearFlag:
        LDR      R2,[R0, #+84]
        BIC      R1,R2,R1
        STR      R1,[R0, #+84]
// 1746 }
        BX       LR               ;; return
// 1747 
// 1748 /**
// 1749   * @brief  Enables or disables the TIMERx’s DMA Requests.
// 1750   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1751   * @param  TIMER_DMASource: specifies the DMA Request sources.
// 1752   *         This parameter can be any combination of the following values:
// 1753   *           @arg TIMER_STATUS_CNT_ZERO:         the (CNT == 0) condition occured;
// 1754   *           @arg TIMER_STATUS_CNT_ARR:          the (CNT == ARR) condition occured;
// 1755   *           @arg TIMER_STATUS_ETR_RISING_EDGE:  the ETR rising edge occured;
// 1756   *           @arg TIMER_STATUS_ETR_FALLING_EDGE: the ETR falling edge occured;
// 1757   *           @arg TIMER_STATUS_BRK:              the (BRK == 1) condition occured;
// 1758   *           @arg TIMER_STATUS_CCR_CAP_CH1:      the Channel 1 CCR capture condition occured;
// 1759   *           @arg TIMER_STATUS_CCR_CAP_CH2:      the Channel 2 CCR capture condition occured;
// 1760   *           @arg TIMER_STATUS_CCR_CAP_CH3:      the Channel 3 CCR capture condition occured;
// 1761   *           @arg TIMER_STATUS_CCR_CAP_CH4:      the Channel 4 CCR capture condition occured;
// 1762   *           @arg TIMER_STATUS_CCR_REF_CH1:      the Channel 1 (REF == 1) condition occured;
// 1763   *           @arg TIMER_STATUS_CCR_REF_CH2:      the Channel 2 (REF == 1) condition occured;
// 1764   *           @arg TIMER_STATUS_CCR_REF_CH3:      the Channel 3 (REF == 1) condition occured;
// 1765   *           @arg TIMER_STATUS_CCR_REF_CH4:      the Channel 4 (REF == 1) condition occured;
// 1766   *           @arg TIMER_STATUS_CCR_CAP1_CH1:     the Channel 1 CCR1 capture condition occured;
// 1767   *           @arg TIMER_STATUS_CCR_CAP1_CH2:     the Channel 2 CCR1 capture condition occured;
// 1768   *           @arg TIMER_STATUS_CCR_CAP1_CH3:     the Channel 3 CCR1 capture condition occured;
// 1769   *           @arg TIMER_STATUS_CCR_CAP1_CH4:     the Channel 4 CCR1 capture condition occured.
// 1770   * @param	TIMER_DMAChannel: specifies the DMA channel.
// 1771   * 		@note 	Available only for MC MDR1986VE1T and MC MDR1986BE3
// 1772   * 		This parameter can be any combination of the following values:
// 1773   * 			@arg TIMER_DMA_Channel0
// 1774   * 			@arg TIMER_DMA_Channel1
// 1775   * 			@arg TIMER_DMA_Channel2
// 1776   * 			@arg TIMER_DMA_Channel3
// 1777   * 			@arg TIMER_DMA_Channel4
// 1778   * @param  NewState: new state of the DMA Request sources.
// 1779   *         This parameter can be: ENABLE or DISABLE.
// 1780   * @retval None
// 1781   */
// 1782 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
// 1783 void TIMER_DMACmd(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_DMASource, uint32_t TIMER_DMAChannel, FunctionalState NewState)
// 1784 #endif
// 1785 #if defined (USE_MDR1986VE9x)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1786 void TIMER_DMACmd(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_DMASource, FunctionalState NewState)
// 1787 #endif
// 1788 {
// 1789   uint32_t tmpreg_DMA_RE;
// 1790 
// 1791   /* Check the parameters */
// 1792   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1793   assert_param(IS_TIMER_STATUS(TIMER_DMASource));
// 1794   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1795 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
// 1796   if(TIMER_DMAChannel == TIMER_DMA_Channel0){
// 1797 #endif
// 1798 	  tmpreg_DMA_RE = TIMERx->DMA_RE;
TIMER_DMACmd:
        LDR      R3,[R0, #+92]
// 1799 
// 1800 	  /* Form new value */
// 1801 	  if (NewState != DISABLE)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,R3
        BICEQ    R1,R3,R1
// 1802 	  {
// 1803 		/* Enable TIMERx DMA Requests by setting bits in the DMA_RE register */
// 1804 		tmpreg_DMA_RE |= TIMER_DMASource;
// 1805 	  }
// 1806 	  else
// 1807 	  {
// 1808 		/* Disable TIMERx DMA Requests by clearing bits in the DMA_RE register */
// 1809 		tmpreg_DMA_RE &= ~TIMER_DMASource;
// 1810 	  }
// 1811 
// 1812 	  /* Configure CNTRL register with new value */
// 1813 	  TIMERx->DMA_RE = tmpreg_DMA_RE;
        STR      R1,[R0, #+92]
// 1814 #if defined (USE_MDR1986VE1T) || defined (USE_MDR1986VE3)
// 1815   }
// 1816   else{
// 1817 	  tmpreg_DMA_RE = TIMERx->DMA_REChx[TIMER_DMAChannel];
// 1818 
// 1819 	  /* Form new value */
// 1820 	  if (NewState != DISABLE)
// 1821 	  {
// 1822 		/* Enable TIMERx DMA Requests by setting bits in the DMA_RE register */
// 1823 		tmpreg_DMA_RE |= TIMER_DMASource;
// 1824 	  }
// 1825 	  else
// 1826 	  {
// 1827 		/* Disable TIMERx DMA Requests by clearing bits in the DMA_RE register */
// 1828 		tmpreg_DMA_RE &= ~TIMER_DMASource;
// 1829 	  }
// 1830 
// 1831 	  /* Configure CNTRL register with new value */
// 1832 	  TIMERx->DMA_REChx[TIMER_DMAChannel] = tmpreg_DMA_RE;
// 1833 
// 1834   }
// 1835 #endif
// 1836 }
        BX       LR               ;; return
// 1837 
// 1838 /**
// 1839   * @brief  Enables or disables the specified TIMER interrupts.
// 1840   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1841   * @param  TIMER_IT: specifies the TIMER interrupts sources to be enabled or disabled.
// 1842   *         This parameter can be any combination of the following values:
// 1843   *           @arg TIMER_STATUS_CNT_ZERO:         the (CNT == 0) condition occured;
// 1844   *           @arg TIMER_STATUS_CNT_ARR:          the (CNT == ARR) condition occured;
// 1845   *           @arg TIMER_STATUS_ETR_RISING_EDGE:  the ETR rising edge occured;
// 1846   *           @arg TIMER_STATUS_ETR_FALLING_EDGE: the ETR falling edge occured;
// 1847   *           @arg TIMER_STATUS_BRK:              the (BRK == 1) condition occured;
// 1848   *           @arg TIMER_STATUS_CCR_CAP_CH1:      the Channel 1 CCR capture condition occured;
// 1849   *           @arg TIMER_STATUS_CCR_CAP_CH2:      the Channel 2 CCR capture condition occured;
// 1850   *           @arg TIMER_STATUS_CCR_CAP_CH3:      the Channel 3 CCR capture condition occured;
// 1851   *           @arg TIMER_STATUS_CCR_CAP_CH4:      the Channel 4 CCR capture condition occured;
// 1852   *           @arg TIMER_STATUS_CCR_REF_CH1:      the Channel 1 (REF == 1) condition occured;
// 1853   *           @arg TIMER_STATUS_CCR_REF_CH2:      the Channel 2 (REF == 1) condition occured;
// 1854   *           @arg TIMER_STATUS_CCR_REF_CH3:      the Channel 3 (REF == 1) condition occured;
// 1855   *           @arg TIMER_STATUS_CCR_REF_CH4:      the Channel 4 (REF == 1) condition occured;
// 1856   *           @arg TIMER_STATUS_CCR_CAP1_CH1:     the Channel 1 CCR1 capture condition occured;
// 1857   *           @arg TIMER_STATUS_CCR_CAP1_CH2:     the Channel 2 CCR1 capture condition occured;
// 1858   *           @arg TIMER_STATUS_CCR_CAP1_CH3:     the Channel 3 CCR1 capture condition occured;
// 1859   *           @arg TIMER_STATUS_CCR_CAP1_CH4:     the Channel 4 CCR1 capture condition occured.
// 1860   * @param  NewState: new state of the TIMER interrupts.
// 1861   *         This parameter can be: ENABLE or DISABLE.
// 1862   * @retval None
// 1863   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1864 void TIMER_ITConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT, FunctionalState NewState)
// 1865 {
// 1866   uint32_t tmpreg_IE;
// 1867 
// 1868   /* Check the parameters */
// 1869   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1870   assert_param(IS_TIMER_STATUS(TIMER_IT));
// 1871   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1872 
// 1873   tmpreg_IE = TIMERx->IE;
TIMER_ITConfig:
        LDR      R3,[R0, #+88]
// 1874 
// 1875   /* Form new value */
// 1876   if (NewState != DISABLE)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,R3
        BICEQ    R1,R3,R1
// 1877   {
// 1878     /* Enable the TIMERx Interrupt requests by setting bits in the IE register */
// 1879     tmpreg_IE |= TIMER_IT;
// 1880   }
// 1881   else
// 1882   {
// 1883     /* Disable the TIMERx Interrupt requests by clearing bits in the IE register */
// 1884     tmpreg_IE &= ~TIMER_IT;
// 1885   }
// 1886 
// 1887   /* Configure CNTRL register with new value */
// 1888   TIMERx->IE = tmpreg_IE;
        STR      R1,[R0, #+88]
// 1889 }
        BX       LR               ;; return
// 1890 
// 1891 /**
// 1892   * @brief  Checks whether the TIMERx interrupt has occurred or not.
// 1893   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1894   * @param  TIMER_IT: specifies the TIMER interrupt source to check.
// 1895   *         This parameter can be one of the following values:
// 1896   *           @arg TIMER_STATUS_CNT_ZERO:         the (CNT == 0) condition occured;
// 1897   *           @arg TIMER_STATUS_CNT_ARR:          the (CNT == ARR) condition occured;
// 1898   *           @arg TIMER_STATUS_ETR_RISING_EDGE:  the ETR rising edge occured;
// 1899   *           @arg TIMER_STATUS_ETR_FALLING_EDGE: the ETR falling edge occured;
// 1900   *           @arg TIMER_STATUS_BRK:              the (BRK == 1) condition occured;
// 1901   *           @arg TIMER_STATUS_CCR_CAP_CH1:      the Channel 1 CCR capture condition occured;
// 1902   *           @arg TIMER_STATUS_CCR_CAP_CH2:      the Channel 2 CCR capture condition occured;
// 1903   *           @arg TIMER_STATUS_CCR_CAP_CH3:      the Channel 3 CCR capture condition occured;
// 1904   *           @arg TIMER_STATUS_CCR_CAP_CH4:      the Channel 4 CCR capture condition occured;
// 1905   *           @arg TIMER_STATUS_CCR_REF_CH1:      the Channel 1 (REF == 1) condition occured;
// 1906   *           @arg TIMER_STATUS_CCR_REF_CH2:      the Channel 2 (REF == 1) condition occured;
// 1907   *           @arg TIMER_STATUS_CCR_REF_CH3:      the Channel 3 (REF == 1) condition occured;
// 1908   *           @arg TIMER_STATUS_CCR_REF_CH4:      the Channel 4 (REF == 1) condition occured;
// 1909   *           @arg TIMER_STATUS_CCR_CAP1_CH1:     the Channel 1 CCR1 capture condition occured;
// 1910   *           @arg TIMER_STATUS_CCR_CAP1_CH2:     the Channel 2 CCR1 capture condition occured;
// 1911   *           @arg TIMER_STATUS_CCR_CAP1_CH3:     the Channel 3 CCR1 capture condition occured;
// 1912   *           @arg TIMER_STATUS_CCR_CAP1_CH4:     the Channel 4 CCR1 capture condition occured.
// 1913   * @retval The new state of the TIMER_IT (SET or RESET).
// 1914   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1915 ITStatus TIMER_GetITStatus(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT)
// 1916 {
// 1917   ITStatus bitstatus;
// 1918   uint32_t tmpreg;
// 1919 
// 1920   /* Check the parameters */
// 1921   assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1922   assert_param(IS_TIMER_STATUS_FLAG(TIMER_IT));
// 1923 
// 1924   tmpreg = TIMERx->STATUS & TIMERx->IE & TIMER_IT;
TIMER_GetITStatus:
        LDR      R2,[R0, #+84]
        LDR      R0,[R0, #+88]
// 1925 
// 1926   if (tmpreg == 0)
        ANDS     R0,R0,R2
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
// 1927   {
// 1928     bitstatus = RESET;
// 1929   }
// 1930   else
// 1931   {
// 1932     bitstatus = SET;
// 1933   }
// 1934 
// 1935   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
// 1936 }
// 1937 
// 1938 /**
// 1939   * @brief  Initializes the TIMERx peripheral Clock according to the
// 1940   *         specified parameters.
// 1941   * @param  TIMERx: where x can be 1 to 3 to select the TIMER peripheral.
// 1942   * @param  TIMER_BRG: specifies the HCLK division factor.
// 1943   *         This parameter can be one of the following values:
// 1944   *           @arg TIMER_HCLKdiv1:   no division of input frequency;
// 1945   *           @arg TIMER_HCLKdiv2:   selects input frequency divider by 2;
// 1946   *           @arg TIMER_HCLKdiv4:   selects input frequency divider by 4;
// 1947   *           @arg TIMER_HCLKdiv8:   selects input frequency divider by 8;
// 1948   *           @arg TIMER_HCLKdiv16:  selects input frequency divider by 16;
// 1949   *           @arg TIMER_HCLKdiv32:  selects input frequency divider by 32;
// 1950   *           @arg TIMER_HCLKdiv64:  selects input frequency divider by 64;
// 1951   *           @arg TIMER_HCLKdiv128: selects input frequency divider by 128.
// 1952   * @retval None
// 1953   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1954 void TIMER_BRGInit ( MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_BRG ) {
TIMER_BRGInit:
        PUSH     {R4,LR}
// 1955 	uint32_t tmpreg;
// 1956 
// 1957 	/* Check the parameters */
// 1958 	assert_param(IS_TIMER_ALL_PERIPH(TIMERx));
// 1959 	assert_param(IS_TIMER_CLOCK_BRG(TIMER_BRG));
// 1960 
// 1961 #if ( (defined (USE_MDR1986VE3) ) || (defined (USE_MDR1986VE1T)) ) /* For USE_MDR1986VE3 (Cortex M1) */
// 1962 	if(TIMERx == MDR_TIMER4)
// 1963 		tmpreg = MDR_RST_CLK->UART_CLOCK;
// 1964 	else
// 1965 #endif // #if (defined (USE_MDR1986VE3) || defined (MDR1986VE1T)) /* For USE_MDR1986VE3 (Cortex M1) */
// 1966 		tmpreg = MDR_RST_CLK->TIM_CLOCK;
        LDR.N    R2,??DataTable0  ;; 0x40020024
        LDR      R3,[R2, #+0]
// 1967 
// 1968 	if (TIMERx == MDR_TIMER1) {
        LDR.N    R4,??DataTable0_1  ;; 0x40070000
        CMP      R0,R4
        BNE.N    ??TIMER_BRGInit_0
// 1969 		tmpreg &= ~RST_CLK_TIM_CLOCK_TIM1_BRG_Msk;
// 1970 		tmpreg |= TIMER_BRG << RST_CLK_TIM_CLOCK_TIM1_BRG_Pos;
// 1971 		tmpreg |= RST_CLK_TIM_CLOCK_TIM1_CLK_EN;
        LSRS     R0,R3,#+8
        ORRS     R0,R1,R0, LSL #+8
        ORR      R3,R0,#0x1000000
        B.N      ??TIMER_BRGInit_1
// 1972 	}
// 1973 	else
// 1974 		if (TIMERx == MDR_TIMER2) {
??TIMER_BRGInit_0:
        LDR.N    R4,??DataTable0_2  ;; 0x40078000
        CMP      R0,R4
        BNE.N    ??TIMER_BRGInit_2
// 1975 			tmpreg &= ~RST_CLK_TIM_CLOCK_TIM2_BRG_Msk;
// 1976 			tmpreg |= TIMER_BRG << RST_CLK_TIM_CLOCK_TIM2_BRG_Pos;
// 1977 			tmpreg |= RST_CLK_TIM_CLOCK_TIM2_CLK_EN;
        BIC      R0,R3,#0xFF00
        ORR      R0,R0,R1, LSL #+8
        ORR      R3,R0,#0x2000000
        B.N      ??TIMER_BRGInit_1
// 1978 		}
// 1979 		else
// 1980 			if (TIMERx == MDR_TIMER3) {
??TIMER_BRGInit_2:
        LDR.N    R4,??DataTable0_3  ;; 0x40080000
        CMP      R0,R4
        BNE.N    ??TIMER_BRGInit_1
// 1981 				tmpreg &= ~RST_CLK_TIM_CLOCK_TIM3_BRG_Msk;
// 1982 				tmpreg |= TIMER_BRG << RST_CLK_TIM_CLOCK_TIM3_BRG_Pos;
// 1983 				tmpreg |= RST_CLK_TIM_CLOCK_TIM3_CLK_EN;
        BIC      R0,R3,#0xFF0000
        ORR      R0,R0,R1, LSL #+16
        ORR      R3,R0,#0x4000000
// 1984 			}
// 1985 #if ( (defined (USE_MDR1986VE3) ) || (defined (USE_MDR1986VE1T)) ) /* For USE_MDR1986VE3 (Cortex M1) */
// 1986 			else
// 1987 				if(TIMERx == MDR_TIMER4) {
// 1988 					tmpreg &= ~RST_CLK_UART_CLOCK_TIM4_BRG_Msk;
// 1989 					tmpreg |= TIMER_BRG << RST_CLK_UART_CLOCK_TIM4_BRG_Pos;
// 1990 					tmpreg |= RST_CLK_UART_CLOCK_TIM4_CLK_EN;
// 1991 				} // if(TIMERx == MDR_TIMER4) {
// 1992 #endif // #if ( (defined (USE_MDR1986VE3) ) || (defined (MDR1986VE1T)) ) /* For USE_MDR1986VE3 (Cortex M1) */
// 1993 
// 1994 #if ( (defined (USE_MDR1986VE3) ) || (defined (USE_MDR1986VE1T)) ) /* For USE_MDR1986VE3 (Cortex M1) */
// 1995 	if(TIMERx == MDR_TIMER4)
// 1996 		MDR_RST_CLK->UART_CLOCK = tmpreg;
// 1997 	else
// 1998 #endif // #if (defined (USE_MDR1986VE3) || defined (MDR1986VE1T)) /* For USE_MDR1986VE3 (Cortex M1) */
// 1999 		MDR_RST_CLK->TIM_CLOCK = tmpreg;
??TIMER_BRGInit_1:
        STR      R3,[R2, #+0]
// 2000 
// 2001 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40020024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40070000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     0x40078000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     0x40080000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 2002 
// 2003 /** @} */ /* End of group TIMER_Private_Functions */
// 2004 
// 2005 /** @} */ /* End of group TIMER */
// 2006 
// 2007 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
// 2008 
// 2009 /******************* (C) COPYRIGHT 2010 Phyton *********************************
// 2010 *
// 2011 * END OF FILE MDR32F9Qx_timer.c */
// 2012 
// 
// 1 066 bytes in section .text
// 
// 1 066 bytes of CODE memory
//
//Errors: none
//Warnings: 1
