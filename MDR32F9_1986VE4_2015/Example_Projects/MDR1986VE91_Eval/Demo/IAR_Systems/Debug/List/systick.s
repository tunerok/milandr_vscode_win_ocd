///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:04 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\systick.c                              /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\systick.c --preprocess                 /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\systick.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME systick

        #define SHT_PROGBITS 0x1

        EXTERN TimerCounter

        PUBLIC SysTickDelay
        PUBLIC SysTickStart
        PUBLIC SysTickStop

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\systick.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    systick.c
//    4   * @author  Phyton Application Team
//    5   * @version V2.0.0
//    6   * @date    10.09.2010
//    7   * @brief   This file contains all the low-level utilities for work with
//    8   *          the system timer.
//    9   ******************************************************************************
//   10   * <br><br>
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   19   */
//   20 
//   21 /* Includes ------------------------------------------------------------------*/
//   22 #include "MDR32F9Qx_it.h"
//   23 
//   24 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   25   * @{
//   26   */
//   27 
//   28 /** @addtogroup Interrupt_Service_Routines Interrupt Service Routines
//   29   * @{
//   30   */
//   31 
//   32 /** @addtogroup Systick_Routines Systick Routines
//   33   * @{
//   34   */
//   35 
//   36 /** @defgroup Systick_Private_Functions Systick Private Functions
//   37   * @{
//   38   */
//   39 
//   40 /*******************************************************************************
//   41 * Function Name  : SysTickStart
//   42 * Description    : Starts the timer
//   43 * Input          : ticks - starting timer value
//   44 * Output         : None
//   45 * Return         : None
//   46 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void SysTickStart(uint32_t ticks)
//   48 {
//   49   SysTick->LOAD = ticks;
SysTickStart:
        LDR.N    R1,??DataTable2  ;; 0xe000e010
        STR      R0,[R1, #+4]
//   50   SysTick->CTRL = SysTick_CTRL_ENABLE_Msk | SysTick_CTRL_TICKINT_Msk | \ 
//   51                   SysTick_CTRL_CLKSOURCE_Msk;
        MOVS     R0,#+7
        STR      R0,[R1, #+0]
//   52 }
        BX       LR               ;; return
//   53 
//   54 /*******************************************************************************
//   55 * Function Name  : SysTickStop
//   56 * Description    : Stops the timer
//   57 * Input          : None
//   58 * Output         : None
//   59 * Return         : None
//   60 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void SysTickStop(void)
//   62 {
//   63   SysTick->CTRL &= ~SysTick_CTRL_ENABLE_Msk;
SysTickStop:
        LDR.N    R0,??DataTable2  ;; 0xe000e010
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   64 }
        BX       LR               ;; return
//   65 
//   66 /*******************************************************************************
//   67 * Function Name  : SysTickDelay
//   68 * Description    : Delay function (systick-based)
//   69 * Input          : None
//   70 * Output         : None
//   71 * Return         : None
//   72 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void SysTickDelay(uint32_t ticks)
//   74 {
//   75   if (ticks)
SysTickDelay:
        CBZ.N    R0,??SysTickDelay_0
//   76   {
//   77     TimerCounter = ticks;
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   78     SysTickStart(ticks);
        LDR.N    R2,??DataTable2  ;; 0xe000e010
        STR      R0,[R2, #+4]
        MOVS     R0,#+7
        STR      R0,[R2, #+0]
//   79     while (TimerCounter);
??SysTickDelay_1:
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??SysTickDelay_1
//   80     SysTickStop();
        LDR      R0,[R2, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R2, #+0]
//   81   }
//   82 }
??SysTickDelay_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     TimerCounter

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   83 
//   84 /** @} */ /* End of group Systick_Private_Functions */
//   85 
//   86 /** @} */ /* End of group Systick_Routines */
//   87 
//   88 /** @} */ /* End of group Interrupt_Service_Routines */
//   89 
//   90 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//   91 
//   92 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//   93 *
//   94 * END OF FILE systick.c */
//   95 
// 
// 60 bytes in section .text
// 
// 60 bytes of CODE memory
//
//Errors: none
//Warnings: none
