///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_iwdg.c                    /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_iwdg.c --preprocess       /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_iwdg /
//                    .s                                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_iwdg

        #define SHT_PROGBITS 0x1

        PUBLIC IWDG_Enable
        PUBLIC IWDG_GetFlagStatus
        PUBLIC IWDG_ReloadCounter
        PUBLIC IWDG_SetPrescaler
        PUBLIC IWDG_SetReload
        PUBLIC IWDG_WriteAccessDisable
        PUBLIC IWDG_WriteAccessEnable

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_iwdg.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_iwdg.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    27/01/2011
//    7   * @brief   This file contains all the IWDG firmware functions.
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
//   20   * FILE MDR32F9Qx_iwdg.c
//   21   */
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "MDR32F9Qx_config.h"
//   24 #include "MDR32F9Qx_iwdg.h"
//   25 
//   26 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_IWDG_C
//   27 
//   28 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   29   * @{
//   30   */
//   31 
//   32 /** @defgroup IWDG IWDG
//   33   * @{
//   34   */
//   35 
//   36 /** @defgroup IWDG_Private_TypesDefinitions IWDG Private Types Definitions
//   37   * @{
//   38   */
//   39 
//   40 /** @} */ /* End of group IWDG_Private_TypesDefinitions */
//   41 
//   42 /** @defgroup IWDG_Private_Defines IWDG Private Defines
//   43   * @{
//   44   */
//   45 
//   46 /* ---------------------- IWDG registers bit mask ----------------------------*/
//   47 
//   48 /* KR register bit mask */
//   49 #define KR_KEY_Reload       ((uint32_t)0xAAAA)
//   50 #define KR_KEY_Enable       ((uint32_t)0xCCCC)
//   51 #define KR_KEY_WriteEnable  ((uint32_t)0x5555)
//   52 #define KR_KEY_WriteDisable ((uint32_t)0x0000)
//   53 
//   54 /** @} */ /* End of group IWDG_Private_Defines */
//   55 
//   56 /** @defgroup IWDG_Private_Macros  IWDG Private Macros
//   57   * @{
//   58   */
//   59 
//   60 /** @} */ /* End of group IWDG_Private_Macros */
//   61 
//   62 /** @defgroup IWDG_Private_Variables  IWDG Private Variables
//   63   * @{
//   64   */
//   65 
//   66 /** @} */ /* End of group IWDG_Private_Variables */
//   67 
//   68 /** @defgroup IWDG_Private_FunctionPrototypes  IWDG Private Functions Prototypes
//   69   * @{
//   70   */
//   71 
//   72 /** @} */ /* End of group IWDG_Private_FunctionPrototypes */
//   73 
//   74 /** @defgroup IWDG_Private_Functions  IWDG Private Functions
//   75   * @{
//   76   */
//   77 
//   78 /**
//   79   * @brief  IWDG_WriteAccessEnable - Enables write access to IWDG_PR and IWDG_RLR registers.
//   80   * @param  None
//   81   * @retval None
//   82   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 void IWDG_WriteAccessEnable(void)
//   84 {
//   85   MDR_IWDG->KR = KR_KEY_WriteEnable;
IWDG_WriteAccessEnable:
        LDR.N    R0,??DataTable6  ;; 0x40068000
        MOVW     R1,#+21845
        STR      R1,[R0, #+0]
//   86 }
        BX       LR               ;; return
//   87 
//   88 /**
//   89   * @brief  IWDG_WriteAccessDisable - Disables write access to IWDG_PR and IWDG_RLR registers.
//   90   * @param  None
//   91   * @retval None
//   92   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void IWDG_WriteAccessDisable(void)
//   94 {
//   95   MDR_IWDG->KR = KR_KEY_WriteDisable;
IWDG_WriteAccessDisable:
        LDR.N    R0,??DataTable6  ;; 0x40068000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   96 }
        BX       LR               ;; return
