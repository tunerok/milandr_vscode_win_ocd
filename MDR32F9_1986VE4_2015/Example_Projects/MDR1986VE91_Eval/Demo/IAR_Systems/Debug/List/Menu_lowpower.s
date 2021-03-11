///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_lowpower.c                        /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_lowpower.c --preprocess           /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_lowpower. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_lowpower

        #define SHT_PROGBITS 0x1

        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN DisplayMenuTitle
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTS
        EXTERN PORT_DeInit
        EXTERN POWER_EnterSTANDBYMode
        EXTERN POWER_EnterSTOPMode
        EXTERN RST_CLK_PCLKcmd
        EXTERN STOPModeStatus

        PUBLIC Clock_RestoreConfig
        PUBLIC Clock_SaveConfig
        PUBLIC LowPower_Init
        PUBLIC STANDBYMode_RTCAlarm
        PUBLIC STANDBYMode_WAKEUP
        PUBLIC STOPMode_RTCAlarm

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_lowpower.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_lowpower.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.2.0
//    6   * @date    05.12.2011
//    7   * @brief   This file contains all the "Low Power" menu handlers.
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
//   19 /* Includes ------------------------------------------------------------------*/
//   20 #include "MDR32F9Qx_config.h"
//   21 #include <MDR32Fx.h>
//   22 #include <MDR32F9Qx_port.h>
//   23 #include <MDR32F9Qx_power.h>
//   24 #include <MDR32F9Qx_rst_clk.h>
//   25 #include <MDR32F9Qx_bkp.h>
//   26 #include "systick.h"
//   27 #include "Menu.h"
//   28 #include "Menu_items.h"
//   29 #include "leds.h"
//   30 #include "lcd.h"
//   31 #include "text.h"
//   32 #include "joystick.h"
//   33 #include "time.h"
//   34 #include "demo_init.h"
//   35 #include "MDR32F9Qx_it.h"
//   36 
//   37 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   38   * @{
//   39   */
//   40 
//   41 /** @addtogroup Menu Menu
//   42   * @{
//   43   */
//   44 
//   45 /** @addtogroup Menu_LowPower Menu Low Power
//   46   * @{
//   47   */
//   48 
//   49 /** @defgroup Menu_LowPower_Private_Constants Menu Low Power Private Constants
//   50   * @{
//   51   */
//   52 
//   53 /** @} */ /* End of group Menu_LowPower_Private_Constants */
//   54 
//   55 /** @defgroup Menu_LowPower_Private_Types Menu Low Power Private Types
//   56   * @{
//   57   */
//   58 
//   59 typedef struct
//   60 {
//   61   uint32_t OE;
//   62   uint32_t FUNC;
//   63   uint32_t ANALOG;
//   64   uint32_t PULL;
//   65   uint32_t PD;
//   66   uint32_t PWR;
//   67   uint32_t GFEN;
//   68 }PORTConfigData;
//   69 
//   70 typedef struct
//   71 {
//   72   uint32_t PVDCS;
//   73   uint32_t CPU_CLOCK;
//   74   uint32_t PER_CLOCK;
//   75 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//   76   uint32_t EBC_CONTROL;
//   77 #endif
//   78 }ClockConfigData;
//   79 
//   80 /** @} */ /* End of group Menu_LowPower_Private_Types */
//   81 
//   82 /** @defgroup Menu_LowPower_Private_Macros Menu Low Power Private Macros
//   83   * @{
//   84   */
//   85 
//   86 /** @} */ /* End of group Menu_LowPower_Private_Macros */
//   87 
//   88 /** @defgroup Menu_LowPower_Private_Variables Menu Low Power Private Variables
//   89   * @{
//   90   */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   91 static PORTConfigData PORTA_Data, PORTB_Data, PORTC_Data, PORTD_Data, PORTE_Data,
PORTA_Data:
        DS8 28
        DS8 28
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
PORTD_Data:
        DS8 28
        DS8 28
        DS8 28
//   92                       PORTF_Data;
//   93 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   94 static ClockConfigData ClockData;
ClockData:
        DS8 16
//   95 
//   96 /** @} */ /* End of group Menu_LowPower_Private_Variables */
//   97 
//   98 /** @defgroup Menu_LowPower_Private_Functions Menu Low Power Private Functions
//   99   * @{
//  100   */
//  101 
//  102 /*******************************************************************************
//  103 * Function Name  : LowPower_Init
//  104 * Description    : Initializes Low Power application.
//  105 * Input          : None
//  106 * Output         : None
//  107 * Return         : None
//  108 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 void LowPower_Init(void)
//  110 {
//  111   RST_CLK_PCLKcmd(RST_CLK_PCLK_POWER, ENABLE);
LowPower_Init:
        MOVS     R1,#+1
        MOV      R0,#+2048
        B.W      RST_CLK_PCLKcmd
//  112 }
//  113 
//  114 /*******************************************************************************
//  115 * Function Name  : PORT_SaveConfig
//  116 * Description    : Save all PORTs Configurations.
//  117 * Input          : None
//  118 * Output         : PORTA_Data, PORTB_Data, PORTC_Data, PORTD_Data, PORTE_Data,
//  119 *                : PORTF_Data.
//  120 * Return         : None
//  121 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 static void PORT_SaveConfig(void)
//  123 {
PORT_SaveConfig:
        PUSH     {R4-R8,LR}
