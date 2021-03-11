///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:59 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu.c                                 /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu.c --preprocess                    /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu.s         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu

        #define SHT_PROGBITS 0x1

        EXTERN AboutFunc
        EXTERN AlarmAdjustFunc
        EXTERN AlarmShowFunc
        EXTERN BookFunc
        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DateAdjustFunc
        EXTERN DateShowFunc
        EXTERN ElementsFunc
        EXTERN FontFunc
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN IndicatorsFunc
        EXTERN LCD_CLS
        EXTERN LCD_Line
        EXTERN LCD_PUTS
        EXTERN LightsOnFunc
        EXTERN STANDBYMode_RTCAlarm
        EXTERN STANDBYMode_WAKEUP
        EXTERN STOPMode_RTCAlarm
        EXTERN StyleFunc
        EXTERN TSENSORFunc
        EXTERN TimeAdjustFunc
        EXTERN TimeShowFunc
        EXTERN UARTFunc
        EXTERN UARTwFIFOFunc
        EXTERN VCOMFunc
        EXTERN strlen

        PUBLIC AlarmMenu
        PUBLIC AlarmMenuItems
        PUBLIC BackToMenuOnSel
        PUBLIC CommMenu
        PUBLIC CommMenuItems
        PUBLIC DateMenu
        PUBLIC DateMenuItems
        PUBLIC DevMenu
        PUBLIC DevMenuItems
        PUBLIC DisplayMenu
        PUBLIC DisplayMenuTitle
        PUBLIC GraphicMenu
        PUBLIC GraphicMenuItems
        PUBLIC LCDMenu
        PUBLIC LCDMenuItems
        PUBLIC LEDsMenu
        PUBLIC LEDsMenuItems
        PUBLIC LowPowerMenu
        PUBLIC LowPowerMenuItems
        PUBLIC MainMenu
        PUBLIC MainMenuItems
        PUBLIC Menu_Init
        PUBLIC OtherMenu
        PUBLIC OtherMenuItems
        PUBLIC RTCMenu
        PUBLIC RTCMenuItems
        PUBLIC ReadKey
        PUBLIC STANDBYMenu
        PUBLIC STANDBYMenuItems
        PUBLIC STOPMenu
        PUBLIC STOPMenuItems
        PUBLIC TextMenu
        PUBLIC TextMenuItems
        PUBLIC TimeMenu
        PUBLIC TimeMenuItems
        PUBLIC UARTMenu
        PUBLIC UARTMenuItems

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file contains all the functions for hierarchical text menu.
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
//   21 #include <string.h>
//   22 #include <stddef.h>
//   23 #include "Menu.h"
//   24 #include "Menu_items.h"
//   25 #include "types.h"
//   26 #include "lcd.h"
//   27 #include "gl.h"
//   28 #include "text.h"
//   29 #include "joystick.h"
//   30 #include "leds.h"
//   31 
//   32 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   33   * @{
//   34   */
//   35 
//   36 /** @addtogroup Menu Menu
//   37   * @{
//   38   */
//   39 
//   40 /** @defgroup Menu_Private_Types Menu Private Types
//   41   * @{
//   42   */
//   43 
//   44 /* Menu description */
//   45 typedef void (* tMenuFunc)(void);
//   46 typedef struct sMenuItem *tMenuItem;
//   47 typedef struct sMenu *tMenu;
//   48 
//   49 /**
//   50   * @brief  Menu item structure definition
//   51   */
//   52 struct sMenuItem
//   53 {
//   54   ucint8_t* psTitle;
//   55   tMenuFunc pfMenuFunc;
//   56   tMenu psSubMenu;
//   57 };
//   58 
//   59 /**
//   60   * @brief  Menu structure definition
//   61   */
//   62 struct sMenu
//   63 {
//   64   ucint8_t* psTitle;
//   65   tMenuItem psItems;
//   66   uint32_t nItems;
//   67 };
//   68 
//   69 /** @} */ /* End of group Menu_Private_Types */
//   70 
//   71 /* Service function and handler prototypes */
//   72 static void DisplayMenuItemString(uint32_t y, ucint8_t *ptr);
//   73 static void IdleFunc(void);
//   74 static void SelFunc(void);
//   75 static void UpFunc(void);
//   76 static void DownFunc(void);
//   77 static void ReturnFunc(void);
//   78 
//   79 /** @defgroup Menu_Private_Variables Menu Private Variables
//   80   * @{
//   81   */
//   82 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   83 static uint32_t MenuItemIndex = 0, nMenuLevel = 0;
MenuItemIndex:
        DATA
        DC32 0
        DC32 0
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0
//   84 
//   85 static tMenuItem psMenuItem, psCurrentMenuItem;
//   86 static tMenu psPrevMenu[MAX_MENU_LEVELS];
//   87 static tMenu psCurrentMenu;
//   88 
//   89 /* Fourth level menu */
//   90 struct sMenuItem TimeMenuItems[] = {{"Adjust", TimeAdjustFunc, NULL},
//   91                                     {"Show", TimeShowFunc, NULL},
//   92                                     {"Return", ReturnFunc, NULL}};
//   93 struct sMenu TimeMenu = {"Time", TimeMenuItems, countof(TimeMenuItems)};
//   94 
//   95 struct sMenuItem DateMenuItems[] = {{"Adjust", DateAdjustFunc, NULL},
//   96                                     {"Show", DateShowFunc, NULL},
//   97                                     {"Return", ReturnFunc, NULL}};
//   98 struct sMenu DateMenu = {"Date", DateMenuItems, countof(DateMenuItems)};
//   99 
//  100 struct sMenuItem AlarmMenuItems[] = {{"Adjust", AlarmAdjustFunc, NULL},
//  101                                      {"Show", AlarmShowFunc, NULL},
//  102                                      {"Return", ReturnFunc, NULL}};
//  103 struct sMenu AlarmMenu = {"Alarm", AlarmMenuItems, countof(AlarmMenuItems)};
//  104 
//  105 struct sMenuItem STOPMenuItems[] = {{"Exit on RTC Alarm", STOPMode_RTCAlarm, NULL},
//  106                                     {"Return", ReturnFunc, NULL}};
//  107 struct sMenu STOPMenu = {"STOP Mode", STOPMenuItems, countof(STOPMenuItems)};
//  108 
//  109 struct sMenuItem STANDBYMenuItems[] = {
//  110 #if !defined (USE_MDR32F9Q3_Rev0) && !defined (USE_MDR32F9Q3_Rev1)
//  111 																			 {"Exit on Wakeup", STANDBYMode_WAKEUP, NULL},
//  112 #endif
//  113 																			 {"Exit on RTC Alarm", STANDBYMode_RTCAlarm, NULL},
//  114                                        {"Return", ReturnFunc, NULL}};
//  115 struct sMenu STANDBYMenu = {"STANDBY Mode", STANDBYMenuItems, countof(STANDBYMenuItems)};
//  116 
//  117 struct sMenuItem UARTMenuItems[] = {{"With FIFO", UARTwFIFOFunc, NULL},
//  118                                     {"Without FIFO", UARTFunc, NULL},
//  119                                     {"Return", ReturnFunc, NULL}};
//  120 struct sMenu UARTMenu = {"UART", UARTMenuItems, countof(UARTMenuItems)};
//  121 
//  122 struct sMenuItem RTCMenuItems[] = {{"Time", IdleFunc, &TimeMenu},
//  123                                    {"Date", IdleFunc, &DateMenu},
//  124                                    {"Alarm", IdleFunc, &AlarmMenu},
//  125                                    {"Return", ReturnFunc, NULL}};
//  126 struct sMenu RTCMenu = {"Real Time Clock", RTCMenuItems, countof(RTCMenuItems)};
//  127 
//  128 struct sMenuItem LowPowerMenuItems[] = {{"STOP", IdleFunc, &STOPMenu},
//  129                                         {"STANDBY", IdleFunc, &STANDBYMenu},
//  130                                         {"Return", ReturnFunc, NULL}};
//  131 struct sMenu LowPowerMenu = {"Low Power Mode", LowPowerMenuItems, countof(LowPowerMenuItems)};
//  132 
//  133 /* Third level menu */
//  134 struct sMenuItem TextMenuItems[] = {{"Font", FontFunc, NULL},
//  135                                     {"Style", StyleFunc, NULL},
//  136                                     {"Book", BookFunc, NULL},
//  137                                     {"Return", ReturnFunc, NULL}};
//  138 struct sMenu TextMenu = {"Text", TextMenuItems, countof(TextMenuItems)};
//  139 
//  140 struct sMenuItem GraphicMenuItems[] = {{"Elements", ElementsFunc, NULL},
//  141                                        {"Indicators", IndicatorsFunc, NULL},
//  142                                        {"Return", ReturnFunc, NULL}};
//  143 struct sMenu GraphicMenu = {"Graphics", GraphicMenuItems, countof(GraphicMenuItems)};
//  144 
//  145 struct sMenuItem LEDsMenuItems[] = {{"On", LightsOnFunc, NULL},
//  146                                     {"Return", ReturnFunc, NULL}};
//  147 struct sMenu LEDsMenu = {"LEDs", LEDsMenuItems, countof(LEDsMenuItems)};
//  148 
//  149 struct sMenuItem CommMenuItems[] = {{"UART", IdleFunc, &UARTMenu},
//  150                                     {"USB. Virtual COM", VCOMFunc, NULL},
//  151                                     {"Return", ReturnFunc, NULL}};
//  152 struct sMenu CommMenu = {"Communication", CommMenuItems, countof(CommMenuItems)};
//  153 
//  154 struct sMenuItem OtherMenuItems[] = {{"Thermometer", TSENSORFunc, NULL},
//  155                                      {"Real Time Clock", IdleFunc, &RTCMenu},
//  156                                      {"Low Power", IdleFunc, &LowPowerMenu},
//  157                                      {"Return", ReturnFunc, NULL}};
//  158 struct sMenu OtherMenu = {"Other devices", OtherMenuItems, countof(OtherMenuItems)};
//  159 
//  160 /* Second level menu */
//  161 struct sMenuItem LCDMenuItems[] = {{"Text", IdleFunc, &TextMenu},
//  162                                    {"Graphics", IdleFunc, &GraphicMenu},
//  163                                    {"LEDs", IdleFunc, &LEDsMenu},
//  164                                    {"Return", ReturnFunc, NULL}};
//  165 struct sMenu LCDMenu = {"Display", LCDMenuItems, countof(LCDMenuItems)};
//  166 
//  167 struct sMenuItem DevMenuItems[] = {{"Communication", IdleFunc, &CommMenu},
//  168                                    {"Other", IdleFunc, &OtherMenu},
//  169                                    {"Return", ReturnFunc, NULL}};
//  170 struct sMenu DevMenu = {"Devices", DevMenuItems, countof(DevMenuItems)};
//  171 
//  172 /* Main menu */
//  173 struct sMenuItem MainMenuItems[] = {
MainMenuItems:
        DC32 `?<Constant "Display">`, IdleFunc, LCDMenu
        DC32 `?<Constant "Devices">`, IdleFunc, DevMenu, `?<Constant "About">`
        DC32 AboutFunc, 0H