//   97 
//   98 /**
//   99   * @brief  IWDG_SetPrescaler - Sets IWDG Prescaler value.
//  100   * @param  IWDG_Prescaler: specifies the IWDG Prescaler value.
//  101   *   This parameter can be one of the following values:
//  102   *     @arg IWDG_Prescaler_4: IWDG prescaler set to 4
//  103   *     @arg IWDG_Prescaler_8: IWDG prescaler set to 8
//  104   *     @arg IWDG_Prescaler_16: IWDG prescaler set to 16
//  105   *     @arg IWDG_Prescaler_32: IWDG prescaler set to 32
//  106   *     @arg IWDG_Prescaler_64: IWDG prescaler set to 64
//  107   *     @arg IWDG_Prescaler_128: IWDG prescaler set to 128
//  108   *     @arg IWDG_Prescaler_256: IWDG prescaler set to 256
//  109   * @retval None
//  110   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void IWDG_SetPrescaler(uint32_t IWDG_Prescaler)
//  112 {
//  113   /* Check the parameters */
//  114   assert_param(IS_IWDG_PRESCALER(IWDG_Prescaler));
//  115 
//  116   MDR_IWDG->PR = IWDG_Prescaler;
IWDG_SetPrescaler:
        LDR.N    R1,??DataTable6_1  ;; 0x40068004
        STR      R0,[R1, #+0]
//  117 }
        BX       LR               ;; return
//  118 
//  119 /**
//  120   * @brief  IWDG_SetReload - Sets IWDG Reload value.
//  121   * @param  Reload: specifies the IWDG Reload value.
//  122   *   This parameter must be a number between 0 and 0x0FFF.
//  123   * @retval None
//  124   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 void IWDG_SetReload(uint32_t Reload)
//  126 {
//  127   /* Check the parameters */
//  128   assert_param(IS_IWDG_RELOAD(Reload));
//  129 
//  130   MDR_IWDG->RLR = Reload;
IWDG_SetReload:
        LDR.N    R1,??DataTable6_2  ;; 0x40068008
        STR      R0,[R1, #+0]
//  131 }
        BX       LR               ;; return
//  132 
//  133 /**
//  134   * @brief  IWDG_ReloadCounter - Reloads IWDG counter with value defined in the reload register
//  135   *   (write access to IWDG_PR and IWDG_RLR registers disabled).
//  136   * @param  None
//  137   * @retval None
//  138   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  139 void IWDG_ReloadCounter(void)
//  140 {
//  141   MDR_IWDG->KR = KR_KEY_Reload;
IWDG_ReloadCounter:
        LDR.N    R0,??DataTable6  ;; 0x40068000
        MOVW     R1,#+43690
        STR      R1,[R0, #+0]
//  142 }
        BX       LR               ;; return
//  143 
//  144 /**
//  145   * @brief  IWDG_Enable - Enables IWDG (write access to IWDG_PR and IWDG_RLR registers disabled).
//  146   * @param  None
//  147   * @retval None
//  148   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void IWDG_Enable(void)
//  150 {
//  151   MDR_IWDG->KR = KR_KEY_Enable;
IWDG_Enable:
        LDR.N    R0,??DataTable6  ;; 0x40068000
        MOVW     R1,#+52428
        STR      R1,[R0, #+0]
//  152 }
        BX       LR               ;; return
//  153 
//  154 /**
//  155   * @brief  IWDG_GetFlagStatus - Checks whether the specified IWDG flag is set or not.
//  156   * @param  IWDG_FLAG: specifies the flag to check.
//  157   *   This parameter can be one of the following values:
//  158   *     @arg IWDG_FLAG_PVU: Prescaler Value Update on going
//  159   *     @arg IWDG_FLAG_RVU: Reload Value Update on going
//  160   * @retval The new state of IWDG_FLAG (SET or RESET).
//  161   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 FlagStatus IWDG_GetFlagStatus(uint32_t IWDG_FLAG)
//  163 {
//  164   FlagStatus bitstatus;
//  165   /* Check the parameters */
//  166   assert_param(IS_IWDG_FLAG(IWDG_FLAG));
//  167   if ((MDR_IWDG->SR & IWDG_FLAG) != (uint32_t)RESET)
IWDG_GetFlagStatus:
        LDR.N    R1,??DataTable6_3  ;; 0x4006800c
        LDR      R1,[R1, #+0]
        ANDS     R0,R0,R1
        IT       NE 
        MOVNE    R0,#+1
//  168   {
//  169     bitstatus = SET;
//  170   }
//  171   else
//  172   {
//  173     bitstatus = RESET;
//  174   }
//  175   /* Return the flag status */
//  176   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  177 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40068000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40068004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40068008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4006800c

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  178 
//  179 /** @} */ /* End of group IWDG_Private_Functions */
//  180 
//  181 /** @} */ /* End of group IWDG */
//  182 
//  183 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  184 
//  185 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  186 *
//  187 * END OF FILE MDR32F9Qx_iwdg.c */
//  188 
// 
// 80 bytes in section .text
// 
// 80 bytes of CODE memory
//
//Errors: none
//Warnings: none
