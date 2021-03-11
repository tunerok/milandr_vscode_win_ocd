///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_leds.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_leds.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_leds.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_leds

        #define SHT_PROGBITS 0x1

        EXTERN CurrentFont
        EXTERN CurrentLights
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTS
        EXTERN PORT_ResetBits
        EXTERN ShiftLights

        PUBLIC LightsOnFunc

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_leds.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_leds.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file contains all the "LEDs" menu handlers
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
//   21 
//   22 #include <MDR32F9Qx_port.h>
//   23 #include "Menu.h"
//   24 #include "Menu_items.h"
//   25 #include "leds.h"
//   26 #include "lcd.h"
//   27 #include "text.h"
//   28 #include "joystick.h"
//   29 
//   30 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   31   * @{
//   32   */
//   33 
//   34 /** @addtogroup Menu Menu
//   35   * @{
//   36   */
//   37 
//   38 /** @addtogroup Menu_LEDs Menu LEDs
//   39   * @{
//   40   */
//   41 
//   42 /** @defgroup Menu_LEDs_Private_Constants Menu LEDs Private Constants
//   43   * @{
//   44   */
//   45 
//   46 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//   47 #define LED_PATTERN                      0xFDF05380
//   48 #define LED_DELAY                        35000
//   49 #elif defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) || \ 
//   50       defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//   51 #define LED_PATTERN                      0xAAAAAAAA
//   52 #define LED_DELAY                        35000
//   53 #endif
//   54 
//   55 /** @} */ /* End of group Menu_LEDs_Private_Constants */
//   56 
//   57 /** @defgroup Menu_LEDs_Private_Functions Menu LEDs Private Functions
//   58   * @{
//   59   */
//   60 
//   61 
//   62 /*******************************************************************************
//   63 * Function Name  : LightsOnFunc
//   64 * Description    : Enables or disables LEDs toggling.
//   65 * Input          : None
//   66 * Output         : None
//   67 * Return         : None
//   68 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 void LightsOnFunc(void)
//   70 {
LightsOnFunc:
        PUSH     {R4-R6,LR}
//   71   uint32_t tck, tck_led;
//   72 #if defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) || \ 
//   73     defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//   74   uint32_t saveport;
//   75 #endif
//   76 
//   77   /* Display hint on the screen and wait for key up */
//   78   LCD_CLS();
        BL       LCD_CLS
//   79   CurrentMethod = MET_AND;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//   80   CurrentFont = &Font_6x8;
        LDR.N    R4,??DataTable2_1
        LDR.N    R0,??DataTable2_2
        STR      R0,[R4, #+0]
//   81   LCD_PUTS(0, 0,                       "   Press SEL      ");
        ADR.W    R2,`?<Constant "   Press SEL      ">`
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_PUTS
//   82   LCD_PUTS(0, CurrentFont->Height + 2, "   for return     ");
        ADR.W    R2,`?<Constant "   for return     ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+2
        UXTB     R1,R1
        MOVS     R0,#+0
        BL       LCD_PUTS
//   83   WAIT_UNTIL_KEY_RELEASED(SEL);
??LightsOnFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??LightsOnFunc_0
//   84 
//   85 #if defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) || \ 
//   86     defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//   87 
//   88   /* Save LEDs_PORT port current state, because LEDs pins are also used
//   89    * for LCD control */
//   90   saveport = PORT_ReadInputData(LEDs_PORT);
//   91 #endif
//   92 
//   93   /* All LEDs switch off */
//   94   PORT_ResetBits(LEDs_PORT, LEDs_PINs);
        MOV      R1,#+31744
        LDR.N    R0,??DataTable2_3  ;; 0x400c0000
        BL       PORT_ResetBits
//   95 
//   96   /* Invoke "special effect" */
//   97   CurrentLights = __SHLC(LED_PATTERN, LEDs_OFS);
        LDR.N    R4,??DataTable2_4
        LDR.N    R0,??DataTable2_5  ;; 0xc14e03f7
        STR      R0,[R4, #+0]
//   98   for (tck = 0, tck_led = 0; !KEY_PRESSED(SEL); tck++)
        MOVS     R5,#+0
        MOVS     R6,#+0
        B.N      ??LightsOnFunc_1
//   99   {
//  100     if (tck == tck_led)
??LightsOnFunc_2:
        CMP      R5,R6
        BNE.N    ??LightsOnFunc_3
//  101     {
//  102       tck_led += LED_DELAY;
        ADD      R6,R6,#+34816
        ADDS     R6,R6,#+184
//  103       ShiftLights();
        BL       ShiftLights
//  104     }
//  105   }
??LightsOnFunc_3:
        ADDS     R5,R5,#+1
??LightsOnFunc_1:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??LightsOnFunc_2
//  106   /* SEL is pressed - turn leds off and return to the menu */
//  107   CurrentLights = 0x0;
        STR      R0,[R4, #+0]
//  108   ShiftLights();
        BL       ShiftLights
//  109 
//  110 #if defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) || \ 
//  111     defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//  112 
//  113   /* Restore LEDs_PORT port state */
//  114   PORT_Write(LEDs_PORT, saveport);
//  115 #endif
//  116 
//  117   DisplayMenu();
        POP      {R4-R6,LR}
        B.W      DisplayMenu
//  118 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x400c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     CurrentLights

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0xc14e03f7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "   Press SEL      ">`:
        DC8 "   Press SEL      "
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "   for return     ">`:
        DC8 "   for return     "
        DC8 0

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
//  120 /** @} */ /* End of group Menu_LEDs_Private_Functions */
//  121 
//  122 /** @} */ /* End of group Menu_LEDs */
//  123 
//  124 /** @} */ /* End of group Menu */
//  125 
//  126 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  127 
//  128 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  129 *
//  130 * END OF FILE Menu_leds.c */
//  131 
// 
// 180 bytes in section .text
// 
// 180 bytes of CODE memory
//
//Errors: none
//Warnings: none
