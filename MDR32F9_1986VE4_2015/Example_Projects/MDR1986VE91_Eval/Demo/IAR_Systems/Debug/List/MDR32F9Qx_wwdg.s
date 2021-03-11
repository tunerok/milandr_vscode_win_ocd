///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:59 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_wwdg.c                    /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_wwdg.c --preprocess       /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_wwdg /
//                    .s                                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_wwdg

        #define SHT_PROGBITS 0x1

        EXTERN RST_CLK_PCLKcmd

        PUBLIC WWDG_ClearFlag
        PUBLIC WWDG_DeInit
        PUBLIC WWDG_Enable
        PUBLIC WWDG_EnableIT
        PUBLIC WWDG_GetFlagStatus
        PUBLIC WWDG_SetCounter
        PUBLIC WWDG_SetPrescaler
        PUBLIC WWDG_SetWindowValue

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_wwdg.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_wwdg.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    27/01/2011
//    7   * @brief   This file contains all the WWDG firmware functions.
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
//   20   * FILE MDR32F9Qx_wwdg.c
//   21   */
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "MDR32F9Qx_config.h"
//   24 #include "MDR32F9Qx_wwdg.h"
//   25 #include "MDR32F9Qx_rst_clk.h"
//   26 
//   27 
//   28 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_WWDG_C
//   29 
//   30 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup WWDG WWDG
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup WWDG_Private_TypesDefinitions WWDG Private Types Definitions
//   39   * @{
//   40   */
//   41 
//   42 /** @} */ /* End of group WWDG_Private_TypesDefinitions */
//   43 
//   44 /** @defgroup WWDG_Private_Defines WWDG Private Defines
//   45   * @{
//   46   */
//   47 
//   48 #if defined (USE_MDR1986VE9x)
//   49 /* WWDG registers bit address in the alias region */
//   50 #define PERIPH_BASE                 0x40000000
//   51 #define PERIPH_BB_BASE              0x42000000
//   52 #define WWDG_OFFSET                 (MDR_WWDG_BASE - PERIPH_BASE)
//   53 
//   54 #define SFR_OFFSET(TP, MOD, SFR)    ((uint32_t)&((TP*)MOD)->SFR)
//   55 #define BB_ADDR(TP, MOD, SFR, BIT)  (PERIPH_BB_BASE + SFR_OFFSET(TP, MOD, SFR)*32 + BIT*4)
//   56 #define WWDG_BB(SFR, BIT)           BB_ADDR(MDR_WWDG_TypeDef, WWDG_OFFSET, SFR, BIT)
//   57 
//   58 #define EWI_BB                      WWDG_BB(CFR, WWDG_CFR_EWI_Pos)
//   59 #endif
//   60 
//   61 /* --------------------- WWDG registers bit mask ------------------------ */
//   62 
//   63 /* CR register bit mask */
//   64 #define WDGA_Mask         ((uint32_t)0x00000080)
//   65 
//   66 /* CFR register bit mask */
//   67 #define WDGTB_Mask        ((uint32_t)0xFFFFFE7F)
//   68 #define WIN_Mask          ((uint32_t)0x7F)
//   69 #define CTR_Mask          ((uint32_t)0x7F)
//   70 
//   71 /** @} */ /* End of group WWDG_Private_Defines */
//   72 
//   73 /** @defgroup WWDG_Private_Macros WWDG Private Macros
//   74   * @{
//   75   */
//   76 
//   77 /** @} */ /* End of group WWDG_Private_Macros */
//   78 
//   79 /** @defgroup WWDG_Private_Variables WWDG Private Variables
//   80   * @{
//   81   */
//   82 
//   83 /** @} */ /* End of group WWDG_Private_Variables */
//   84 
//   85 /** @defgroup WWDG_Private_Functions WWDG Private Functions
//   86   * @{
//   87   */
//   88 
//   89 /**
//   90   * @brief  WWDG_DeInit - Deinitializes the WWDG peripheral registers to their default reset values.
//   91   * @param  None
//   92   * @retval None
//   93   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void WWDG_DeInit(void)
//   95 {
WWDG_DeInit:
        PUSH     {R7,LR}
//   96   RST_CLK_PCLKcmd(RST_CLK_PCLK_WWDG, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+4096
        BL       RST_CLK_PCLKcmd
//   97   RST_CLK_PCLKcmd(RST_CLK_PCLK_WWDG, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+4096
        POP      {R2,LR}
        B.W      RST_CLK_PCLKcmd