//  174   {"Display", IdleFunc, &LCDMenu},
//  175   {"Devices", IdleFunc, &DevMenu},
//  176   {"About", AboutFunc, NULL}};
//  177 struct sMenu MainMenu = {"Main menu", MainMenuItems, countof(MainMenuItems)};
MainMenu:
        DC32 `?<Constant "Main menu">`, MainMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
TimeMenuItems:
        DATA
        DC32 `?<Constant "Adjust">`, TimeAdjustFunc, 0H, `?<Constant "Show">`
        DC32 TimeShowFunc, 0H, `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
TimeMenu:
        DATA
        DC32 `?<Constant "Time">`, TimeMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
DateMenuItems:
        DATA
        DC32 `?<Constant "Adjust">`, DateAdjustFunc, 0H, `?<Constant "Show">`
        DC32 DateShowFunc, 0H, `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
DateMenu:
        DATA
        DC32 `?<Constant "Date">`, DateMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
AlarmMenuItems:
        DATA
        DC32 `?<Constant "Adjust">`, AlarmAdjustFunc, 0H, `?<Constant "Show">`
        DC32 AlarmShowFunc, 0H, `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
AlarmMenu:
        DATA
        DC32 `?<Constant "Alarm">`, AlarmMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
STOPMenuItems:
        DATA
        DC32 `?<Constant "Exit on RTC Alarm">`, STOPMode_RTCAlarm, 0H
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
STOPMenu:
        DATA
        DC32 `?<Constant "STOP Mode">`, STOPMenuItems, 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
STANDBYMenuItems:
        DATA
        DC32 `?<Constant "Exit on Wakeup">`, STANDBYMode_WAKEUP, 0H
        DC32 `?<Constant "Exit on RTC Alarm">`, STANDBYMode_RTCAlarm, 0H
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
STANDBYMenu:
        DATA
        DC32 `?<Constant "STANDBY Mode">`, STANDBYMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
UARTMenuItems:
        DATA
        DC32 `?<Constant "With FIFO">`, UARTwFIFOFunc, 0H
        DC32 `?<Constant "Without FIFO">`, UARTFunc, 0H, `?<Constant "Return">`
        DC32 ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
UARTMenu:
        DATA
        DC32 `?<Constant "UART">`, UARTMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
RTCMenuItems:
        DATA
        DC32 `?<Constant "Time">`, IdleFunc, TimeMenu, `?<Constant "Date">`
        DC32 IdleFunc, DateMenu, `?<Constant "Alarm">`, IdleFunc, AlarmMenu
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
RTCMenu:
        DATA
        DC32 `?<Constant "Real Time Clock">`, RTCMenuItems, 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
LowPowerMenuItems:
        DATA
        DC32 `?<Constant "STOP">`, IdleFunc, STOPMenu, `?<Constant "STANDBY">`
        DC32 IdleFunc, STANDBYMenu, `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