//  124   PORTA_Data.ANALOG = MDR_PORTA->ANALOG;
        LDR.W    R0,??DataTable24  ;; 0x400a8000
        LDR.W    R1,??DataTable24_1
        LDR      R2,[R0, #+12]
        STR      R2,[R1, #+8]
//  125   PORTA_Data.FUNC   = MDR_PORTA->FUNC;
        LDR      R2,[R0, #+8]
        STR      R2,[R1, #+4]
//  126   PORTA_Data.GFEN   = MDR_PORTA->GFEN;
        LDR      R2,[R0, #+28]
        STR      R2,[R1, #+24]
//  127   PORTA_Data.OE     = MDR_PORTA->OE;
        LDR      R2,[R0, #+4]
        STR      R2,[R1, #+0]
//  128   PORTA_Data.PD     = MDR_PORTA->PD;
        LDR      R2,[R0, #+20]
        STR      R2,[R1, #+16]
//  129   PORTA_Data.PULL   = MDR_PORTA->PULL;
        LDR      R2,[R0, #+16]
        STR      R2,[R1, #+12]
//  130   PORTA_Data.PWR    = MDR_PORTA->PWR;
        LDR      R2,[R0, #+24]
        STR      R2,[R1, #+20]
//  131 
//  132   PORTB_Data.ANALOG = MDR_PORTB->ANALOG;
        LDR.W    R4,??DataTable24_2  ;; 0x400b0000
        LDR      R2,[R4, #+12]
        STR      R2,[R1, #+36]
//  133   PORTB_Data.FUNC   = MDR_PORTB->FUNC;
        LDR      R2,[R4, #+8]
        STR      R2,[R1, #+32]
//  134   PORTB_Data.GFEN   = MDR_PORTB->GFEN;
        LDR      R2,[R4, #+28]
        STR      R2,[R1, #+52]
//  135   PORTB_Data.OE     = MDR_PORTB->OE;
        LDR      R2,[R4, #+4]
        STR      R2,[R1, #+28]
//  136   PORTB_Data.PD     = MDR_PORTB->PD;
        LDR      R2,[R4, #+20]
        STR      R2,[R1, #+44]
//  137   PORTB_Data.PULL   = MDR_PORTB->PULL;
        LDR      R2,[R4, #+16]
        STR      R2,[R1, #+40]
//  138   PORTB_Data.PWR    = MDR_PORTB->PWR;
        LDR      R2,[R4, #+24]
        STR      R2,[R1, #+48]
//  139 
//  140   PORTC_Data.ANALOG = MDR_PORTC->ANALOG;
        LDR.W    R5,??DataTable24_3  ;; 0x400b8000
        LDR      R2,[R5, #+12]
        STR      R2,[R1, #+64]
//  141   PORTC_Data.FUNC   = MDR_PORTC->FUNC;
        LDR      R2,[R5, #+8]
        STR      R2,[R1, #+60]
//  142   PORTC_Data.GFEN   = MDR_PORTC->GFEN;
        LDR      R2,[R5, #+28]
        STR      R2,[R1, #+80]
//  143   PORTC_Data.OE     = MDR_PORTC->OE;
        LDR      R2,[R5, #+4]
        STR      R2,[R1, #+56]
//  144   PORTC_Data.PD     = MDR_PORTC->PD;
        LDR      R2,[R5, #+20]
        STR      R2,[R1, #+72]
//  145   PORTC_Data.PULL   = MDR_PORTC->PULL;
        LDR      R2,[R5, #+16]
        STR      R2,[R1, #+68]
//  146   PORTC_Data.PWR    = MDR_PORTC->PWR;
        LDR      R2,[R5, #+24]
        STR      R2,[R1, #+76]
//  147 
//  148   PORTD_Data.ANALOG = MDR_PORTD->ANALOG;
        LDR.N    R6,??DataTable24_4  ;; 0x400c0000
        LDR.N    R1,??DataTable24_5
        LDR      R2,[R6, #+12]
        STR      R2,[R1, #+8]
//  149   PORTD_Data.FUNC   = MDR_PORTD->FUNC;
        LDR      R2,[R6, #+8]
        STR      R2,[R1, #+4]
//  150   PORTD_Data.GFEN   = MDR_PORTD->GFEN;
        LDR      R2,[R6, #+28]
        STR      R2,[R1, #+24]
//  151   PORTD_Data.OE     = MDR_PORTD->OE;
        LDR      R2,[R6, #+4]
        STR      R2,[R1, #+0]
//  152   PORTD_Data.PD     = MDR_PORTD->PD;
        LDR      R2,[R6, #+20]
        STR      R2,[R1, #+16]
//  153   PORTD_Data.PULL   = MDR_PORTD->PULL;
        LDR      R2,[R6, #+16]
        STR      R2,[R1, #+12]
//  154   PORTD_Data.PWR    = MDR_PORTD->PWR;
        LDR      R2,[R6, #+24]
        STR      R2,[R1, #+20]
//  155 
//  156   PORTE_Data.ANALOG = MDR_PORTE->ANALOG;
        LDR.N    R7,??DataTable24_6  ;; 0x400c8000
        LDR      R2,[R7, #+12]
        STR      R2,[R1, #+36]
//  157   PORTE_Data.FUNC   = MDR_PORTE->FUNC;
        LDR      R2,[R7, #+8]
        STR      R2,[R1, #+32]
//  158   PORTE_Data.GFEN   = MDR_PORTE->GFEN;
        LDR      R2,[R7, #+28]
        STR      R2,[R1, #+52]
//  159   PORTE_Data.OE     = MDR_PORTE->OE;
        LDR      R2,[R7, #+4]
        STR      R2,[R1, #+28]
//  160   PORTE_Data.PD     = MDR_PORTE->PD;
        LDR      R2,[R7, #+20]
        STR      R2,[R1, #+44]
//  161   PORTE_Data.PULL   = MDR_PORTE->PULL;
        LDR      R2,[R7, #+16]
        STR      R2,[R1, #+40]
//  162   PORTE_Data.PWR    = MDR_PORTE->PWR;
        LDR      R2,[R7, #+24]
        STR      R2,[R1, #+48]
//  163 
//  164   PORTF_Data.ANALOG = MDR_PORTF->ANALOG;
        LDR.W    R8,??DataTable24_7  ;; 0x400e8000
        LDR      R2,[R8, #+12]
        STR      R2,[R1, #+64]
//  165   PORTF_Data.FUNC   = MDR_PORTF->FUNC;
        LDR      R2,[R8, #+8]
        STR      R2,[R1, #+60]
//  166   PORTF_Data.GFEN   = MDR_PORTF->GFEN;
        LDR      R2,[R8, #+28]
        STR      R2,[R1, #+80]
//  167   PORTF_Data.OE     = MDR_PORTF->OE;
        LDR      R2,[R8, #+4]
        STR      R2,[R1, #+56]
//  168   PORTF_Data.PD     = MDR_PORTF->PD;
        LDR      R2,[R8, #+20]
        STR      R2,[R1, #+72]
//  169   PORTF_Data.PULL   = MDR_PORTF->PULL;
        LDR      R2,[R8, #+16]
        STR      R2,[R1, #+68]
//  170   PORTF_Data.PWR    = MDR_PORTF->PWR;
        LDR      R2,[R8, #+24]
        STR      R2,[R1, #+76]
//  171 
//  172   /* Configure all PORTs for low power consumption */
//  173   PORT_DeInit(MDR_PORTA);
        BL       PORT_DeInit
//  174   PORT_DeInit(MDR_PORTB);
        MOV      R0,R4
        BL       PORT_DeInit
//  175   PORT_DeInit(MDR_PORTC);
        MOV      R0,R5
        BL       PORT_DeInit
//  176   PORT_DeInit(MDR_PORTD);
        MOV      R0,R6
        BL       PORT_DeInit
//  177   PORT_DeInit(MDR_PORTE);
        MOV      R0,R7
        BL       PORT_DeInit
//  178   PORT_DeInit(MDR_PORTF);
        MOV      R0,R8
        POP      {R4-R8,LR}
        B.W      PORT_DeInit
//  179 }
//  180 
//  181 /*******************************************************************************
//  182 * Function Name  : PORT_RestoreConfig
//  183 * Description    : Restores all PORTs Configurations.
//  184 * Input          : None
//  185 * Output         : None
//  186 * Return         : None
//  187 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 static void PORT_RestoreConfig(void)
//  189 {
//  190   MDR_PORTA->ANALOG = PORTA_Data.ANALOG;
PORT_RestoreConfig:
        LDR.N    R1,??DataTable24_8  ;; 0x400a8004
        LDR.N    R0,??DataTable24_1
        LDR      R2,[R0, #+8]
        STR      R2,[R1, #+8]
//  191   MDR_PORTA->FUNC   = PORTA_Data.FUNC;
        LDR      R2,[R0, #+4]
        STR      R2,[R1, #+4]
//  192   MDR_PORTA->GFEN   = PORTA_Data.GFEN;
        LDR      R2,[R0, #+24]
        STR      R2,[R1, #+24]
//  193   MDR_PORTA->OE     = PORTA_Data.OE;
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
//  194   MDR_PORTA->PD     = PORTA_Data.PD;
        LDR      R2,[R0, #+16]
        STR      R2,[R1, #+16]
//  195   MDR_PORTA->PULL   = PORTA_Data.PULL;
        LDR      R2,[R0, #+12]
        STR      R2,[R1, #+12]
//  196   MDR_PORTA->PWR    = PORTA_Data.PWR;
        LDR      R2,[R0, #+20]
        STR      R2,[R1, #+20]
//  197 
//  198   MDR_PORTB->ANALOG = PORTB_Data.ANALOG;
        LDR.N    R1,??DataTable24_9  ;; 0x400b0004
        LDR      R2,[R0, #+36]
        STR      R2,[R1, #+8]
//  199   MDR_PORTB->FUNC   = PORTB_Data.FUNC;
        LDR      R2,[R0, #+32]
        STR      R2,[R1, #+4]
//  200   MDR_PORTB->GFEN   = PORTB_Data.GFEN;
        LDR      R2,[R0, #+52]
        STR      R2,[R1, #+24]
//  201   MDR_PORTB->OE     = PORTB_Data.OE;
        LDR      R2,[R0, #+28]
        STR      R2,[R1, #+0]
//  202   MDR_PORTB->PD     = PORTB_Data.PD;
        LDR      R2,[R0, #+44]
        STR      R2,[R1, #+16]
//  203   MDR_PORTB->PULL   = PORTB_Data.PULL;
        LDR      R2,[R0, #+40]
        STR      R2,[R1, #+12]
//  204   MDR_PORTB->PWR    = PORTB_Data.PWR;
        LDR      R2,[R0, #+48]
        STR      R2,[R1, #+20]
//  205 
//  206   MDR_PORTC->ANALOG = PORTC_Data.ANALOG;
        LDR.N    R1,??DataTable24_10  ;; 0x400b8004
        LDR      R2,[R0, #+64]
        STR      R2,[R1, #+8]
//  207   MDR_PORTC->FUNC   = PORTC_Data.FUNC;
        LDR      R2,[R0, #+60]
        STR      R2,[R1, #+4]
//  208   MDR_PORTC->GFEN   = PORTC_Data.GFEN;
        LDR      R2,[R0, #+80]
        STR      R2,[R1, #+24]
//  209   MDR_PORTC->OE     = PORTC_Data.OE;
        LDR      R2,[R0, #+56]
        STR      R2,[R1, #+0]
//  210   MDR_PORTC->PD     = PORTC_Data.PD;
        LDR      R2,[R0, #+72]
        STR      R2,[R1, #+16]
//  211   MDR_PORTC->PULL   = PORTC_Data.PULL;
        LDR      R2,[R0, #+68]
        STR      R2,[R1, #+12]
//  212   MDR_PORTC->PWR    = PORTC_Data.PWR;
        LDR      R0,[R0, #+76]
        STR      R0,[R1, #+20]
//  213 
//  214   MDR_PORTD->ANALOG = PORTD_Data.ANALOG;
        LDR.N    R1,??DataTable24_11  ;; 0x400c0004
        LDR.N    R0,??DataTable24_5
        LDR      R2,[R0, #+8]
        STR      R2,[R1, #+8]
//  215   MDR_PORTD->FUNC   = PORTD_Data.FUNC;
        LDR      R2,[R0, #+4]
        STR      R2,[R1, #+4]
//  216   MDR_PORTD->GFEN   = PORTD_Data.GFEN;
        LDR      R2,[R0, #+24]
        STR      R2,[R1, #+24]
//  217   MDR_PORTD->OE     = PORTD_Data.OE;
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
//  218   MDR_PORTD->PD     = PORTD_Data.PD;
        LDR      R2,[R0, #+16]
        STR      R2,[R1, #+16]
//  219   MDR_PORTD->PULL   = PORTD_Data.PULL;
        LDR      R2,[R0, #+12]
        STR      R2,[R1, #+12]
//  220   MDR_PORTD->PWR    = PORTD_Data.PWR;
        LDR      R2,[R0, #+20]
        STR      R2,[R1, #+20]
//  221 
//  222   MDR_PORTE->ANALOG = PORTE_Data.ANALOG;
        LDR.N    R1,??DataTable24_12  ;; 0x400c8004
        LDR      R2,[R0, #+36]
        STR      R2,[R1, #+8]
//  223   MDR_PORTE->FUNC   = PORTE_Data.FUNC;
        LDR      R2,[R0, #+32]
        STR      R2,[R1, #+4]
//  224   MDR_PORTE->GFEN   = PORTE_Data.GFEN;
        LDR      R2,[R0, #+52]
        STR      R2,[R1, #+24]
//  225   MDR_PORTE->OE     = PORTE_Data.OE;
        LDR      R2,[R0, #+28]
        STR      R2,[R1, #+0]
//  226   MDR_PORTE->PD     = PORTE_Data.PD;
        LDR      R2,[R0, #+44]
        STR      R2,[R1, #+16]
//  227   MDR_PORTE->PULL   = PORTE_Data.PULL;
        LDR      R2,[R0, #+40]
        STR      R2,[R1, #+12]
//  228   MDR_PORTE->PWR    = PORTE_Data.PWR;
        LDR      R2,[R0, #+48]
        STR      R2,[R1, #+20]
//  229 
//  230   MDR_PORTF->ANALOG = PORTF_Data.ANALOG;
        LDR.N    R1,??DataTable24_13  ;; 0x400e8004
        LDR      R2,[R0, #+64]
        STR      R2,[R1, #+8]
//  231   MDR_PORTF->FUNC   = PORTF_Data.FUNC;
        LDR      R2,[R0, #+60]
        STR      R2,[R1, #+4]
//  232   MDR_PORTF->GFEN   = PORTF_Data.GFEN;
        LDR      R2,[R0, #+80]
        STR      R2,[R1, #+24]
//  233   MDR_PORTF->OE     = PORTF_Data.OE;
        LDR      R2,[R0, #+56]
        STR      R2,[R1, #+0]
//  234   MDR_PORTF->PD     = PORTF_Data.PD;
        LDR      R2,[R0, #+72]
        STR      R2,[R1, #+16]
//  235   MDR_PORTF->PULL   = PORTF_Data.PULL;
        LDR      R2,[R0, #+68]
        STR      R2,[R1, #+12]
//  236   MDR_PORTF->PWR    = PORTF_Data.PWR;
        LDR      R0,[R0, #+76]
        STR      R0,[R1, #+20]
//  237 }
        BX       LR               ;; return
//  238 
//  239 /*******************************************************************************
//  240 * Function Name  : Clock_SaveConfig
//  241 * Description    : Save the Power and Clock configuration.
//  242 * Input          : None
//  243 * Output         : None
//  244 * Return         : None
//  245 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  246 void Clock_SaveConfig(void)
//  247 {
//  248   ClockData.PVDCS           = MDR_POWER->PVDCS;
Clock_SaveConfig:
        LDR.N    R0,??DataTable24_14
        LDR.N    R1,??DataTable24_15  ;; 0x40058000
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  249   ClockData.CPU_CLOCK       = MDR_RST_CLK->CPU_CLOCK;
        LDR.N    R1,??DataTable24_16  ;; 0x4002000c
        LDR      R2,[R1, #+0]
        STR      R2,[R0, #+4]
//  250   ClockData.PER_CLOCK       = MDR_RST_CLK->PER_CLOCK;
        LDR      R1,[R1, #+16]
        STR      R1,[R0, #+8]
//  251 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//  252   ClockData.EBC_CONTROL = MDR_EBC->CONTROL;
        LDR.N    R1,??DataTable24_17  ;; 0x400f0054
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
//  253 #endif
//  254 }
        BX       LR               ;; return
//  255 
//  256 /*******************************************************************************
//  257 * Function Name  : Clock_RestoreConfig
//  258 * Description    : Restore the Power and Clock configuration.
//  259 * Input          : None
//  260 * Output         : None
//  261 * Return         : None
//  262 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 void Clock_RestoreConfig(void)
//  264 {
//  265   MDR_POWER->PVDCS       = ClockData.PVDCS;
Clock_RestoreConfig:
        LDR.N    R0,??DataTable24_14
        LDR.N    R1,??DataTable24_15  ;; 0x40058000
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
//  266   MDR_RST_CLK->CPU_CLOCK = ClockData.CPU_CLOCK;
        LDR.N    R1,??DataTable24_16  ;; 0x4002000c
        LDR      R2,[R0, #+4]
        STR      R2,[R1, #+0]
//  267   MDR_RST_CLK->PER_CLOCK = ClockData.PER_CLOCK;
        LDR      R2,[R0, #+8]
        STR      R2,[R1, #+16]
//  268 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//  269   MDR_EBC->CONTROL   = ClockData.EBC_CONTROL;
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable24_17  ;; 0x400f0054
        STR      R0,[R1, #+0]
//  270 #endif
//  271 }
        BX       LR               ;; return
//  272 
//  273 /*******************************************************************************
//  274 * Function Name  : STANDBYMode_WAKEUP
//  275 * Description    : Enters MCU in STANDBY mode.
//  276 *                : Attention: the wake-up from STANDBY mode is performed on
//  277 *                : WAKEUP pin low level. After STANDBY mode exiting, power on
//  278 *                : reset is occurred.
//  279 * Input          : None
//  280 * Output         : None
//  281 * Return         : None
//  282 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  283 void STANDBYMode_WAKEUP(void)
//  284 {
STANDBYMode_WAKEUP:
        PUSH     {R4,LR}
//  285   /* Print the header */
//  286   LCD_CLS();
        BL       LCD_CLS
//  287   CurrentMethod = MET_AND;
        BL       ?Subroutine2
//  288   CurrentFont = &Font_6x8;
//  289   DisplayMenuTitle("STANDBY. Exit: WAKEUP");
??CrossCallReturnLabel_0:
        ADR.W    R0,`?<Constant "STANDBY. Exit: WAKEUP">`
        BL       DisplayMenuTitle
//  290   WAIT_UNTIL_KEY_RELEASED(SEL);
??STANDBYMode_WAKEUP_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??STANDBYMode_WAKEUP_0
//  291 
//  292   LCD_PUTS(0, LineMessage1, "                    ");
        BL       ?Subroutine3
//  293   LCD_PUTS(0, LineMessage2, "                    ");
??CrossCallReturnLabel_29:
        MOV      R2,R4
        MOVS     R1,#+22
        BL       ??Subroutine5_0
//  294   LCD_PUTS(0, LineMessage3, "MCU in STANDBY Mode ");
??CrossCallReturnLabel_24:
        ADR.W    R2,`?<Constant "MCU in STANDBY Mode ">`
        MOVS     R1,#+32
        BL       ??Subroutine5_0
//  295   LCD_PUTS(0, LineMessage4, "To exit press Wakeup");
??CrossCallReturnLabel_23:
        ADR.W    R2,`?<Constant "To exit press Wakeup">`
        B.N      ?Subroutine0
//  296   LCD_PUTS(0, LineMessage5, "                     ");
//  297 
//  298   /* Request to enter STANDBY mode */
//  299   POWER_EnterSTANDBYMode();
//  300 }
//  301 
//  302 /*******************************************************************************
//  303 * Function Name  : STANDBYMode_RTCAlarm
//  304 * Description    : Enters MCU in STANDBY mode.
//  305 *                : Attention: the wake-up from STANDBY mode is performed on
//  306 *                : RTC Alarm event. After STANDBY mode exiting, power on
//  307 *                : reset is occurred.
//  308 * Input          : None
//  309 * Output         : None
//  310 * Return         : None
//  311 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  312 void STANDBYMode_RTCAlarm(void)
//  313 {
STANDBYMode_RTCAlarm:
        PUSH     {R4,LR}
//  314   /* Print the header */
//  315   LCD_CLS();
        BL       LCD_CLS
//  316   CurrentMethod = MET_AND;
        BL       ?Subroutine2
//  317   CurrentFont = &Font_6x8;
//  318   DisplayMenuTitle("STANDBY. Exit: Alarm");
??CrossCallReturnLabel_1:
        ADR.W    R0,`?<Constant "STANDBY. Exit: Alarm">`
        BL       DisplayMenuTitle
//  319   WAIT_UNTIL_KEY_RELEASED(SEL);
??STANDBYMode_RTCAlarm_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??STANDBYMode_RTCAlarm_0
//  320 
//  321   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        BL       ?Subroutine4
??CrossCallReturnLabel_3:
        ITT      EQ 
        LDREQ    R0,[R0, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??STANDBYMode_RTCAlarm_1
//  322   {
//  323     LCD_PUTS(0, LineMessage1, "RTC is not configured");
        ADR.W    R2,`?<Constant "RTC is not configured">`
        BL       ??Subroutine3_1
//  324     LCD_PUTS(0, LineMessage2, "Please, use the ");
??CrossCallReturnLabel_26:
        ADR.W    R2,`?<Constant "Please, use the ">`
        MOVS     R1,#+22
        BL       ??Subroutine5_0
//  325     LCD_PUTS(0, LineMessage3, "Time Adjust menu and ");
??CrossCallReturnLabel_22:
        ADR.W    R2,`?<Constant "Time Adjust menu and ">`
        MOVS     R1,#+32
        BL       ??Subroutine5_0
//  326     LCD_PUTS(0, LineMessage4, "Alarm Adjust menu to ");
??CrossCallReturnLabel_21:
        ADR.W    R2,`?<Constant "Alarm Adjust menu to ">`
        MOVS     R1,#+42
        BL       ??Subroutine5_0
//  327     LCD_PUTS(0, LineMessage5, "set the Alarm time. ");
??CrossCallReturnLabel_20:
        ADR.W    R2,`?<Constant "set the Alarm time. ">`
        MOVS     R1,#+52
        BL       ??Subroutine5_0
//  328     WAIT_UNTIL_KEY_PRESSED(SEL);
??CrossCallReturnLabel_19:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??CrossCallReturnLabel_19
//  329     WAIT_UNTIL_KEY_RELEASED(SEL);
??STANDBYMode_RTCAlarm_2:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??STANDBYMode_RTCAlarm_2
//  330 
//  331     /* Display the menu */
//  332     DisplayMenu();
        B.N      ?Subroutine1
//  333     return;
//  334   }
//  335 
//  336   LCD_PUTS(0, LineMessage1, "                    ");
??STANDBYMode_RTCAlarm_1:
        BL       ?Subroutine3
//  337   LCD_PUTS(0, LineMessage2, "                    ");
??CrossCallReturnLabel_28:
        MOV      R2,R4
        MOVS     R1,#+22
        BL       ??Subroutine5_0
//  338   LCD_PUTS(0, LineMessage3, " MCU in STANDBY Mode");
??CrossCallReturnLabel_18:
        ADR.W    R2,`?<Constant " MCU in STANDBY Mode">`
        MOVS     R1,#+32
        BL       ??Subroutine5_0
//  339   LCD_PUTS(0, LineMessage4, " Wait For RTC Alarm ");
??CrossCallReturnLabel_17:
        ADR.W    R2,`?<Constant " Wait For RTC Alarm ">`
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  340   LCD_PUTS(0, LineMessage5, "                     ");
//  341 
//  342   /* Request to enter STANDBY mode */
//  343   POWER_EnterSTANDBYMode();
//  344 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R1,#+42
        BL       ??Subroutine5_0
??CrossCallReturnLabel_16:
        ADR.W    R2,`?<Constant "                     ">`
        MOVS     R1,#+52
        BL       ??Subroutine5_0
??CrossCallReturnLabel_15:
        POP      {R4,LR}
        B.W      POWER_EnterSTANDBYMode

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        ADR.W    R4,`?<Constant "                    ">`
??Subroutine3_0:
        MOV      R2,R4
??Subroutine3_1:
        MOVS     R1,#+12
        REQUIRE ??Subroutine5_0
        ;; // Fall through to label ??Subroutine5_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
??Subroutine5_0:
        MOVS     R0,#+0
        B.W      LCD_PUTS

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        LDR.N    R0,??DataTable24_18
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable24_19
        LDR.N    R1,??DataTable24_20
        STR      R1,[R0, #+0]
        BX       LR
//  345 
//  346 /*******************************************************************************
//  347 * Function Name  : STOPMode_RTCAlarm
//  348 * Description    : Enters MCU in STOP mode. The wake-up from STOP mode is
//  349 *                  performed by RTC Alarm.
//  350 * Input          : None
//  351 * Output         : None
//  352 * Return         : None
//  353 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  354 void STOPMode_RTCAlarm(void)
//  355 {
STOPMode_RTCAlarm:
        PUSH     {R4,LR}
//  356   uint32_t tmp;
//  357 
//  358   /* Print the header */
//  359   LCD_CLS();
        BL       LCD_CLS
//  360   CurrentMethod = MET_AND;
        BL       ?Subroutine2
//  361   CurrentFont = &Font_6x8;
//  362   DisplayMenuTitle("STOP. Exit: Alarm");
??CrossCallReturnLabel_2:
        ADR.W    R0,`?<Constant "STOP. Exit: Alarm">`
        BL       DisplayMenuTitle
//  363   WAIT_UNTIL_KEY_RELEASED(SEL);
??STOPMode_RTCAlarm_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??STOPMode_RTCAlarm_0
//  364 
//  365   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        BL       ?Subroutine4
??CrossCallReturnLabel_4:
        ITT      EQ 
        LDREQ    R0,[R0, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??STOPMode_RTCAlarm_1
//  366   {
//  367     LCD_PUTS(0, LineMessage1, "RTC is not configured");
        ADR.W    R2,`?<Constant "RTC is not configured">`
        BL       ??Subroutine3_1
//  368     LCD_PUTS(0, LineMessage2, "Please, use the ");
??CrossCallReturnLabel_25:
        ADR.W    R2,`?<Constant "Please, use the ">`
        MOVS     R1,#+22
        BL       ??Subroutine5_0
//  369     LCD_PUTS(0, LineMessage3, "Time Adjust menu and ");
??CrossCallReturnLabel_14:
        ADR.W    R2,`?<Constant "Time Adjust menu and ">`
        MOVS     R1,#+32
        BL       ??Subroutine5_0
//  370     LCD_PUTS(0, LineMessage4, "Alarm Adjust menu to ");
??CrossCallReturnLabel_13:
        ADR.W    R2,`?<Constant "Alarm Adjust menu to ">`
        MOVS     R1,#+42
        BL       ??Subroutine5_0
//  371     LCD_PUTS(0, LineMessage5, "set the Alarm time.");
??CrossCallReturnLabel_12:
        ADR.W    R2,`?<Constant "set the Alarm time.">`
        MOVS     R1,#+52
        BL       ??Subroutine5_0
//  372     WAIT_UNTIL_KEY_PRESSED(SEL);
??CrossCallReturnLabel_11:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??CrossCallReturnLabel_11
//  373     WAIT_UNTIL_KEY_RELEASED(SEL);
??STOPMode_RTCAlarm_2:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??STOPMode_RTCAlarm_2
        B.N      ??STOPMode_RTCAlarm_3
//  374 
//  375     /* Display the menu */
//  376     DisplayMenu();
//  377     return;
//  378   }
//  379 
//  380   STOPModeStatus = 1;
??STOPMode_RTCAlarm_1:
        LDR.N    R0,??DataTable24_21
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  381 
//  382   LCD_PUTS(0, LineMessage1, "                     ");
        ADR.W    R4,`?<Constant "                     ">`
        BL       ??Subroutine3_0
//  383   LCD_PUTS(0, LineMessage2, "                     ");
??CrossCallReturnLabel_27:
        MOV      R2,R4
        MOVS     R1,#+22
        BL       ??Subroutine5_0
//  384   LCD_PUTS(0, LineMessage3, "  MCU in STOP Mode   ");
??CrossCallReturnLabel_10:
        ADR.W    R2,`?<Constant "  MCU in STOP Mode   ">`
        MOVS     R1,#+32
        BL       ??Subroutine5_0
//  385   LCD_PUTS(0, LineMessage4, " Wait For RTC Alarm  ");
??CrossCallReturnLabel_9:
        ADR.W    R2,`?<Constant " Wait For RTC Alarm  ">`
        MOVS     R1,#+42
        BL       ??Subroutine5_0
//  386   LCD_PUTS(0, LineMessage5, "                     ");
??CrossCallReturnLabel_8:
        MOV      R2,R4
        MOVS     R1,#+52
        BL       ??Subroutine5_0
//  387 
//  388   /* Save the all PORTs current configuration, then
//  389    * configure all PORTs for low power consumption */
//  390   PORT_SaveConfig();
??CrossCallReturnLabel_7:
        BL       PORT_SaveConfig
//  391 
//  392   /* Save the Power and Clock current configuration */
//  393   Clock_SaveConfig();
        BL       Clock_SaveConfig
//  394 
//  395   /* Enable SLEEPONEXIT mode */
//  396   tmp = SCB->SCR;
        LDR.N    R0,??DataTable24_22  ;; 0xe000ed10
        LDR      R1,[R0, #+0]
//  397   tmp |= SCB_SCR_SLEEPONEXIT_Msk;
//  398   SCB->SCR = tmp;
        ORR      R1,R1,#0x2
        STR      R1,[R0, #+0]
//  399 
//  400   /* Request to enter STOP mode with regulator ON */
//  401   POWER_EnterSTOPMode(ENABLE, POWER_STOPentry_WFI);
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       POWER_EnterSTOPMode
//  402 
//  403   /* Restore the Power and Clock */
//  404   Clock_RestoreConfig();
        BL       Clock_RestoreConfig
//  405 
//  406   /* Restore the PORTs Configurations*/
//  407   PORT_RestoreConfig();
        BL       PORT_RestoreConfig
//  408 
//  409   LCD_PUTS(0, LineMessage3, "Wake-Up by RTC Alarm");
        ADR.W    R2,`?<Constant "Wake-Up by RTC Alarm">`
        MOVS     R1,#+32
        BL       ??Subroutine5_0
//  410   LCD_PUTS(0, LineMessage4, "Press SEL to continue");
??CrossCallReturnLabel_6:
        ADR.W    R2,`?<Constant "Press SEL to continue">`
        MOVS     R1,#+42
        BL       ??Subroutine5_0
//  411 
//  412   /* Wait for SEL to continue */
//  413   WAIT_UNTIL_KEY_PRESSED(SEL);
??CrossCallReturnLabel_5:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??CrossCallReturnLabel_5
//  414   WAIT_UNTIL_KEY_RELEASED(SEL);
??STOPMode_RTCAlarm_4:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??STOPMode_RTCAlarm_4
//  415 
//  416   /* Display the previous menu */
//  417   DisplayMenu();
??STOPMode_RTCAlarm_3:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  418 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        POP      {R4,LR}
        B.W      DisplayMenu

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        LDR.N    R0,??DataTable24_23  ;; 0x400d8000
        LDR      R1,[R0, #+0]
        MOVW     R2,#+4660
        CMP      R1,R2
        BX       LR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     0x400a8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     PORTA_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     0x400b0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     0x400c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     PORTD_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     0x400c8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     0x400e8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     0x400a8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     0x400b0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     0x400c0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     0x400c8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     0x400e8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_14:
        DC32     ClockData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_15:
        DC32     0x40058000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_16:
        DC32     0x4002000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_17:
        DC32     0x400f0054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_18:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_19:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_20:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_21:
        DC32     STOPModeStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_22:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_23:
        DC32     0x400d8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "STANDBY. Exit: WAKEUP">`:
        DC8 "STANDBY. Exit: WAKEUP"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "                    ">`:
        DC8 "                    "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "MCU in STANDBY Mode ">`:
        DC8 "MCU in STANDBY Mode "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "To exit press Wakeup">`:
        DC8 "To exit press Wakeup"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "                     ">`:
        DC8 "                     "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "STANDBY. Exit: Alarm">`:
        DC8 "STANDBY. Exit: Alarm"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "RTC is not configured">`:
        DC8 "RTC is not configured"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Please, use the ">`:
        DC8 "Please, use the "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Time Adjust menu and ">`:
        DC8 "Time Adjust menu and "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Alarm Adjust menu to ">`:
        DC8 "Alarm Adjust menu to "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "set the Alarm time. ">`:
        DC8 "set the Alarm time. "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " MCU in STANDBY Mode">`:
        DC8 " MCU in STANDBY Mode"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " Wait For RTC Alarm ">`:
        DC8 " Wait For RTC Alarm "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "STOP. Exit: Alarm">`:
        DC8 "STOP. Exit: Alarm"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "set the Alarm time.">`:
        DC8 "set the Alarm time."

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "  MCU in STOP Mode   ">`:
        DC8 "  MCU in STOP Mode   "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " Wait For RTC Alarm  ">`:
        DC8 " Wait For RTC Alarm  "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Wake-Up by RTC Alarm">`:
        DC8 "Wake-Up by RTC Alarm"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Press SEL to continue">`:
        DC8 "Press SEL to continue"
        DC8 0, 0

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  419 
//  420 /** @} */ /* End of group Menu_LowPower_Private_Functions */
//  421 
//  422 /** @} */ /* End of group Menu_LowPower */
//  423 
//  424 /** @} */ /* End of group Menu */
//  425 
//  426 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  427 
//  428 /******************* (C) COPYRIGHT 2011 Phyton *******************
//  429 *
//  430 * END OF FILE Menu_lowpower.c */
//  431 
// 
//   184 bytes in section .bss
// 1 522 bytes in section .text
// 
// 1 522 bytes of CODE memory
//   184 bytes of DATA memory
//
//Errors: none
//Warnings: none