//   98 }
//   99 
//  100 /**
//  101   * @brief  WWDG_SetPrescaler - Sets the WWDG Prescaler.
//  102   * @param  WWDG_Prescaler: specifies the WWDG Prescaler.
//  103   *   This parameter can be one of the following values:
//  104   *     @arg WWDG_Prescaler_1: WWDG counter clock = (PCLK1/4096)/1
//  105   *     @arg WWDG_Prescaler_2: WWDG counter clock = (PCLK1/4096)/2
//  106   *     @arg WWDG_Prescaler_4: WWDG counter clock = (PCLK1/4096)/4
//  107   *     @arg WWDG_Prescaler_8: WWDG counter clock = (PCLK1/4096)/8
//  108   * @retval None
//  109   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 void WWDG_SetPrescaler(uint32_t WWDG_Prescaler)
//  111 {
//  112   uint32_t tmpreg;
//  113   /* Check the parameters */
//  114   assert_param(IS_WWDG_PRESCALER(WWDG_Prescaler));
//  115   /* Clear WDGTB[1:0] bits */
//  116   tmpreg = MDR_WWDG->CFR & WDGTB_Mask;
WWDG_SetPrescaler:
        LDR.N    R1,??DataTable5  ;; 0x40060004
        LDR      R2,[R1, #+0]
//  117   /* Set WDGTB[1:0] bits according to WWDG_Prescaler value */
//  118   tmpreg |= WWDG_Prescaler;
//  119   /* Store the new value */
//  120   MDR_WWDG->CFR = tmpreg;
        BIC      R2,R2,#0x180
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
//  121 }
        BX       LR               ;; return
//  122 
//  123 /**
//  124   * @brief  WWDG_SetWindowValue - Sets the WWDG window value.
//  125   * @param  WindowValue: specifies the window value to be compared to the downcounter.
//  126   *   This parameter value must be lower than 0x80.
//  127   * @retval None
//  128   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  129 void WWDG_SetWindowValue(uint32_t WindowValue)
//  130 {
WWDG_SetWindowValue:
        SUB      SP,SP,#+4
//  131   __IO uint32_t tmpreg = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
//  132 
//  133   /* Check the parameters */
//  134   assert_param(IS_WWDG_WINDOW_VALUE(WindowValue));
//  135   /* Clear W[6:0] bits */
//  136 
//  137   tmpreg = MDR_WWDG->CFR & (uint32_t) (~WIN_Mask);
        LDR.N    R1,??DataTable5  ;; 0x40060004
        LDR      R2,[R1, #+0]
        LSRS     R2,R2,#+7
        LSLS     R2,R2,#+7
        STR      R2,[SP, #+0]
//  138 
//  139   /* Set W[6:0] bits according to WindowValue value */
//  140   tmpreg |= WindowValue & (uint32_t) WIN_Mask;
        LDR      R2,[SP, #+0]
        AND      R0,R0,#0x7F
        ORRS     R0,R0,R2
        STR      R0,[SP, #+0]
//  141 
//  142   /* Store the new value */
//  143   MDR_WWDG->CFR = tmpreg;
        LDR      R0,[SP, #+0]
        STR      R0,[R1, #+0]
//  144 }
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  145 
//  146 /**
//  147   * @brief  WWDG_EnableIT - Enables the WWDG Early Wakeup interrupt(EWI).
//  148   * @param  None
//  149   * @retval None
//  150   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  151 void WWDG_EnableIT ( void )
//  152 {
//  153 #if defined (USE_MDR1986VE9x)
//  154 	*(__IO uint32_t *) EWI_BB = (uint32_t) ENABLE;
WWDG_EnableIT:
        LDR.N    R0,??DataTable5_1  ;; 0x42c000a4
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  155 #elif defined (USE_MDR1986VE3) || defined (USE_MDR1986VE1T)
//  156 	MDR_WWDG->CFR |= WWDG_CFR_EWI;
//  157 #endif
//  158 }
        BX       LR               ;; return
//  159 
//  160 /**
//  161   * @brief  WWDG_SetCounter - Sets the WWDG counter value.
//  162   * @param  Counter: specifies the watchdog counter value.
//  163   *   This parameter must be a number between 0x00 and 0x7F.
//  164   * @retval None
//  165   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void WWDG_SetCounter(uint32_t Counter)
//  167 {
//  168   /* Check the parameters */
//  169   assert_param(IS_WWDG_COUNTER(Counter));
//  170   /* Write to T[6:0] bits to configure the counter value, no need to do
//  171      a read-modify-write; writing a 0 to WDGA bit does nothing */
//  172 
//  173   MDR_WWDG->CR = Counter & CTR_Mask;
WWDG_SetCounter:
        AND      R0,R0,#0x7F
        B.N      ?Subroutine0
//  174 }
//  175 
//  176 /**
//  177   * @brief  WWDG_Enable - Enables WWDG and load the counter value.
//  178   * @param  Counter: specifies the watchdog counter value.
//  179   *   This parameter must be a number between 0x00 and 0x7F.
//  180   * @retval None
//  181   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void WWDG_Enable(uint32_t Counter)
//  183 {
//  184   /* Check the parameters */
//  185   assert_param(IS_WWDG_COUNTER(Counter));
//  186   MDR_WWDG->CR = WDGA_Mask | Counter;
WWDG_Enable:
        ORR      R0,R0,#0x80
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  187 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR.N    R1,??DataTable5_2  ;; 0x40060000
        STR      R0,[R1, #+0]
        BX       LR               ;; return
//  188 
//  189 /**
//  190   * @brief  WWDG_GetFlagStatus - Checks whether the Early Wakeup interrupt flag is set or not.
//  191   * @param  None
//  192   * @retval The new state of the Early Wakeup interrupt flag (SET or RESET)
//  193   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 FlagStatus WWDG_GetFlagStatus(void)
//  195 {
//  196   return (FlagStatus)(MDR_WWDG->SR);
WWDG_GetFlagStatus:
        LDR.N    R0,??DataTable5_3  ;; 0x40060008
        LDR      R0,[R0, #+0]
        UXTB     R0,R0
        BX       LR               ;; return
//  197 }
//  198 
//  199 /**
//  200   * @brief  WWDG_ClearFlag - Clears Early Wakeup interrupt flag.
//  201   * @param  None
//  202   * @retval None
//  203   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 void WWDG_ClearFlag(void)
//  205 {
//  206   MDR_WWDG->SR = (uint32_t)RESET;
WWDG_ClearFlag:
        LDR.N    R0,??DataTable5_3  ;; 0x40060008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  207 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40060004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x42c000a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40060000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40060008

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  208 
//  209 /** @} */ /* End of group WWDG_Private_Functions */
//  210 
//  211 /** @} */ /* End of group WWDG */
//  212 
//  213 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  214 
//  215 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  216 *
//  217 * END OF FILE MDR32F9Qx_wwdg.c */
//  218 
// 
// 130 bytes in section .text
// 
// 130 bytes of CODE memory
//
//Errors: none
//Warnings: none
