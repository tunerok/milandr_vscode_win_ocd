///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:56 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_comp.c                    /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_comp.c --preprocess       /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_comp /
//                    .s                                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_comp

        #define SHT_PROGBITS 0x1

        PUBLIC COMP_CVRefCmd
        PUBLIC COMP_CVRefInit
        PUBLIC COMP_CVRefRangeConfig
        PUBLIC COMP_CVRefScaleConfig
        PUBLIC COMP_CVRefSourceConfig
        PUBLIC COMP_CVRefStructInit
        PUBLIC COMP_Cmd
        PUBLIC COMP_DeInit
        PUBLIC COMP_GetCfgFlagStatus
        PUBLIC COMP_GetFlagStatus
        PUBLIC COMP_GetResultLatch
        PUBLIC COMP_GetStatus
        PUBLIC COMP_ITConfig
        PUBLIC COMP_Init
        PUBLIC COMP_MInpSourceConfig
        PUBLIC COMP_OutInversionConfig
        PUBLIC COMP_PInpSourceConfig
        PUBLIC COMP_StructInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_comp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_comp.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/07/2011
//    7   * @brief   This file provides all the COMP firmware functions.
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
//   20   * FILE MDR32F9Qx_comp.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_comp.h"
//   25 #include "MDR32F9Qx_config.h"
//   26 
//   27 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_COMP_C
//   28 
//   29 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   30   * @{
//   31   */
//   32 
//   33 /** @defgroup COMP COMP
//   34   * @warning	This module can be used only for microcontroller series MDR1986VE9x.
//   35   * @{
//   36   */
//   37 
//   38 #if defined (USE_MDR1986VE9x)
//   39 
//   40 /** @defgroup COMP_Private_Functions COMP Private Functions
//   41   * @{
//   42   */
//   43 
//   44 /**
//   45   * @brief  Deinitializes the COMP peripheral registers to their default reset values.
//   46   * @param  None.
//   47   * @retval None.
//   48   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void COMP_DeInit(void)
//   50 {
//   51   MDR_COMP->CFG = 0;
COMP_DeInit:
        LDR.N    R0,??DataTable14  ;; 0x40098000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   52   MDR_COMP->RESULT_LATCH;
        LDR      R0,[R0, #+8]
//   53 }
        BX       LR               ;; return
//   54 
//   55 /**
//   56   * @brief  Initializes the COMP peripheral according to
//   57   *         the specified parameters in the COMP_InitStruct.
//   58   * @param  COMP_InitStruct: pointer to a COMP_InitTypeDef structure
//   59   *         that contains the configuration information for the specified COMP
//   60   *         peripheral.
//   61   * @retval None
//   62   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void COMP_Init(const COMP_InitTypeDef* COMP_InitStruct)
//   64 {
//   65   uint32_t tmpreg_CFG;
//   66 
//   67   /* Check the parameters */
//   68   assert_param(IS_COMP_PLUS_INPUT_CONFIG(COMP_InitStruct->COMP_PlusInputSource));
//   69   assert_param(IS_COMP_MINUS_INPUT_CONFIG(COMP_InitStruct->COMP_MinusInputSource));
//   70   assert_param(IS_COMP_OUT_INV_CONFIG(COMP_InitStruct->COMP_OutInversion));
//   71 
//   72   tmpreg_CFG = MDR_COMP->CFG;
COMP_Init:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//   73   tmpreg_CFG &= ~(COMP_CFG_CREF | COMP_CFG_CCH_Msk | COMP_CFG_INV);
//   74   tmpreg_CFG += COMP_InitStruct->COMP_PlusInputSource
//   75               + COMP_InitStruct->COMP_MinusInputSource
//   76               + COMP_InitStruct->COMP_OutInversion;
//   77   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0xF00
        B.N      ?Subroutine0
//   78 }
//   79 
//   80 /**
//   81   * @brief  Fills each COMP_InitStruct member with its default value.
//   82   * @param  COMP_InitStruct: pointer to a COMP_InitTypeDef structure
//   83   *         which will be initialized.
//   84   * @retval None
//   85   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 void COMP_StructInit(COMP_InitTypeDef* COMP_InitStruct)
//   87 {
//   88   COMP_InitStruct->COMP_PlusInputSource  = COMP_PlusInput_IN1;
COMP_StructInit:
        B.N      ?Subroutine1
//   89   COMP_InitStruct->COMP_MinusInputSource = COMP_MinusInput_IN2;
//   90   COMP_InitStruct->COMP_OutInversion     = COMP_OUT_INV_Disable;
//   91 }
//   92 
//   93 /**
//   94   * @brief  Enables or disables the COMP peripheral.
//   95   * @param  NewState: new state of the COMP peripheral.
//   96   *         This parameter can be: ENABLE or DISABLE.
//   97   * @retval None
//   98   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   99 void COMP_Cmd(FunctionalState NewState)
//  100 {
//  101   uint32_t tmpreg_CFG;
//  102 
//  103   /* Check the parameters */
//  104   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  105 
//  106   tmpreg_CFG = MDR_COMP->CFG;
COMP_Cmd:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  107 
//  108   /* Form new value */
//  109   if (NewState != DISABLE)
        CMP      R0,#+0
        ITEE     NE 
        ORRNE    R0,R2,#0x1
        LSREQ    R0,R2,#+1
        LSLEQ    R0,R0,#+1
//  110   {
//  111     /* Enable COMP by setting the COMP_CFG_ON bit in the COMP_CFG register */
//  112     tmpreg_CFG |= COMP_CFG_ON;
//  113   }
//  114   else
//  115   {
//  116     /* Disable COMP by resetting the COMP_CFG_ON bit in the COMP_CFG register */
//  117     tmpreg_CFG &= ~COMP_CFG_ON;
//  118   }
//  119 
//  120   /* Configure COMP_CFG register with new value */
//  121   MDR_COMP->CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  122 }
        BX       LR               ;; return
//  123 
//  124 /**
//  125   * @brief  Checks whether the specified COMP Status flag is set or not.
//  126   * @param  Flag: specifies the flag to check.
//  127   *         This parameter can be one of the following values:
//  128   *           @arg COMP_CFG_FLAG_READY:          the Comparator is ready;
//  129   *           @arg COMP_CFG_FLAG_IE:             the Comparator interrupt enabled.
//  130   * @retval Current Status flag state (SET or RESET).
//  131   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 FlagStatus COMP_GetCfgFlagStatus(uint32_t Flag)
//  133 {
//  134   FlagStatus bitstatus;
//  135 
//  136   /* Check the parameters */
//  137   assert_param(IS_COMP_CFG_FLAG(Flag));
//  138 
//  139   if ((MDR_COMP->CFG & Flag) == 0)
COMP_GetCfgFlagStatus:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  140   {
//  141     bitstatus = RESET;
//  142   }
//  143   else
//  144   {
//  145     bitstatus = SET;
//  146   }
//  147 
//  148   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  149 }
//  150 
//  151 /**
//  152   * @brief  Configures non-inverting comparator input.
//  153   * @param  Source: specifies the non-inverting comparator input source.
//  154   *         This parameter can be one of the following values:
//  155   *           @arg COMP_PlusInput_IN1:           the non-inverting comparator input connected to IN1;
//  156   *           @arg COMP_PlusInput_CVREF:         the non-inverting comparator input connected to CVREF.
//  157   * @retval None.
//  158   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void COMP_PInpSourceConfig(uint32_t Source)
//  160 {
//  161   uint32_t tmpreg_CFG;
//  162 
//  163   /* Check the parameters */
//  164   assert_param(IS_COMP_PLUS_INPUT_CONFIG(Source));
//  165 
//  166   tmpreg_CFG = MDR_COMP->CFG;
COMP_PInpSourceConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  167   tmpreg_CFG &= ~COMP_CFG_CREF;
//  168   tmpreg_CFG += Source;
//  169   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0x100
        B.N      ??Subroutine2_0
//  170 }
//  171 
//  172 /**
//  173   * @brief  Configures inverting comparator input.
//  174   * @param  Source: specifies the inverting comparator input source.
//  175   *         This parameter can be one of the following values:
//  176   *           @arg COMP_MinusInput_IN2:          the inverting comparator input connected to IN2;
//  177   *           @arg COMP_MinusInput_IN1:          the inverting comparator input connected to IN1;
//  178   *           @arg COMP_MinusInput_IN3:          the inverting comparator input connected to IN3;
//  179   *           @arg COMP_MinusInput_IVREF:        the inverting comparator input connected to IVREF.
//  180   * @retval None.
//  181   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void COMP_MInpSourceConfig(uint32_t Source)
//  183 {
//  184   uint32_t tmpreg_CFG;
//  185 
//  186   /* Check the parameters */
//  187   assert_param(IS_COMP_MINUS_INPUT_CONFIG(Source));
//  188 
//  189   tmpreg_CFG = MDR_COMP->CFG;
COMP_MInpSourceConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  190   tmpreg_CFG &= ~COMP_CFG_CCH_Msk;
//  191   tmpreg_CFG += Source;
//  192   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0x600
        B.N      ??Subroutine2_0
//  193 }
//  194 
//  195 /**
//  196   * @brief  Configures comparator output inversion.
//  197   * @param  Inversion: enables or disables inversion on the comparator output.
//  198   *         This parameter can be one of the following values:
//  199   *           @arg COMP_OUT_INV_Disable:         disables the comparator output inversion;
//  200   *           @arg COMP_OUT_INV_Enable:          enables the comparator output inversion.
//  201   * @retval None.
//  202   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 void COMP_OutInversionConfig(uint32_t Inversion)
//  204 {
//  205   uint32_t tmpreg_CFG;
//  206 
//  207   /* Check the parameters */
//  208   assert_param(IS_COMP_OUT_INV_CONFIG(Inversion));
//  209 
//  210   tmpreg_CFG = MDR_COMP->CFG;
COMP_OutInversionConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  211   tmpreg_CFG &= ~COMP_CFG_INV;
//  212   tmpreg_CFG += Inversion;
//  213   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0x800
        B.N      ??Subroutine2_0
//  214 }
//  215 
//  216 /**
//  217   * @brief  Initializes the COMP reference voltage source according to
//  218   *         the specified parameters in the COMP_CVRefInitStruct.
//  219   * @param  COMP_CVRefInitStruct: pointer to a COMP_CVRefInitTypeDef structure
//  220   *         that contains the configuration information for the COMP
//  221   *         reference voltage source.
//  222   * @retval None
//  223   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 void COMP_CVRefInit(const COMP_CVRefInitTypeDef* COMP_CVRefInitStruct)
//  225 {
//  226   uint32_t tmpreg_CFG;
//  227 
//  228   /* Check the parameters */
//  229   assert_param(IS_COMP_CVREF_SOURCE_CONFIG(COMP_CVRefInitStruct->COMP_CVRefSource));
//  230   assert_param(IS_COMP_CVREF_RANGE_CONFIG(COMP_CVRefInitStruct->COMP_CVRefRange));
//  231   assert_param(IS_COMP_CVREF_SCALE_CONFIG(COMP_CVRefInitStruct->COMP_CVRefScale));
//  232 
//  233   tmpreg_CFG = MDR_COMP->CFG;
COMP_CVRefInit:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  234   tmpreg_CFG &= ~(COMP_CFG_CVRSS | COMP_CFG_CVRR | COMP_CFG_CVR_Msk);
//  235   tmpreg_CFG += COMP_CVRefInitStruct->COMP_CVRefSource
//  236               + COMP_CVRefInitStruct->COMP_CVRefRange
//  237               + COMP_CVRefInitStruct->COMP_CVRefScale;
//  238   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0xF6
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  239 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R3,[R0, #+0]
        ADDS     R2,R3,R2
        LDR      R3,[R0, #+4]
        ADDS     R2,R3,R2
        LDR      R0,[R0, #+8]
        REQUIRE ??Subroutine2_0
        ;; // Fall through to label ??Subroutine2_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
??Subroutine2_0:
        ADDS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  240 
//  241 /**
//  242   * @brief  Fills each COMP_CVRefInitStruct member with its default value.
//  243   * @param  COMP_CVRefInitStruct: pointer to a COMP_CVRefInitTypeDef structure
//  244   *         which will be initialized.
//  245   * @retval None
//  246   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 void COMP_CVRefStructInit(COMP_CVRefInitTypeDef* COMP_CVRefInitStruct)
COMP_CVRefStructInit:
        Nop      
//  248 {
//  249   COMP_CVRefInitStruct->COMP_CVRefSource = COMP_CVREF_SOURCE_AVdd;
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  250   COMP_CVRefInitStruct->COMP_CVRefRange  = COMP_CVREF_RANGE_Up;
        STR      R1,[R0, #+4]
//  251   COMP_CVRefInitStruct->COMP_CVRefScale  = COMP_CVREF_SCALE_0_div_24;
        STR      R1,[R0, #+8]
//  252 }
        BX       LR               ;; return
//  253 
//  254 /**
//  255   * @brief  Enables or disables the COMP reference voltage source.
//  256   * @param  NewState: new state of the COMP reference voltage source.
//  257   *         This parameter can be: ENABLE or DISABLE.
//  258   * @retval None
//  259   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  260 void COMP_CVRefCmd(FunctionalState NewState)
//  261 {
//  262   uint32_t tmpreg_CFG;
//  263 
//  264   /* Check the parameters */
//  265   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  266 
//  267   tmpreg_CFG = MDR_COMP->CFG;
COMP_CVRefCmd:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  268 
//  269   /* Form new value */
//  270   if (NewState != DISABLE)
        CMP      R0,#+0
        ITE      NE 
        ORRNE    R0,R2,#0x8
        BICEQ    R0,R2,#0x8
//  271   {
//  272     /* Enable COMP reference by setting the COMP_CFG_CVREN bit in the COMP_CFG register */
//  273     tmpreg_CFG |= COMP_CFG_CVREN;
//  274   }
//  275   else
//  276   {
//  277     /* Disable COMP reference by resetting the COMP_CFG_CVREN bit in the COMP_CFG register */
//  278     tmpreg_CFG &= ~COMP_CFG_CVREN;
//  279   }
//  280 
//  281   /* Configure COMP_CFG register with new value */
//  282   MDR_COMP->CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  283 }
        BX       LR               ;; return
//  284 
//  285 /**
//  286   * @brief  Configures the COMP reference voltage source.
//  287   * @param  Source: specifies the COMP reference voltage source.
//  288   *         This parameter can be one of the following values:
//  289   *           @arg COMP_CVREF_SOURCE_AVdd:       the CVREF source is (AVdd, AGND);
//  290   *           @arg COMP_CVREF_SOURCE_VRef:       the CVREF source is (VRef+, VRef-).
//  291   * @retval None.
//  292   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 void COMP_CVRefSourceConfig(uint32_t Source)
//  294 {
//  295   uint32_t tmpreg_CFG;
//  296 
//  297   /* Check the parameters */
//  298   assert_param(IS_COMP_CVREF_SOURCE_CONFIG(Source));
//  299 
//  300   tmpreg_CFG = MDR_COMP->CFG;
COMP_CVRefSourceConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  301   tmpreg_CFG &= ~COMP_CFG_CVRSS;
//  302   tmpreg_CFG += Source;
//  303   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0x4
        B.N      ??Subroutine2_0
//  304 }
//  305 
//  306 /**
//  307   * @brief  Configures the COMP reference voltage range.
//  308   * @param  Range: specifies the COMP reference voltage range.
//  309   *         This parameter can be one of the following values:
//  310   *           @arg COMP_CVREF_RANGE_Up:          CVREF works in Up Range;
//  311   *           @arg COMP_CVREF_RANGE_Dn:          CVREF works in Down Range.
//  312   * @retval None.
//  313   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  314 void COMP_CVRefRangeConfig(uint32_t Range)
//  315 {
//  316   uint32_t tmpreg_CFG;
//  317 
//  318   /* Check the parameters */
//  319   assert_param(IS_COMP_CVREF_RANGE_CONFIG(Range));
//  320 
//  321   tmpreg_CFG = MDR_COMP->CFG;
COMP_CVRefRangeConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  322   tmpreg_CFG &= ~COMP_CFG_CVRR;
//  323   tmpreg_CFG += Range;
//  324   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0x2
        B.N      ??Subroutine2_0
//  325 }
//  326 
//  327 /**
//  328   * @brief  Configures the COMP reference voltage scale.
//  329   * @param  Scale: specifies the COMP reference voltage scale.
//  330   *         If CVREF Up Range selected This parameter can be one of the following values:
//  331   *           @arg COMP_CVREF_SCALE_8_div_32:    the COMP CVRef up range scale 8/32;
//  332   *           @arg COMP_CVREF_SCALE_9_div_32:    the COMP CVRef up range scale 9/32;
//  333   *           @arg COMP_CVREF_SCALE_10_div_32:   the COMP CVRef up range scale 10/32;
//  334   *           @arg COMP_CVREF_SCALE_11_div_32:   the COMP CVRef up range scale 11/32;
//  335   *           @arg COMP_CVREF_SCALE_12_div_32:   the COMP CVRef up range scale 12/32;
//  336   *           @arg COMP_CVREF_SCALE_13_div_32:   the COMP CVRef up range scale 13/32;
//  337   *           @arg COMP_CVREF_SCALE_14_div_32:   the COMP CVRef up range scale 14/32;
//  338   *           @arg COMP_CVREF_SCALE_15_div_32:   the COMP CVRef up range scale 15/32;
//  339   *           @arg COMP_CVREF_SCALE_16_div_32:   the COMP CVRef up range scale 16/32;
//  340   *           @arg COMP_CVREF_SCALE_17_div_32:   the COMP CVRef up range scale 17/32;
//  341   *           @arg COMP_CVREF_SCALE_18_div_32:   the COMP CVRef up range scale 18/32;
//  342   *           @arg COMP_CVREF_SCALE_19_div_32:   the COMP CVRef up range scale 19/32;
//  343   *           @arg COMP_CVREF_SCALE_20_div_32:   the COMP CVRef up range scale 20/32;
//  344   *           @arg COMP_CVREF_SCALE_21_div_32:   the COMP CVRef up range scale 21/32;
//  345   *           @arg COMP_CVREF_SCALE_22_div_32:   the COMP CVRef up range scale 22/32;
//  346   *           @arg COMP_CVREF_SCALE_23_div_32:   the COMP CVRef up range scale 23/32.
//  347   *         If CVREF Down Range selected This parameter can be one of the following values:
//  348   *           @arg COMP_CVREF_SCALE_0_div_24:    the COMP CVRef down range scale 0/24;
//  349   *           @arg COMP_CVREF_SCALE_1_div_24:    the COMP CVRef down range scale 1/24;
//  350   *           @arg COMP_CVREF_SCALE_2_div_24:    the COMP CVRef down range scale 2/24;
//  351   *           @arg COMP_CVREF_SCALE_3_div_24:    the COMP CVRef down range scale 3/24;
//  352   *           @arg COMP_CVREF_SCALE_4_div_24:    the COMP CVRef down range scale 4/24;
//  353   *           @arg COMP_CVREF_SCALE_5_div_24:    the COMP CVRef down range scale 5/24;
//  354   *           @arg COMP_CVREF_SCALE_6_div_24:    the COMP CVRef down range scale 6/24;
//  355   *           @arg COMP_CVREF_SCALE_7_div_24:    the COMP CVRef down range scale 7/24;
//  356   *           @arg COMP_CVREF_SCALE_8_div_24:    the COMP CVRef down range scale 8/24;
//  357   *           @arg COMP_CVREF_SCALE_9_div_24:    the COMP CVRef down range scale 9/24;
//  358   *           @arg COMP_CVREF_SCALE_10_div_24:   the COMP CVRef down range scale 10/24;
//  359   *           @arg COMP_CVREF_SCALE_11_div_24:   the COMP CVRef down range scale 11/24;
//  360   *           @arg COMP_CVREF_SCALE_12_div_24:   the COMP CVRef down range scale 12/24;
//  361   *           @arg COMP_CVREF_SCALE_13_div_24:   the COMP CVRef down range scale 13/24;
//  362   *           @arg COMP_CVREF_SCALE_14_div_24:   the COMP CVRef down range scale 14/24;
//  363   *           @arg COMP_CVREF_SCALE_15_div_24:   the COMP CVRef down range scale 15/24.
//  364   * @retval None.
//  365   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void COMP_CVRefScaleConfig(uint32_t Scale)
//  367 {
//  368   uint32_t tmpreg_CFG;
//  369 
//  370   /* Check the parameters */
//  371   assert_param(IS_COMP_CVREF_SCALE_CONFIG(Scale));
//  372 
//  373   tmpreg_CFG = MDR_COMP->CFG;
COMP_CVRefScaleConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  374   tmpreg_CFG &= ~COMP_CFG_CVR_Msk;
//  375   tmpreg_CFG += Scale;
//  376   MDR_COMP->CFG = tmpreg_CFG;
        BIC      R2,R2,#0xF0
        B.N      ??Subroutine2_0
//  377 }
//  378 
//  379 /**
//  380   * @brief  Returns and clears the COMP Result Latch register value.
//  381   * @param  None.
//  382   * @retval The Result Latch register value.
//  383   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  384 uint32_t COMP_GetResultLatch(void)
//  385 {
//  386   return MDR_COMP->RESULT_LATCH;
COMP_GetResultLatch:
        LDR.N    R0,??DataTable14_1  ;; 0x40098008
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  387 }
//  388 
//  389 /**
//  390   * @brief  Returns the COMP Result register value.
//  391   * @param  None.
//  392   * @retval The Result register value.
//  393   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  394 uint32_t COMP_GetStatus(void)
//  395 {
//  396   return MDR_COMP->RESULT;
COMP_GetStatus:
        LDR.N    R0,??DataTable14_2  ;; 0x40098004
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  397 }
//  398 
//  399 /**
//  400   * @brief  Checks whether the specified COMP Status flag is set or not.
//  401   * @param  Flag: specifies the flag to check.
//  402   *         This parameter can be one of the following values:
//  403   *           @arg COMP_STATUS_FLAG_SY:          the latched Comparator output value;
//  404   *           @arg COMP_STATUS_FLAG_AS:          the Comparator output value;
//  405   *           @arg COMP_STATUS_FLAG_LCH:         the clocked Comparator output value.
//  406   * @retval Current Status flag state (SET or RESET).
//  407   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  408 FlagStatus COMP_GetFlagStatus(uint32_t Flag)
//  409 {
//  410   FlagStatus bitstatus;
//  411 
//  412   /* Check the parameters */
//  413   assert_param(IS_COMP_STATUS_FLAG(Flag));
//  414 
//  415   if ((COMP_GetStatus() & Flag) == 0)
COMP_GetFlagStatus:
        LDR.N    R1,??DataTable14_2  ;; 0x40098004
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  416   {
//  417     bitstatus = RESET;
//  418   }
//  419   else
//  420   {
//  421     bitstatus = SET;
//  422   }
//  423 
//  424   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  425 }
//  426 
//  427 /**
//  428   * @brief  Enables or disables the COMP interrupt.
//  429   * @param  NewState: new state of the COMP interrupt.
//  430   *         This parameter can be: ENABLE or DISABLE.
//  431   * @retval None
//  432   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  433 void COMP_ITConfig(FunctionalState NewState)
//  434 {
//  435   uint32_t tmpreg_CFG;
//  436 
//  437   /* Check the parameters */
//  438   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  439 
//  440   tmpreg_CFG = MDR_COMP->CFG;
COMP_ITConfig:
        LDR.N    R1,??DataTable14  ;; 0x40098000
        LDR      R2,[R1, #+0]
//  441 
//  442   /* Form new value */
//  443   if (NewState != DISABLE)
        CMP      R0,#+0
        ITE      NE 
        ORRNE    R0,R2,#0x2000
        BICEQ    R0,R2,#0x2000
//  444   {
//  445     /* Enable the COMP Interrupt requests by setting bits in the CFG registers */
//  446     tmpreg_CFG |= COMP_CFG_CMPIE;
//  447   }
//  448   else
//  449   {
//  450     /* Disable the COMP Interrupt requests by clearing bits in the CFG registers */
//  451     tmpreg_CFG &= ~COMP_CFG_CMPIE;
//  452   }
//  453 
//  454   /* Configure CFG registers with new value */
//  455   MDR_COMP->CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  456 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x40098000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0x40098008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x40098004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  457 
//  458 /** @} */ /* End of group COMP_Private_Functions */
//  459 
//  460 #endif /* #if defined (USE_MDR1986VE9x) */
//  461 
//  462 /** @} */ /* End of group COMP */
//  463 
//  464 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  465 
//  466 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  467 *
//  468 * END OF FILE MDR32F9Qx_comp.c */
//  469 
// 
// 230 bytes in section .text
// 
// 230 bytes of CODE memory
//
//Errors: none
//Warnings: none
