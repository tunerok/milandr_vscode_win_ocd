///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\CMSIS\CM3\D /
//                    eviceSupport\MDR32F9Qx\startup\iar\system_MDR32F9Qx.c   /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\CMSIS\CM3\D /
//                    eviceSupport\MDR32F9Qx\startup\iar\system_MDR32F9Qx.c   /
//                    --preprocess C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_ /
//                    Projects\MDR1986VE91_Eval\Demo\IAR_Systems\Debug\List\  /
//                    -lCN C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects /
//                    \MDR1986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lB      /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\system_MDR32F9 /
//                    Qx.s                                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME system_MDR32F9Qx

        #define SHT_PROGBITS 0x1

        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\CMSIS\CM3\DeviceSupport\MDR32F9Qx\startup\iar\system_MDR32F9Qx.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    system_MDR32F9Qx.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    11/06/2010
//    7   * @brief   CMSIS Cortex-M3 Device Peripheral Access Layer System Source File.
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
//   20   * FILE system_MDR32F9Qx.c
//   21   */
//   22 
//   23 
//   24 /** @addtogroup __CMSIS CMSIS
//   25   * @{
//   26   */
//   27 
//   28 /** @defgroup MDR1986VE9x
//   29   *  @{
//   30   */
//   31 
//   32 /** @addtogroup __MDR32F9QX MDR32F9QX System
//   33   * @{
//   34   */
//   35 
//   36 /** @addtogroup System_Private_Includes System Private Includes
//   37   * @{
//   38   */
//   39 
//   40 #include "MDR32Fx.h"
//   41 #include "MDR32F9Qx_config.h"
//   42 
//   43 /** @} */ /* End of group System_Private_Includes */
//   44 
//   45 /** @addtogroup __MDR32F9QX_System_Private_Variables MDR32F9QX System Private Variables
//   46   * @{
//   47   */
//   48 
//   49 /*******************************************************************************
//   50 *  Clock Definitions
//   51 *******************************************************************************/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52   uint32_t SystemCoreClock = (uint32_t)8000000;         /*!< System Clock Frequency (Core Clock)
SystemCoreClock:
        DATA
        DC32 8000000