LowPowerMenu:
        DATA
        DC32 `?<Constant "Low Power Mode">`, LowPowerMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
TextMenuItems:
        DATA
        DC32 `?<Constant "Font">`, FontFunc, 0H, `?<Constant "Style">`
        DC32 StyleFunc, 0H, `?<Constant "Book">`, BookFunc, 0H
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
TextMenu:
        DATA
        DC32 `?<Constant "Text">`, TextMenuItems, 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
GraphicMenuItems:
        DATA
        DC32 `?<Constant "Elements">`, ElementsFunc, 0H
        DC32 `?<Constant "Indicators">`, IndicatorsFunc, 0H
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
GraphicMenu:
        DATA
        DC32 `?<Constant "Graphics">`, GraphicMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
LEDsMenuItems:
        DATA
        DC32 `?<Constant "On">`, LightsOnFunc, 0H, `?<Constant "Return">`
        DC32 ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
LEDsMenu:
        DATA
        DC32 `?<Constant "LEDs">`, LEDsMenuItems, 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
CommMenuItems:
        DATA
        DC32 `?<Constant "UART">`, IdleFunc, UARTMenu
        DC32 `?<Constant "USB. Virtual COM">`, VCOMFunc, 0H
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
CommMenu:
        DATA
        DC32 `?<Constant "Communication">`, CommMenuItems, 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
