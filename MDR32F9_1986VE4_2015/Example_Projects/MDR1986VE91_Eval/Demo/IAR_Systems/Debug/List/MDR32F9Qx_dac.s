///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:56 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_dac.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_dac.c --preprocess        /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_dac. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_dac

        #define SHT_PROGBITS 0x1

        PUBLIC DAC1_Cmd
        PUBLIC DAC1_GetData
        PUBLIC DAC1_Init
        PUBLIC DAC1_SetData
        PUBLIC DAC2_Cmd
        PUBLIC DAC2_GetData
        PUBLIC DAC2_Init
        PUBLIC DAC2_SetData
        PUBLIC DAC_DeInit
        PUBLIC DAC_Init

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_dac.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_dac.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/07/2011
//    7   * @brief   This file provides all the DAC firmware functions.
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
//   20   * FILE MDR32F9Qx_dac.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_dac.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_DAC_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup DAC DAC
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup DAC_Private_Functions DAC Private Functions
//   39   * @{
//   40   */
//   41 
//   42 /**
//   43   * @brief  Deinitializes the DAC peripheral registers to their default reset values.
//   44   * @param  None.
//   45   * @retval None.
//   46   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void DAC_DeInit(void)
//   48 {
//   49   MDR_DAC->DAC1_DATA = 0;
DAC_DeInit:
        LDR.N    R0,??DataTable9  ;; 0x40090000
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   50   MDR_DAC->DAC2_DATA = 0;
        STR      R1,[R0, #+8]
//   51   MDR_DAC->CFG = 0;
        STR      R1,[R0, #+0]
//   52 }
        BX       LR               ;; return
//   53 
//   54 /**
//   55   * @brief  Initializes the DAC peripheral.
//   56   * @param  SyncMode: specifies the DAC1, DAC2 operation mode - synchronous or independent.
//   57   *         This parameter can be one of the following values:
//   58   *           @arg DAC_SYNC_MODE_Independent:   the independent DAC1, DAC2 operation mode;
//   59   *           @arg DAC_SYNC_MODE_Synchronous:   the synchronous DAC1, DAC2 operation mode.
//   60   * @param  DAC1_Ref: selects the DAC1 Reference Voltage source.
//   61   *         This parameter can be one of the following values:
//   62   *           @arg DAC1_AVCC:                   selects AVcc as Reference Voltage;
//   63   *           @arg DAC1_REF :                   selects DAC1_REF input as Reference Voltage.
//   64   * @param  DAC2_Ref: selects the DAC2 Reference Voltage source.
//   65   *         This parameter can be one of the following values:
//   66   *           @arg DAC2_AVCC:                   selects AVcc as Reference Voltage;
//   67   *           @arg DAC2_REF :                   selects DAC2_REF input as Reference Voltage.
//   68   * @retval None
//   69   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void DAC_Init(uint32_t SyncMode, uint32_t DAC1_Ref, uint32_t DAC2_Ref)
//   71 {
DAC_Init:
        PUSH     {R4,LR}
//   72   uint32_t tmpreg_CFG;
//   73 
//   74   /* Check the parameters */
//   75   assert_param(IS_DAC_SYNC_MODE(SyncMode));
//   76   assert_param(IS_DAC1_REF_CONFIG(DAC1_Ref));
//   77   assert_param(IS_DAC2_REF_CONFIG(DAC2_Ref));
//   78 
//   79   tmpreg_CFG = MDR_DAC->CFG;
        LDR.N    R3,??DataTable9  ;; 0x40090000
        LDR      R4,[R3, #+0]
//   80   tmpreg_CFG &= ~(DAC_CFG_SYNC_A | DAC_CFG_M_REF0 | DAC_CFG_M_REF1);
//   81   tmpreg_CFG += SyncMode + DAC1_Ref + DAC2_Ref;
//   82   MDR_DAC->CFG = tmpreg_CFG;
        BIC      R4,R4,#0x13
        ADDS     R0,R0,R4
        ADDS     R0,R1,R0
        ADDS     R0,R2,R0
        STR      R0,[R3, #+0]
//   83 }
        POP      {R4,PC}          ;; return
//   84 
//   85 /**
//   86   * @brief  Initializes the DAC1 peripheral.
//   87   * @param  DAC1_Ref: selects the DAC1 Reference Voltage source.
//   88   *         This parameter can be one of the following values:
//   89   *           @arg DAC1_AVCC:                   selects AVcc as Reference Voltage;
//   90   *           @arg DAC1_REF :                   selects DAC1_REF input as Reference Voltage.
//   91   * @retval None
//   92   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void DAC1_Init(uint32_t DAC1_Ref)
//   94 {
//   95   uint32_t tmpreg_CFG;
//   96 
//   97   /* Check the parameters */
//   98   assert_param(IS_DAC1_REF_CONFIG(DAC1_Ref));
//   99 
//  100   tmpreg_CFG = MDR_DAC->CFG;
DAC1_Init:
        LDR.N    R1,??DataTable9  ;; 0x40090000
        LDR      R2,[R1, #+0]
//  101   tmpreg_CFG &= ~DAC_CFG_M_REF0;
//  102   tmpreg_CFG += DAC1_Ref;
//  103   MDR_DAC->CFG = tmpreg_CFG;
        LSRS     R2,R2,#+1
        ADDS     R0,R0,R2, LSL #+1
        STR      R0,[R1, #+0]
//  104 }
        BX       LR               ;; return
//  105 
//  106 /**
//  107   * @brief  Initializes the DAC2 peripheral.
//  108   * @param  DAC2_Ref: selects the DAC2 Reference Voltage source.
//  109   *         This parameter can be one of the following values:
//  110   *           @arg DAC2_AVCC:                   selects AVcc as Reference Voltage;
//  111   *           @arg DAC2_REF :                   selects DAC2_REF input as Reference Voltage.
//  112   * @retval None
//  113   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void DAC2_Init(uint32_t DAC2_Ref)
//  115 {
//  116   uint32_t tmpreg_CFG;
//  117 
//  118   /* Check the parameters */
//  119   assert_param(IS_DAC2_REF_CONFIG(DAC2_Ref));
//  120 
//  121   tmpreg_CFG = MDR_DAC->CFG;
DAC2_Init:
        LDR.N    R1,??DataTable9  ;; 0x40090000
        LDR      R2,[R1, #+0]
//  122   tmpreg_CFG &= ~DAC_CFG_M_REF1;
//  123   tmpreg_CFG += DAC2_Ref;
//  124   MDR_DAC->CFG = tmpreg_CFG;
        BIC      R2,R2,#0x2
        ADDS     R0,R0,R2
        STR      R0,[R1, #+0]
//  125 }
        BX       LR               ;; return
//  126 
//  127 /**
//  128   * @brief  Enables or disables the DAC1 peripheral.
//  129   * @param  NewState: new state of the DAC1 peripheral.
//  130   *         This parameter can be: ENABLE or DISABLE.
//  131   * @retval None
//  132   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void DAC1_Cmd(FunctionalState NewState)
//  134 {
//  135   uint32_t tmpreg_CFG;
//  136 
//  137   /* Check the parameters */
//  138   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  139 
//  140   tmpreg_CFG = MDR_DAC->CFG;
DAC1_Cmd:
        LDR.N    R1,??DataTable9  ;; 0x40090000
        LDR      R2,[R1, #+0]
//  141 
//  142   /* Form new value */
//  143   if (NewState != DISABLE)
        CMP      R0,#+0
        ITE      NE 
        ORRNE    R0,R2,#0x4
        BICEQ    R0,R2,#0x4
//  144   {
//  145     /* Enable DAC1 by setting the Cfg_ON_DAC0 bit in the DAC_CFG register */
//  146     tmpreg_CFG |= DAC_CFG_ON_DAC0;
//  147   }
//  148   else
//  149   {
//  150     /* Disable DAC1 by resetting the Cfg_ON_DAC0 bit in the DAC_CFG register */
//  151     tmpreg_CFG &= ~DAC_CFG_ON_DAC0;
//  152   }
//  153 
//  154   /* Configure DAC_CFG register with new value */
//  155   MDR_DAC->CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  156 }
        BX       LR               ;; return
//  157 
//  158 /**
//  159   * @brief  Enables or disables the DAC1 peripheral.
//  160   * @param  NewState: new state of the DAC1 peripheral.
//  161   *         This parameter can be: ENABLE or DISABLE.
//  162   * @retval None
//  163   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 void DAC2_Cmd(FunctionalState NewState)
//  165 {
//  166   uint32_t tmpreg_CFG;
//  167 
//  168   /* Check the parameters */
//  169   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  170 
//  171   tmpreg_CFG = MDR_DAC->CFG;
DAC2_Cmd:
        LDR.N    R1,??DataTable9  ;; 0x40090000
        LDR      R2,[R1, #+0]
//  172 
//  173   /* Form new value */
//  174   if (NewState != DISABLE)
        CMP      R0,#+0
        ITE      NE 
        ORRNE    R0,R2,#0x8
        BICEQ    R0,R2,#0x8
//  175   {
//  176     /* Enable DAC2 by setting the Cfg_ON_DAC1 bit in the DAC_CFG register */
//  177     tmpreg_CFG |= DAC_CFG_ON_DAC1;
//  178   }
//  179   else
//  180   {
//  181     /* Disable DAC2 by resetting the Cfg_ON_DAC1 bit in the DAC_CFG register */
//  182     tmpreg_CFG &= ~DAC_CFG_ON_DAC1;
//  183   }
//  184 
//  185   /* Configure DAC_CFG register with new value */
//  186   MDR_DAC->CFG = tmpreg_CFG;
        STR      R0,[R1, #+0]
//  187 }
        BX       LR               ;; return
//  188 
//  189 /**
//  190   * @brief  Sets the DAC1 (and DAC2 in Synchronous mode) output data.
//  191   * @param  Data: specifies the DAC output data.
//  192   * @retval None
//  193   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 void DAC1_SetData(uint32_t Data)
//  195 {
//  196   /* Check the parameters */
//  197   assert_param(IS_DAC_DATA(Data));
//  198 
//  199   MDR_DAC->DAC1_DATA = Data;
DAC1_SetData:
        LDR.N    R1,??DataTable9_1  ;; 0x40090004
        STR      R0,[R1, #+0]
//  200 }
        BX       LR               ;; return
//  201 
//  202 /**
//  203   * @brief  Sets the DAC2 (and DAC1 in Synchronous mode) output data.
//  204   * @param  Data: specifies the DAC output data.
//  205   * @retval None
//  206   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  207 void DAC2_SetData(uint32_t Data)
//  208 {
//  209   /* Check the parameters */
//  210   assert_param(IS_DAC_DATA(Data));
//  211 
//  212   MDR_DAC->DAC2_DATA = Data;
DAC2_SetData:
        LDR.N    R1,??DataTable9_2  ;; 0x40090008
        STR      R0,[R1, #+0]
//  213 }
        BX       LR               ;; return
//  214 
//  215 /**
//  216   * @brief  Returns the DAC1 output data.
//  217   * @param  None.
//  218   * @retval Counter Register value.
//  219   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 uint32_t DAC1_GetData(void)
//  221 {
//  222   return MDR_DAC->DAC1_DATA;
DAC1_GetData:
        LDR.N    R0,??DataTable9_1  ;; 0x40090004
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  223 }
//  224 
//  225 /**
//  226   * @brief  Returns the DAC2 output data.
//  227   * @param  None.
//  228   * @retval Counter Register value.
//  229   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 uint32_t DAC2_GetData(void)
//  231 {
//  232   return MDR_DAC->DAC2_DATA;
DAC2_GetData:
        LDR.N    R0,??DataTable9_2  ;; 0x40090008
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  233 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40090000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40090004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40090008

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  234 
//  235 /** @} */ /* End of group DAC_Private_Functions */
//  236 
//  237 /** @} */ /* End of group DAC */
//  238 
//  239 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  240 
//  241 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  242 *
//  243 * END OF FILE MDR32F9Qx_dac.c */
//  244 
// 
// 136 bytes in section .text
// 
// 136 bytes of CODE memory
//
//Errors: none
//Warnings: none