//   53                                                          *   default value */
//   54 
//   55 /** @} */ /* End of group __MDR32F9QX_System_Private_Variables */
//   56 
//   57 /** @addtogroup __MDR32F9QX_System_Private_Functions MDR32F9QX System Private Functions
//   58   * @{
//   59   */
//   60 
//   61 /**
//   62   * @brief  Update SystemCoreClock according to Clock Register Values
//   63   * @note   None
//   64   * @param  None
//   65   * @retval None
//   66   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void SystemCoreClockUpdate (void)
//   68 {
//   69   uint32_t cpu_c1_freq, cpu_c2_freq, cpu_c3_freq;
//   70   uint32_t pll_mul;
//   71 
//   72   /* Compute CPU_CLK frequency */
//   73 
//   74   /* Determine CPU_C1 frequency */
//   75   if ((MDR_RST_CLK->CPU_CLOCK & (uint32_t)0x00000002) == (uint32_t)0x00000002)
SystemCoreClockUpdate:
        LDR.N    R0,??DataTable1  ;; 0x40020004
        LDR.N    R1,??DataTable1_1  ;; 0x7a1200
        LDR      R2,[R0, #+8]
        MOV      R2,R1
//   76   {
//   77     cpu_c1_freq = HSE_Value;
//   78   }
//   79   else
//   80   {
//   81     cpu_c1_freq = HSI_Value;
//   82   }
//   83 
//   84   if ((MDR_RST_CLK->CPU_CLOCK & (uint32_t)0x00000001) == (uint32_t)0x00000001)
        LDR      R3,[R0, #+8]
        LSLS     R3,R3,#+31
        IT       MI 
        LDRMI.N  R2,??DataTable1_2  ;; 0x3d0900
//   85   {
//   86     cpu_c1_freq /= 2;
//   87   }
//   88 
//   89   /* Determine CPU_C2 frequency */
//   90   cpu_c2_freq = cpu_c1_freq;
//   91 
//   92   if ((MDR_RST_CLK->CPU_CLOCK & (uint32_t)0x00000004) == (uint32_t)0x00000004)
        LDR      R3,[R0, #+8]
        LSLS     R3,R3,#+29
        BPL.N    ??SystemCoreClockUpdate_0
//   93   {
//   94     /* Determine CPU PLL output frequency */
//   95     pll_mul = ((MDR_RST_CLK->PLL_CONTROL >> 8) & (uint32_t)0x0F) + 1;
        LDR      R3,[R0, #+0]
//   96     cpu_c2_freq *= pll_mul;
        UBFX     R3,R3,#+8,#+4
        ADDS     R3,R3,#+1
        MULS     R2,R3,R2
//   97   }
//   98 
//   99   /*Select CPU_CLK from HSI, CPU_C3, LSE, LSI cases */
//  100   switch ((MDR_RST_CLK->CPU_CLOCK >> 8) & (uint32_t)0x03)
??SystemCoreClockUpdate_0:
        LDR      R3,[R0, #+8]
        LSRS     R3,R3,#+8
        ANDS     R3,R3,#0x3
        BEQ.N    ??SystemCoreClockUpdate_1
        CMP      R3,#+2
        BEQ.N    ??SystemCoreClockUpdate_2
        BCS.N    ??SystemCoreClockUpdate_3
//  101   {
//  102     case 0 :
//  103       /* HSI */
//  104       SystemCoreClock = HSI_Value;
//  105       break;
//  106     case 1 :
//  107       /* CPU_C3 */
//  108       /* Determine CPU_C3 frequency */
//  109       cpu_c3_freq = cpu_c2_freq / ((MDR_RST_CLK->CPU_CLOCK >> 4 & (uint32_t)0x0F) + 1);
        LDR      R0,[R0, #+8]
//  110       SystemCoreClock = cpu_c3_freq;
        UBFX     R0,R0,#+4,#+4
        ADDS     R0,R0,#+1
        UDIV     R1,R2,R0
//  111       break;
        B.N      ??SystemCoreClockUpdate_1
//  112     case 2 :
//  113       /* LSE */
//  114       SystemCoreClock = LSE_Value;
??SystemCoreClockUpdate_2:
        MOV      R1,#+32768
//  115       break;
        B.N      ??SystemCoreClockUpdate_1
//  116     default : /* case 3 */
//  117       /* LSI */
//  118       SystemCoreClock = LSI_Value;
??SystemCoreClockUpdate_3:
        MOVW     R1,#+40000
//  119       break;
??SystemCoreClockUpdate_1:
        LDR.N    R0,??DataTable1_3
        STR      R1,[R0, #+0]
//  120   }
//  121 }
        BX       LR               ;; return
//  122 
//  123 /**
//  124   * @brief  Setup the microcontroller system
//  125   *         RST clock configuration to the default reset state
//  126   *         Setup SystemCoreClock variable.
//  127   * @note   This function should be used only after reset.
//  128   * @param  None
//  129   * @retval None
//  130   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void SystemInit (void)
//  132 {
//  133   SCB->VTOR = 0x08000000;
SystemInit:
        LDR.N    R0,??DataTable1_4  ;; 0xe000ed08
        MOV      R1,#+134217728
        STR      R1,[R0, #+0]
//  134   /* Reset the RST clock configuration to the default reset state */
//  135 
//  136   /* Reset all clock but RST_CLK & BKP_CLC bits */
//  137   MDR_RST_CLK->PER_CLOCK   = (uint32_t)0x8000010;
        LDR.N    R0,??DataTable1  ;; 0x40020004
        LDR.N    R1,??DataTable1_5  ;; 0x8000010
        STR      R1,[R0, #+24]
//  138 
//  139   /* Reset CPU_CLOCK bits */
//  140   MDR_RST_CLK->CPU_CLOCK   &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  141 
//  142   /* Reset PLL_CONTROL bits */
//  143   MDR_RST_CLK->PLL_CONTROL &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  144 
//  145   /* Reset HSEON and HSEBYP bits */
//  146   MDR_RST_CLK->HS_CONTROL  &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  147 
//  148   /* Reset USB_CLOCK bits */
//  149   MDR_RST_CLK->USB_CLOCK   &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  150 
//  151   /* Reset ADC_MCO_CLOCK bits */
//  152   MDR_RST_CLK->ADC_MCO_CLOCK   &= (uint32_t)0x00000000;
        LDR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  153 
//  154   SystemCoreClockUpdate();
        B.N      SystemCoreClockUpdate
//  155 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x8000010

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  156 
//  157 /** @} */ /* End of group __MDR32F9QX_System_Private_Functions */
//  158 
//  159 /** @} */ /* End of group __MDR32F9QX */
//  160 
//  161 /** @} */ /* End of group MDR1986VE9x */
//  162 
//  163 /** @} */ /* End of group __CMSIS */
//  164 
//  165 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  166 *
//  167 * END OF FILE system_MDR32F9Qx.c */
// 
//   4 bytes in section .data
// 148 bytes in section .text
// 
// 148 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