OtherMenuItems:
        DATA
        DC32 `?<Constant "Thermometer">`, TSENSORFunc, 0H
        DC32 `?<Constant "Real Time Clock">`, IdleFunc, RTCMenu
        DC32 `?<Constant "Low Power">`, IdleFunc, LowPowerMenu
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
OtherMenu:
        DATA
        DC32 `?<Constant "Other devices">`, OtherMenuItems, 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
LCDMenuItems:
        DATA
        DC32 `?<Constant "Text">`, IdleFunc, TextMenu, `?<Constant "Graphics">`
        DC32 IdleFunc, GraphicMenu, `?<Constant "LEDs">`, IdleFunc, LEDsMenu
        DC32 `?<Constant "Return">`, ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
LCDMenu:
        DATA
        DC32 `?<Constant "Display">`, LCDMenuItems, 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
DevMenuItems:
        DATA
        DC32 `?<Constant "Communication">`, IdleFunc, CommMenu
        DC32 `?<Constant "Other">`, IdleFunc, OtherMenu, `?<Constant "Return">`
        DC32 ReturnFunc, 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
DevMenu:
        DATA
        DC32 `?<Constant "Devices">`, DevMenuItems, 3
//  178 
//  179 /** @} */ /* End of group Menu_Private_Variables */
//  180 
//  181 /** @defgroup Menu_Private_Functions Menu Private Functions
//  182   * @{
//  183   */
//  184 
//  185 /** @defgroup Menu_Service_Functions Menu Service Functions
//  186   * @{
//  187   */
//  188 
//  189 /* Service functions for menu drawing */
//  190 
//  191 /*******************************************************************************
//  192 * Function Name  : DisplayMenuItemString
//  193 * Description    : Prints menu line
//  194 * Input          : y   - line y-coordinate
//  195 *                : ptr - pointer to string
//  196 * Output         : None
//  197 * Return         : None
//  198 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  199 void DisplayMenuItemString(uint32_t y, ucint8_t *ptr)
//  200 {
DisplayMenuItemString:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
        MOV      R5,R1
//  201   uint32_t x;
//  202 
//  203   LCD_PUTS(0, y, "                                        ");
        ADR.W    R2,`?<Constant "                     ...">`
        UXTB     R1,R4
        MOVS     R0,#+0
        BL       LCD_PUTS
//  204   x = (MAX_X - (CurrentFont->Width * strlen((const char *)ptr))) / 2;
        MOV      R0,R5
        BL       strlen
//  205   LCD_PUTS(x, y, ptr);
        MOV      R2,R5
        UXTB     R1,R4
        LDR.N    R3,??DataTable42
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+4]
        BL       ?Subroutine1
??CrossCallReturnLabel_2:
        POP      {R3-R5,LR}
        B.W      LCD_PUTS
//  206 }
//  207 
//  208 /* Service handlers */
//  209 
//  210 /*******************************************************************************
//  211 * Function Name  : IdleFunc
//  212 * Description    : Booby
//  213 * Input          : None
//  214 * Output         : None
//  215 * Return         : None
//  216 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 void IdleFunc(void)
//  218 {
//  219 }
IdleFunc:
        BX       LR               ;; return
//  220 
//  221 /*******************************************************************************
//  222 * Function Name  : SelFunc
//  223 * Description    : SEL - jumps to the submenu and/or calls corresponding handler
//  224 * Input          : None
//  225 * Output         : None
//  226 * Return         : None
//  227 *******************************************************************************/
//  228 void SelFunc(void)
//  229 {
//  230   psCurrentMenuItem = psMenuItem;
//  231 
//  232   if(psMenuItem->psSubMenu != NULL)
//  233   {
//  234     MenuItemIndex = 0;
//  235     psCurrentMenu = psMenuItem->psSubMenu;
//  236     psMenuItem = &(psCurrentMenu->psItems)[MenuItemIndex];
//  237     DisplayMenu();
//  238     nMenuLevel++;
//  239     psPrevMenu[nMenuLevel] = psCurrentMenu;
//  240   }
//  241   psCurrentMenuItem->pfMenuFunc();
//  242 }
//  243 
//  244 /*******************************************************************************
//  245 * Function Name  : UpFunc
//  246 * Description    : UP - steps one one item up
//  247 * Input          : None
//  248 * Output         : None
//  249 * Return         : None
//  250 *******************************************************************************/
//  251 void UpFunc(void)
//  252 {
//  253   /* Display current menu item as non-selected */
//  254   psMenuItem = &psCurrentMenu->psItems[MenuItemIndex];
//  255   CurrentMethod = MET_AND;
//  256   DisplayMenuItemString((MenuItemIndex * (CurrentFont->Height + 2) + CurrentFont->Height + 4), psMenuItem->psTitle);
//  257 
//  258   /* Determine new menu item (iteratively) */
//  259   if(MenuItemIndex > 0)
//  260   {
//  261     MenuItemIndex--;
//  262   }
//  263   else
//  264   {
//  265     MenuItemIndex = psCurrentMenu->nItems - 1;
//  266   }
//  267 
//  268   /* Display new menu item as selected */
//  269   psMenuItem = &psCurrentMenu->psItems[MenuItemIndex];
//  270   CurrentMethod = MET_NOT_XOR;
//  271   LCD_PUTS(0, (MenuItemIndex * (CurrentFont->Height + 2) + CurrentFont->Height + 4), "                                        ");
//  272 }
//  273 
//  274 /*******************************************************************************
//  275 * Function Name  : DownFunc
//  276 * Description    : DOWN - steps one one item down
//  277 * Input          : None
//  278 * Output         : None
//  279 * Return         : None
//  280 *******************************************************************************/
//  281 void DownFunc(void)
//  282 {
//  283   /* Display current menu item as non-selected */
//  284   psMenuItem = &psCurrentMenu->psItems[MenuItemIndex];
//  285   CurrentMethod = MET_AND;
//  286 
//  287   DisplayMenuItemString((MenuItemIndex * (CurrentFont->Height + 2) + CurrentFont->Height + 4), psMenuItem->psTitle);
//  288 
//  289   /* Determine new menu item (iteratively) */
//  290   if(MenuItemIndex >= ((psCurrentMenu->nItems)-1))
//  291   {
//  292     MenuItemIndex = 0;
//  293   }
//  294   else
//  295   {
//  296     MenuItemIndex++;
//  297   }
//  298   psMenuItem = &(psCurrentMenu->psItems[MenuItemIndex]);
//  299 
//  300   /* Display new menu item as selected */
//  301   CurrentMethod = MET_NOT_XOR;
//  302   LCD_PUTS(0, (MenuItemIndex * (CurrentFont->Height + 2) + CurrentFont->Height + 4), "                                        ");
//  303 }
//  304 
//  305 /*******************************************************************************
//  306 * Function Name  : ReturnFunc
//  307 * Description    : Jumps to upper level menu
//  308 * Input          : None
//  309 * Output         : None
//  310 * Return         : None
//  311 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  312 void ReturnFunc(void) {
//  313   if(nMenuLevel == 0)
ReturnFunc:
        LDR.N    R0,??DataTable42_1
        LDR      R1,[R0, #+4]
        CBNZ.N   R1,??ReturnFunc_0
//  314   {
//  315     nMenuLevel++;
        MOVS     R1,#+1
        STR      R1,[R0, #+4]
//  316   }
//  317 
//  318   psCurrentMenu = psPrevMenu[nMenuLevel-1];
??ReturnFunc_0:
        LDR      R1,[R0, #+4]
        ADD      R2,R0,R1, LSL #+2
        LDR      R2,[R2, #+12]
        STR      R2,[R0, #+32]
//  319   psMenuItem = &psCurrentMenu->psItems[0];
        LDR      R2,[R2, #+4]
        STR      R2,[R0, #+8]
//  320   MenuItemIndex = 0;
        MOVS     R2,#+0
        STR      R2,[R0, #+0]
//  321   nMenuLevel--;
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+4]
//  322 
//  323   DisplayMenu();
        B.N      DisplayMenu
//  324 }
//  325 
//  326 /*******************************************************************************
//  327 * Function Name  : BackToMenuOnSel
//  328 * Description    : Waits for SEL pressed and returns to the menu
//  329 * Input          : None
//  330 * Output         : None
//  331 * Return         : None
//  332 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void BackToMenuOnSel(void)
//  334 {
BackToMenuOnSel:
        PUSH     {R7,LR}
//  335   WAIT_UNTIL_KEY_PRESSED(SEL);
??BackToMenuOnSel_0:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??BackToMenuOnSel_0
//  336   DisplayMenu();
        POP      {R0,LR}
        B.N      DisplayMenu
//  337 }
//  338 
//  339 /*******************************************************************************
//  340 * Function Name  : ReadKey
//  341 * Description    : Dispatcher function
//  342 * Input          : None
//  343 * Output         : None
//  344 * Return         : None
//  345 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void ReadKey(void)
//  347 {
ReadKey:
        ADR.W    R4,`?<Constant "                     ...">`
        LDR.N    R5,??DataTable42
        LDR.N    R6,??DataTable42_2
        MOVS     R7,#+12
        LDR.W    R8,??DataTable42_1
//  348   uint32_t key;
//  349 
//  350   while (1)
//  351   {
//  352     key = GetKey();
??ReadKey_0:
        BL       GetKey
        MOVS     R9,R0
//  353     switch (key)
        BEQ.N    ??ReadKey_1
        CMP      R9,#+2
        BEQ.N    ??ReadKey_2
        BCC.N    ??ReadKey_3
        B.N      ??ReadKey_4
//  354     {
//  355       case SEL:   SelFunc();  break;
??ReadKey_1:
        LDR      R0,[R8, #+8]
        STR      R0,[R8, #+12]
        LDR      R0,[R0, #+8]
        CBZ.N    R0,??ReadKey_5
        MOVS     R1,#+0
        STR      R1,[R8, #+0]
        STR      R0,[R8, #+32]
        LDR      R0,[R0, #+4]
        STR      R0,[R8, #+8]
        BL       DisplayMenu
        LDR      R0,[R8, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R8, #+4]
        ADD      R0,R8,R0, LSL #+2
        LDR      R1,[R8, #+32]
        STR      R1,[R0, #+16]
??ReadKey_5:
        LDR      R0,[R8, #+12]
        LDR      R0,[R0, #+4]
        BLX      R0
        B.N      ??ReadKey_4
//  356       case UP:    UpFunc();   break;
??ReadKey_3:
        BL       ?Subroutine0
??CrossCallReturnLabel_1:
        LDR      R1,[R8, #+32]
        LDR      R0,[R8, #+0]
        CBNZ.N   R0,??ReadKey_6
        LDR      R0,[R1, #+8]
??ReadKey_6:
        SUBS     R0,R0,#+1
        B.N      ??ReadKey_7
//  357       case DOWN:  DownFunc(); break;
??ReadKey_2:
        BL       ?Subroutine0
??CrossCallReturnLabel_0:
        LDR      R1,[R8, #+32]
        LDR      R0,[R8, #+0]
        LDR      R2,[R1, #+8]
        SUBS     R2,R2,#+1
        CMP      R0,R2
        ITE      CS 
        MOVCS    R0,#+0
        ADDCC    R0,R0,#+1
??ReadKey_7:
        STR      R0,[R8, #+0]
        LDR      R1,[R1, #+4]
        MLA      R1,R7,R0,R1
        STR      R1,[R8, #+8]
        MOVS     R1,#+3
        STRB     R1,[R6, #+0]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+0]
        MOV      R2,R4
        ADDS     R3,R1,#+2
        MLA      R0,R3,R0,R1
        ADDS     R1,R0,#+4
        UXTB     R1,R1
        MOVS     R0,#+0
        BL       LCD_PUTS
//  358     }
//  359   WAIT_UNTIL_KEY_RELEASED(key);
??ReadKey_4:
        BL       GetKey
        CMP      R0,R9
        BEQ.N    ??ReadKey_4
        B.N      ??ReadKey_0
//  360   }
//  361 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        LDR      R1,[R8, #+32]
        LDR      R0,[R8, #+0]
        LDR      R1,[R1, #+4]
        MLA      R1,R7,R0,R1
        STR      R1,[R8, #+8]
        MOVS     R2,#+4
        STRB     R2,[R6, #+0]
        LDR      R2,[R5, #+0]
        LDR      R2,[R2, #+0]
        LDR      R1,[R1, #+0]
        ADDS     R3,R2,#+2
        MLA      R0,R3,R0,R2
        ADDS     R0,R0,#+4
        B.N      DisplayMenuItemString
//  362 
//  363 /** @} */ /* End of group Menu_Service_Functions */
//  364 
//  365 /** @defgroup Menu_Functions Menu Functions
//  366   * @{
//  367   */
//  368 
//  369 /*----------------- Interface functions -----------------*/
//  370 
//  371 /*******************************************************************************
//  372 * Function Name  : DisplayMenuTitle
//  373 * Description    : Prints menu header
//  374 * Input          : ptr - pointer to header string
//  375 * Output         : None
//  376 * Return         : None
//  377 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  378 void DisplayMenuTitle(ucint8_t *ptr)
//  379 {
DisplayMenuTitle:
        PUSH     {R3-R9,LR}
        MOV      R8,R0
//  380   uint32_t x, y;
//  381   sFONT *OldFont = CurrentFont;
        LDR.N    R4,??DataTable42
        LDR      R5,[R4, #+0]
//  382   LCD_Method OldMethod = CurrentMethod;
        LDR.N    R6,??DataTable42_2
        LDRB     R7,[R6, #+0]
//  383 
//  384   CurrentFont = &Font_6x8;
        LDR.W    R9,??DataTable42_3
        STR      R9,[R4, #+0]
//  385   CurrentMethod = MET_AND;
        MOVS     R0,#+4
        STRB     R0,[R6, #+0]
//  386 
//  387   x = (MAX_X - (CurrentFont->Width * strlen((const char *)ptr))) / 2;
        MOV      R0,R8
        BL       strlen
//  388   LCD_PUTS(x, 0, ptr);
        MOV      R2,R8
        MOVS     R1,#+0
        LDR      R3,[R9, #+4]
        BL       ?Subroutine1
??CrossCallReturnLabel_3:
        BL       LCD_PUTS
//  389 
//  390   y = CurrentFont->Height + 1;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+1
//  391   CurrentMethod = MET_OR;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  392   LCD_Line(0, y, MAX_X, y);
        MOV      R3,R1
        MOVS     R2,#+127
        BL       LCD_Line
//  393 
//  394   CurrentFont = OldFont;
        STR      R5,[R4, #+0]
//  395   CurrentMethod = OldMethod;
        STRB     R7,[R6, #+0]
//  396 }
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MULS     R0,R0,R3
        RSB      R0,R0,#+127
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+24
        BX       LR
//  397 
//  398 /*******************************************************************************
//  399 * Function Name  : Menu_Init
//  400 * Description    : Menu initialization
//  401 * Input          : None
//  402 * Output         : None
//  403 * Return         : None
//  404 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  405 void Menu_Init(void)
//  406 {
//  407   psCurrentMenu = &MainMenu;
Menu_Init:
        LDR.N    R0,??DataTable42_1
        ADD      R1,R0,#+72
        STR      R1,[R0, #+32]
//  408   psPrevMenu[nMenuLevel] = psCurrentMenu;
        LDR      R1,[R0, #+4]
        ADD      R1,R0,R1, LSL #+2
        ADD      R2,R0,#+72
        STR      R2,[R1, #+16]
//  409   psMenuItem = MainMenuItems;
        ADD      R1,R0,#+36
        STR      R1,[R0, #+8]
//  410   CurrentFont = &Font_6x8;
        LDR.N    R0,??DataTable42
        LDR.N    R1,??DataTable42_3
        STR      R1,[R0, #+0]
//  411 }
        BX       LR               ;; return
//  412 
//  413 /*******************************************************************************
//  414 * Function Name  : DisplayMenu
//  415 * Description    : Displays the current menu
//  416 * Input          : None
//  417 * Output         : None
//  418 * Return         : None
//  419 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  420 void DisplayMenu(void)
//  421 {
DisplayMenu:
        PUSH     {R3-R9,LR}
//  422   uint32_t y, index;
//  423   tMenuItem psMenuItem2;
//  424 
//  425   LCD_CLS();
        BL       LCD_CLS
//  426   CurrentMethod = MET_AND;
        LDR.N    R4,??DataTable42_2
        MOVS     R0,#+4
        STRB     R0,[R4, #+0]
//  427 
//  428   /* Display menu header */
//  429   DisplayMenuTitle(psCurrentMenu->psTitle);
        LDR.N    R5,??DataTable42_1
        LDR      R0,[R5, #+32]
        LDR      R0,[R0, #+0]
        BL       DisplayMenuTitle
//  430   /* Display menu items */
//  431   for (index = 0, y = CurrentFont->Height + 4;
        MOVS     R7,#+0
        LDR.N    R6,??DataTable42
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+0]
        ADD      R9,R0,#+4
        MOV      R8,#+12
        B.N      ??DisplayMenu_0
//  432        index < psCurrentMenu->nItems;
//  433        index++, y += CurrentFont->Height + 2)
//  434   {
//  435     psMenuItem2 = &(psCurrentMenu->psItems[index]);
//  436     DisplayMenuItemString(y, psMenuItem2->psTitle);
??DisplayMenu_1:
        MLA      R0,R8,R7,R0
        LDR      R1,[R0, #+0]
        MOV      R0,R9
        BL       DisplayMenuItemString
//  437   }
        ADDS     R7,R7,#+1
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2
        ADD      R9,R0,R9
??DisplayMenu_0:
        LDR      R1,[R5, #+32]
        LDR      R0,[R1, #+4]
        LDR      R1,[R1, #+8]
        CMP      R7,R1
        BCC.N    ??DisplayMenu_1
//  438 
//  439   /* Determine current item */
//  440   psMenuItem = &(psCurrentMenu->psItems[MenuItemIndex]);
        LDR      R1,[R5, #+0]
        MLA      R0,R8,R1,R0
        STR      R0,[R5, #+8]
//  441   CurrentMethod = MET_NOT_XOR;
        MOVS     R0,#+3
        STRB     R0,[R4, #+0]
//  442   LCD_PUTS(0, (MenuItemIndex * (CurrentFont->Height + 2) + CurrentFont->Height + 4), "                                        ");
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+0]
        ADR.W    R2,`?<Constant "                     ...">`
        ADDS     R3,R0,#+2
        MLA      R0,R3,R1,R0
        ADDS     R1,R0,#+4
        UXTB     R1,R1
        MOVS     R0,#+0
        POP      {R3-R9,LR}
        B.W      LCD_PUTS
//  443 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_1:
        DC32     MenuItemIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_2:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable42_3:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "                     ...">`:
        DC8 "                                        "
        DC8 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Adjust">`:
        DC8 "Adjust"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Show">`:
        DC8 "Show"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Return">`:
        DC8 "Return"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Time">`:
        DC8 "Time"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Date">`:
        DC8 "Date"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Alarm">`:
        DC8 "Alarm"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Exit on RTC Alarm">`:
        DC8 "Exit on RTC Alarm"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "STOP Mode">`:
        DC8 "STOP Mode"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Exit on Wakeup">`:
        DC8 "Exit on Wakeup"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "STANDBY Mode">`:
        DC8 "STANDBY Mode"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "With FIFO">`:
        DC8 "With FIFO"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Without FIFO">`:
        DC8 "Without FIFO"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "UART">`:
        DC8 "UART"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Real Time Clock">`:
        DC8 "Real Time Clock"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "STOP">`:
        DC8 "STOP"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "STANDBY">`:
        DC8 "STANDBY"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Low Power Mode">`:
        DC8 "Low Power Mode"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Font">`:
        DC8 "Font"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Style">`:
        DC8 "Style"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Book">`:
        DC8 "Book"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Text">`:
        DC8 "Text"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Elements">`:
        DC8 "Elements"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Indicators">`:
        DC8 "Indicators"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Graphics">`:
        DC8 "Graphics"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "On">`:
        DC8 "On"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "LEDs">`:
        DC8 "LEDs"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "USB. Virtual COM">`:
        DC8 "USB. Virtual COM"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Communication">`:
        DC8 "Communication"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Thermometer">`:
        DC8 "Thermometer"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Low Power">`:
        DC8 "Low Power"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Other devices">`:
        DC8 "Other devices"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Display">`:
        DC8 "Display"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Other">`:
        DC8 "Other"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Devices">`:
        DC8 "Devices"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "About">`:
        DC8 "About"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Main menu">`:
        DC8 "Main menu"
        DC8 0, 0

        END
//  444 
//  445 /** @} */ /* End of group Menu_Functions */
//  446 
//  447 /** @} */ /* End of group Menu_Private_Functions */
//  448 
//  449 /** @} */ /* End of group Menu */
//  450 
//  451 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  452 
//  453 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  454 *
//  455 * END OF FILE Menu.c */
// 
// 828 bytes in section .data
// 396 bytes in section .rodata
// 620 bytes in section .text
// 
// 620 bytes of CODE  memory
// 396 bytes of CONST memory
// 828 bytes of DATA  memory
//
//Errors: none
//Warnings: none
