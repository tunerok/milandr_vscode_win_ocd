///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_time.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_time.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_time.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_time

        #define SHT_PROGBITS 0x1

        EXTERN AlarmSetStatus
        EXTERN BKP_RTC_Calibration
        EXTERN BKP_RTC_Enable
        EXTERN BKP_RTC_GetCounter
        EXTERN BKP_RTC_ITConfig
        EXTERN BKP_RTC_Reset
        EXTERN BKP_RTC_SetAlarm
        EXTERN BKP_RTC_SetCounter
        EXTERN BKP_RTC_SetPrescaler
        EXTERN BKP_RTC_WaitForUpdate
        EXTERN BKP_RTCclkSource
        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN DisplayMenuTitle
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTC
        EXTERN LCD_PUTS
        EXTERN RST_CLK_LSEconfig
        EXTERN RST_CLK_LSEstatus
        EXTERN RST_CLK_PCLKcmd
        EXTERN SysTickDelay

        PUBLIC AlarmAdjustFunc
        PUBLIC AlarmShowFunc
        PUBLIC Alarm_Display
        PUBLIC Alarm_Regulate
        PUBLIC Calendar_Init
        PUBLIC DateAdjustFunc
        PUBLIC DatePreAdjustFunc
        PUBLIC DateShowFunc
        PUBLIC Date_Display
        PUBLIC Date_Regulate
        PUBLIC Date_Update
        PUBLIC IsValidDate
        PUBLIC RTCHelp
        PUBLIC RTC_Configuration
        PUBLIC ReadDigit
        PUBLIC ShowSelDigit
        PUBLIC TimeAdjustFunc
        PUBLIC TimePreAdjustFunc
        PUBLIC TimeShowFunc
        PUBLIC Time_Display
        PUBLIC Time_Regulate

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_time.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_time.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.2.0
//    6   * @date    01.12.2011
//    7   * @brief   This file contains all the "TIME" menu handlers.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   11   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   12   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   13   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   14   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   15   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   16   *
//   17   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   18   */
//   19 /* Includes ------------------------------------------------------------------*/
//   20 #include "MDR32F9Qx_config.h"
//   21 #include <MDR32Fx.h>
//   22 #include <MDR32F9Qx_port.h>
//   23 #include <MDR32F9Qx_bkp.h>
//   24 #include <MDR32F9Qx_rst_clk.h>
//   25 #include "systick.h"
//   26 #include "Menu.h"
//   27 #include "Menu_items.h"
//   28 #include "leds.h"
//   29 #include "lcd.h"
//   30 #include "text.h"
//   31 #include "joystick.h"
//   32 #include "time.h"
//   33 #include "MDR32F9Qx_it.h"
//   34 
//   35 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   36   * @{
//   37   */
//   38 
//   39 /** @addtogroup Menu Menu
//   40   * @{
//   41   */
//   42 
//   43 /** @addtogroup Menu_TIME Menu TIME
//   44   * @{
//   45   */
//   46 
//   47 /** @defgroup Menu_TIME_Private_Constants Menu TIME Private Constants
//   48   * @{
//   49   */
//   50 
//   51 #define Time_Display_Column              33
//   52 #define Date_Display_Column              37
//   53 
//   54 /* LCD lines */
//   55 #define LineTitle                        LineMessage3 + DefaultFontHeight + Interline
//   56 #define LineDigits                       LineTitle + DefaultFontHeight + Interline
//   57 
//   58 /* LCD columns for Time digits */
//   59 #define TimeH_h                          Time_Display_Column
//   60 #define TimeH_l                          TimeH_h + DefaultFontWidth
//   61 #define TimeH_sep                        TimeH_l + DefaultFontWidth
//   62 #define TimeM_h                          TimeH_sep + DefaultFontWidth
//   63 #define TimeM_l                          TimeM_h + DefaultFontWidth
//   64 #define TimeM_sep                        TimeM_l + DefaultFontWidth
//   65 #define TimeS_h                          TimeM_sep + DefaultFontWidth
//   66 #define TimeS_l                          TimeS_h + DefaultFontWidth
//   67 
//   68 /* LCD columns for Date digits */
//   69 #define DateD_h                          Date_Display_Column
//   70 #define DateD_l                          DateD_h + DefaultFontWidth
//   71 #define DateD_sep                        DateD_l + DefaultFontWidth
//   72 #define DateM_h                          DateD_sep + DefaultFontWidth
//   73 #define DateM_l                          DateM_h + DefaultFontWidth
//   74 #define DateM_sep                        DateM_l + DefaultFontWidth
//   75 #define DateY_1000                       DateM_sep + DefaultFontWidth
//   76 #define DateY_100                        DateY_1000 + DefaultFontWidth
//   77 #define DateY_10                         DateY_100 + DefaultFontWidth
//   78 #define DateY_1                          DateY_10 + DefaultFontWidth
//   79 
//   80 /** @} */ /* End of group Menu_TIME_Private_Constants */
//   81 
//   82 /** @defgroup Menu_TIME_Private_Types Menu TIME Private Types
//   83   * @{
//   84   */
//   85 
//   86 /* Time Structure definition */
//   87 typedef struct
//   88 {
//   89   uint8_t sec_l;
//   90   uint8_t sec_h;
//   91   uint8_t min_l;
//   92   uint8_t min_h;
//   93   uint8_t hour_l;
//   94   uint8_t hour_h;
//   95 }tTime;
//   96 
//   97 /* Alarm Structure definition */
//   98 typedef struct
//   99 {
//  100   uint8_t sec_l;
//  101   uint8_t sec_h;
//  102   uint8_t min_l;
//  103   uint8_t min_h;
//  104   uint8_t hour_l;
//  105   uint8_t hour_h;
//  106 }tAlarm;
//  107 
//  108 /* Date Structure definition */
//  109 typedef struct
//  110 {
//  111   uint8_t day;
//  112   uint8_t month;
//  113   uint16_t year;
//  114 }tDate;
//  115 
//  116 /** @} */ /* End of group Menu_TIME_Private_Types */
//  117 
//  118 /** @defgroup Menu_TIME_Private_Macros Menu TIME Private Macros
//  119   * @{
//  120   */
//  121 
//  122 /** @} */ /* End of group Menu_TIME_Private_Macros */
//  123 
//  124 /** @defgroup Menu_TIME_Private_Variables Menu TIME Private Variables
//  125   * @{
//  126   */
//  127 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  128 static tTime  sTime;
sTime:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  129 static tAlarm sAlarm;
sAlarm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  130 static tDate  sDate;
sDate:
        DS8 4
//  131 
//  132 /** @} */ /* End of group Menu_TIME_Private_Variables */
//  133 
//  134 /** @defgroup Menu_TIME_Private_Functions Menu TIME Private Functions
//  135   * @{
//  136   */
//  137 
//  138 /*******************************************************************************
//  139 * Function Name  : RTC_Configuration
//  140 * Description    : Configures the RTC.
//  141 * Input          : None.
//  142 * Output         : None
//  143 * Return         : None
//  144 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 void RTC_Configuration(void)
//  146 {
RTC_Configuration:
        PUSH     {R7,LR}
//  147   /* Configure LSE as RTC clock source */
//  148   RST_CLK_LSEconfig(RST_CLK_LSE_ON);
        MOVS     R0,#+1
        BL       RST_CLK_LSEconfig
//  149   /* Wait till LSE is ready */
//  150   while (RST_CLK_LSEstatus() != SUCCESS)
??RTC_Configuration_0:
        BL       RST_CLK_LSEstatus
        CMP      R0,#+1
        BNE.N    ??RTC_Configuration_0
//  151   {
//  152   }
//  153 
//  154   /* Select the RTC Clock Source */
//  155   BKP_RTCclkSource(BKP_RTC_LSEclk);
        MOVS     R0,#+4
        BL       BKP_RTCclkSource
//  156   /* Wait until last write operation on RTC registers has finished */
//  157   BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  158 
//  159   /* Sets the RTC prescaler */
//  160   BKP_RTC_SetPrescaler(RTC_PRESCALER_VALUE);
        MOV      R0,#+32768
        BL       BKP_RTC_SetPrescaler
//  161   /* Wait until last write operation on RTC registers has finished */
//  162   BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  163 
//  164   /* Sets the RTC calibrator */
//  165   BKP_RTC_Calibration(RTC_CalibratorValue);
        MOVS     R0,#+0
        BL       BKP_RTC_Calibration
//  166   /* Wait until last write operation on RTC registers has finished */
//  167   BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  168 
//  169   /* Enable the RTC Clock */
//  170   BKP_RTC_Enable(ENABLE);
        MOVS     R0,#+1
        BL       BKP_RTC_Enable
//  171 
//  172   /* Enable the Second interrupt */
//  173   BKP_RTC_ITConfig(BKP_RTC_IT_SECF, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       BKP_RTC_ITConfig
//  174   NVIC_EnableIRQ(BACKUP_IRQn);
        LDR.W    R0,??DataTable35  ;; 0xe000e100
        MOV      R1,#+134217728
        STR      R1,[R0, #+0]
//  175 }
        POP      {R0,PC}          ;; return
//  176 
//  177 /*******************************************************************************
//  178 * Function Name  : ShowSelDigit
//  179 * Description    : Prints on LCD the value of currently selected digit
//  180 * Input          : Col  - x-coordinate
//  181 *                : Line - y-coordinate
//  182 *                : ch   - symbol to print
//  183 * Output         : None
//  184 * Return         : Digit value
//  185 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void ShowSelDigit(uint8_t Col, uint8_t Line, uint8_t ch)
//  187 {
ShowSelDigit:
        PUSH     {R4-R8,LR}
        MOV      R4,R0
        MOV      R5,R1
        MOV      R8,R2
//  188   LCD_Method OldMethod = CurrentMethod;
        LDR.W    R7,??DataTable35_1
        LDRB     R6,[R7, #+0]
//  189 
//  190   CurrentMethod = MET_AND;
        MOVS     R0,#+4
        STRB     R0,[R7, #+0]
//  191   LCD_PUTC(Col, Line, ' ');
        MOVS     R2,#+32
        MOV      R0,R4
        BL       LCD_PUTC
//  192   CurrentMethod = MET_NOT_XOR;
        MOVS     R0,#+3
        STRB     R0,[R7, #+0]
//  193   LCD_PUTC(Col, Line, ch);
        MOV      R2,R8
        MOV      R1,R5
        MOV      R0,R4
        BL       LCD_PUTC
//  194 
//  195   CurrentMethod = OldMethod;
        STRB     R6,[R7, #+0]
//  196 }
        POP      {R4-R8,PC}       ;; return
//  197 
//  198 
//  199 /*******************************************************************************
//  200 * Function Name  : ReadDigit
//  201 * Description    : Reads digit entered by user with joystick navigation keys.
//  202 * Input          : ColBegin    - digit column
//  203 *                : CountBegin  - digit value
//  204 *                : ValueMax    - max limit
//  205 *                : ValueMin    - min limit
//  206 * Output         : None
//  207 * Return         : Digit value
//  208 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  209 uint8_t ReadDigit(uint8_t ColBegin, uint8_t CountBegin, uint8_t ValueMax, uint8_t ValueMin)
//  210 {
ReadDigit:
        PUSH     {R3-R9,LR}
        MOV      R8,R0
        MOV      R5,R1
        MOV      R6,R2
        MOV      R9,R3
//  211   uint32_t tmp = CountBegin;
//  212   KeyCode key;
//  213 
//  214   /* Display selected digit */
//  215   ShowSelDigit(ColBegin, LineDigits, (tmp + 0x30));
        ADD      R2,R5,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        BL       ShowSelDigit
//  216 
//  217   for (key = GetKey(); key != SEL; key = GetKey())
        BL       GetKey
        MOV      R4,R0
        LDR.W    R7,??DataTable35_1
        B.N      ??ReadDigit_0
//  218   {
//  219     /* If "UP" pushbutton is pressed */
//  220     if(key == UP)
??ReadDigit_1:
        CMP      R4,#+1
        BNE.N    ??ReadDigit_2
//  221     {
//  222       /* Increase the value of the digit */
//  223       if(tmp >= ValueMax)
        CMP      R5,R6
        IT       CS 
        SUBCS    R5,R9,#+1
//  224       {
//  225         tmp = (ValueMin - 1);
//  226       }
//  227       /* Display new value */
//  228       tmp++;
        ADDS     R5,R5,#+1
//  229       ShowSelDigit(ColBegin, LineDigits, (tmp + 0x30));
        ADD      R2,R5,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        MOV      R0,R8
        BL       ShowSelDigit
//  230     }
//  231     /* If "DOWN" pushbutton is pressed */
//  232     if(key == DOWN)
??ReadDigit_2:
        CMP      R4,#+2
        BNE.N    ??ReadDigit_3
//  233     {
//  234       /* Decrease the value of the digit */
//  235       if(tmp == ValueMin)
        CMP      R5,R9
        IT       EQ 
        ADDEQ    R5,R6,#+1
//  236       {
//  237         tmp = (ValueMax + 1);
//  238       }
//  239       /* Display new value */
//  240       tmp--;
        SUBS     R5,R5,#+1
//  241       CurrentMethod = MET_AND;
        BL       ?Subroutine5
//  242       ShowSelDigit(ColBegin, LineDigits, (tmp + 0x30));
//  243     }
??CrossCallReturnLabel_21:
        BL       ShowSelDigit
//  244     WAIT_UNTIL_KEY_RELEASED(key);
??ReadDigit_3:
        BL       GetKey
        CMP      R0,R4
        BEQ.N    ??ReadDigit_3
//  245   }
        BL       GetKey
        MOV      R4,R0
??ReadDigit_0:
        CMP      R4,#+0
        BNE.N    ??ReadDigit_1
//  246   /* "SEL" pushbutton is pressed */
//  247   WAIT_UNTIL_KEY_RELEASED(SEL);
??ReadDigit_4:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??ReadDigit_4
//  248   CurrentMethod = MET_AND;
        BL       ?Subroutine5
//  249   LCD_PUTC(ColBegin, LineDigits, (tmp + 0x30));
??CrossCallReturnLabel_22:
        BL       LCD_PUTC
//  250   /* Return the digit value and exit */
//  251   return tmp;
        UXTB     R0,R5
        POP      {R1,R4-R9,PC}    ;; return
//  252 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine5:
        MOVS     R0,#+4
        STRB     R0,[R7, #+0]
        ADD      R2,R5,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        MOV      R0,R8
        BX       LR
//  253 
//  254 /*******************************************************************************
//  255 * Function Name  : Time_Display
//  256 * Description    : Displays current time.
//  257 * Input          : None
//  258 * Output         : None
//  259 * Return         : None
//  260 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  261 void Time_Display()
//  262 {
Time_Display:
        PUSH     {R3-R9,LR}
//  263   uint32_t TimeVar = BKP_RTC_GetCounter();
        BL       BKP_RTC_GetCounter
        MOV      R8,R0
//  264 
//  265   /* Display hours */
//  266   sTime.hour_h = (uint8_t)(TimeVar / 3600) / 10;
        MOV      R7,#+3600
        UDIV     R6,R8,R7
        LDR.W    R4,??DataTable35_2
        BL       ?Subroutine6
//  267   LCD_PUTC(TimeH_h, LineDigits, (sTime.hour_h + 0x30));
//  268   sTime.hour_l = (uint8_t)(((TimeVar) / 3600) % 10);
??CrossCallReturnLabel_24:
        BL       ?Subroutine7
//  269   LCD_PUTC(TimeH_l, LineDigits, (sTime.hour_l + 0x30));
//  270 
//  271   /* Display separator */
//  272   LCD_PUTC(TimeH_sep, LineDigits, ':');
??CrossCallReturnLabel_26:
        MOVS     R2,#+58
        MOVS     R1,#+52
        MOVS     R0,#+45
        BL       LCD_PUTC
//  273 
//  274   /* Display minutes */
//  275   sTime.min_h = (uint8_t)(((TimeVar) % 3600) / 60) / 10;
        BL       ?Subroutine8
//  276   LCD_PUTC(TimeM_h, LineDigits, (sTime.min_h + 0x30));
//  277   sTime.min_l = (uint8_t)(((TimeVar) % 3600) / 60) % 10;
??CrossCallReturnLabel_28:
        BL       ?Subroutine9
//  278   LCD_PUTC(TimeM_l, LineDigits, (sTime.min_l + 0x30));
??CrossCallReturnLabel_29:
        BL       LCD_PUTC
//  279 
//  280   /* Display separator */
//  281   LCD_PUTC(TimeM_sep, LineDigits, ':');
        MOVS     R2,#+58
        MOVS     R1,#+52
        MOVS     R0,#+63
        B.N      ?Subroutine0
//  282 
//  283   /* Display seconds */
//  284   sTime.sec_h = (uint8_t)(((TimeVar) % 3600) % 60) / 10;
//  285   LCD_PUTC(TimeS_h, LineDigits, (sTime.sec_h + 0x30));
//  286   sTime.sec_l = (uint8_t)(((TimeVar) % 3600) % 60) % 10;
//  287   LCD_PUTC(TimeS_l, LineDigits, (sTime.sec_l + 0x30));
//  288 }
//  289 
//  290 /*******************************************************************************
//  291 * Function Name  : Time_Regulate
//  292 * Description    : Returns the time entered by user with joystick navigation keys.
//  293 * Input          : None
//  294 * Output         : None
//  295 * Return         : Current time RTC counter value
//  296 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 uint32_t Time_Regulate(void)
//  298 {
Time_Regulate:
        PUSH     {R4-R8,LR}
//  299   uint32_t Tmp_HH, Tmp_MM, Tmp_SS;
//  300 
//  301   /* Read hours */
//  302   Tmp_HH = ReadDigit(TimeH_h, sTime.hour_h, 0x2, 0x0);
        LDR.W    R4,??DataTable35_2
        MOVS     R3,#+0
        MOVS     R2,#+2
        LDRB     R1,[R4, #+5]
        MOVS     R0,#+33
        BL       ReadDigit
        MOV      R6,R0
//  303   if(Tmp_HH == 2)
        LDRB     R1,[R4, #+4]
        MOVS     R5,#+10
        CMP      R6,#+2
        BNE.N    ??Time_Regulate_0
//  304   {
//  305     if(sTime.hour_l > 3)
        CMP      R1,#+4
        ITT      CS 
        MOVCS    R0,#+0
        STRBCS   R0,[R4, #+4]
//  306     {
//  307       sTime.hour_l = 0;
//  308     }
//  309     Tmp_HH = Tmp_HH*10 + ReadDigit(TimeH_l, sTime.hour_l, 0x3, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+3
        LDRB     R1,[R4, #+4]
        BL       ??Subroutine13_0
//  310   }
??CrossCallReturnLabel_36:
        ADD      R6,R0,#+20
        B.N      ??Time_Regulate_1
//  311   else
//  312   {
//  313     Tmp_HH = Tmp_HH*10 + ReadDigit(TimeH_l, sTime.hour_l, 0x9, 0x0);
??Time_Regulate_0:
        BL       ?Subroutine13
//  314   }
??CrossCallReturnLabel_38:
        MLA      R6,R5,R6,R0
//  315   /* Read minutes */
//  316   Tmp_MM = ReadDigit(TimeM_h, sTime.min_h, 0x5, 0x0);
??Time_Regulate_1:
        MOVS     R3,#+0
        MOVS     R2,#+5
        LDRB     R1,[R4, #+3]
        MOVS     R0,#+51
        BL       ReadDigit
        MOV      R7,R0
//  317   Tmp_MM = Tmp_MM*10 + ReadDigit(TimeM_l, sTime.min_l, 0x9, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+9
        LDRB     R1,[R4, #+2]
        MOVS     R0,#+57
        BL       ReadDigit
        MOV      R8,R0
//  318   /* Read seconds */
//  319   Tmp_SS = ReadDigit(TimeS_h, sTime.sec_h, 0x5, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+5
        LDRB     R1,[R4, #+1]
        MOVS     R0,#+69
        BL       ReadDigit
//  320   Tmp_SS = Tmp_SS*10 + ReadDigit(TimeS_l, sTime.sec_l, 0x9, 0x0);
//  321 
//  322   /* Return the value that to be stored in RTC counter register */
//  323   return((Tmp_HH*3600 + Tmp_MM*60 + Tmp_SS));
        MOV      R1,#+3600
        MLA      R2,R5,R7,R8
        MOVS     R3,#+60
        MULS     R2,R3,R2
        MLA      R1,R1,R6,R2
        MLA      R5,R5,R0,R1
        MOVS     R3,#+0
        MOVS     R2,#+9
        LDRB     R1,[R4, #+0]
        MOVS     R0,#+75
        BL       ReadDigit
        ADDS     R0,R0,R5
        POP      {R4-R8,PC}       ;; return
//  324 }
//  325 
//  326 /*******************************************************************************
//  327 * Function Name  : RTCHelp
//  328 * Description    : Prints hint to the screen.
//  329 * Input          : None
//  330 * Output         : None
//  331 * Return         : None
//  332 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void RTCHelp(void)
//  334 {
RTCHelp:
        PUSH     {R7,LR}
//  335   LCD_PUTS(0, LineMessage1, "RTC is not configured");
        ADR.W    R2,`?<Constant "RTC is not configured">`
        MOVS     R1,#+12
        BL       ??Subroutine4_1
//  336   LCD_PUTS(0, LineMessage2, "Please, use the ");
??CrossCallReturnLabel_14:
        ADR.W    R2,`?<Constant "Please, use the ">`
        MOVS     R1,#+22
        BL       ??Subroutine4_1
//  337   LCD_PUTS(0, LineMessage3, "Time Adjust menu.    ");
??CrossCallReturnLabel_13:
        ADR.W    R2,`?<Constant "Time Adjust menu.    ">`
        MOVS     R1,#+32
        BL       ??Subroutine4_1
//  338   WAIT_UNTIL_KEY_PRESSED(SEL);
??CrossCallReturnLabel_12:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??CrossCallReturnLabel_12
//  339   WAIT_UNTIL_KEY_RELEASED(SEL);
??RTCHelp_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??RTCHelp_0
//  340 }
        POP      {R0,PC}          ;; return
//  341 
//  342 /*******************************************************************************
//  343 * Function Name  : TimePreAdjustFunc
//  344 * Description    : Enables the user to adjust current time with joystick keys.
//  345 * Input          : None
//  346 * Output         : None
//  347 * Return         : None
//  348 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  349 void TimePreAdjustFunc(void)
//  350 {
TimePreAdjustFunc:
        PUSH     {R4-R10,LR}
//  351   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine14
//  352   LCD_Method OldMethod = CurrentMethod;
//  353 
//  354   /* Print the header */
//  355   LCD_CLS();
//  356   CurrentMethod = MET_AND;
??CrossCallReturnLabel_43:
        BL       ?Subroutine3
//  357   CurrentFont = &Font_6x8;
//  358   DisplayMenuTitle("Time adjust");
??CrossCallReturnLabel_0:
        ADR.W    R0,`?<Constant "Time adjust">`
        BL       DisplayMenuTitle
//  359   WAIT_UNTIL_KEY_RELEASED(SEL);
??TimePreAdjustFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??TimePreAdjustFunc_0
//  360 
//  361   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        ADR.W    R8,`?<Constant "        TIME        ">`
        MOVW     R9,#+4660
        LDR.W    R10,??DataTable35_3  ;; 0x400d8000
        LDR      R0,[R10, #+0]
        CMP      R0,R9
        ITT      EQ 
        LDREQ    R0,[R10, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??TimePreAdjustFunc_1
//  362   {
//  363     LCD_PUTS(0, LineTitle, "RTC is configured...");
        ADR.W    R2,`?<Constant "RTC is configured...">`
        BL       ??Subroutine4_0
//  364     /* Reset Backup Domain */
//  365     /* RTC reset */
//  366     BKP_RTC_Reset(ENABLE);
??CrossCallReturnLabel_18:
        MOVS     R0,#+1
        BL       BKP_RTC_Reset
//  367     BKP_RTC_Reset(DISABLE);
        MOVS     R0,#+0
        BL       BKP_RTC_Reset
//  368     /* RTC Configuration */
//  369     RTC_Configuration();
        BL       RTC_Configuration
//  370     /* Set the RTC counter value */
//  371     BKP_RTC_SetCounter(0);
        MOVS     R0,#+0
        BL       BKP_RTC_SetCounter
//  372     /* Wait until last write operation on RTC registers has finished */
//  373     BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  374 
//  375     LCD_PUTS(0, LineTitle, "        TIME        ");
        MOV      R2,R8
        BL       ??Subroutine4_0
//  376 
//  377     /* Display the current time */
//  378     Time_Display();
??CrossCallReturnLabel_17:
        BL       Time_Display
//  379 
//  380     /* Change the current time */
//  381     BKP_RTC_SetCounter(Time_Regulate());
        BL       Time_Regulate
        BL       BKP_RTC_SetCounter
//  382     /* Wait until last write operation on RTC registers has finished */
//  383     BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  384 
//  385     MDR_BKP->REG_00 = 0x1234;
        STR      R9,[R10, #+0]
//  386     /* Wait until last write operation on RTC registers has finished */
//  387     BKP_RTC_WaitForUpdate();
        B.N      ??TimePreAdjustFunc_2
//  388   }
//  389   else
//  390   {
//  391     LCD_PUTS(0, LineTitle, "        TIME        ");
??TimePreAdjustFunc_1:
        MOV      R2,R8
        BL       ??Subroutine4_0
//  392 
//  393     /* Display the current time */
//  394     Time_Display();
??CrossCallReturnLabel_16:
        BL       Time_Display
//  395 
//  396     /* Change the current time */
//  397     BKP_RTC_SetCounter(Time_Regulate());
        BL       Time_Regulate
        BL       BKP_RTC_SetCounter
//  398     /* Wait until last write operation on RTC registers has finished */
//  399     BKP_RTC_WaitForUpdate();
??TimePreAdjustFunc_2:
        BL       BKP_RTC_WaitForUpdate
//  400   }
//  401   CurrentMethod = OldMethod;
        STRB     R7,[R6, #+0]
//  402   CurrentFont = OldFont;
        STR      R5,[R4, #+0]
//  403 }
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        ADR.W    R2,`?<Constant "DATE  DD.MM.YYYY">`
??Subroutine4_0:
        MOVS     R1,#+42
??Subroutine4_1:
        MOVS     R0,#+0
        B.W      LCD_PUTS
//  404 
//  405 /*******************************************************************************
//  406 * Function Name  : TimeAdjustFunc
//  407 * Description    : Adjust time menu item handler
//  408 * Input          : None
//  409 * Output         : None
//  410 * Return         : None
//  411 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  412 void TimeAdjustFunc(void)
//  413 {
TimeAdjustFunc:
        PUSH     {R7,LR}
//  414   TimePreAdjustFunc();
        BL       TimePreAdjustFunc
//  415   /* Display the menu */
//  416   DisplayMenu();
        B.N      ?Subroutine2
//  417 }
//  418 
//  419 /*******************************************************************************
//  420 * Function Name  : TimeShowFunc
//  421 * Description    : Displays the current time (HH:MM:SS) on LCD.
//  422 * Input          : None
//  423 * Output         : None
//  424 * Return         : None
//  425 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  426 void TimeShowFunc(void)
//  427 {
TimeShowFunc:
        PUSH     {R3-R7,LR}
//  428   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine14
//  429   LCD_Method OldMethod = CurrentMethod;
//  430 
//  431   /* Print the header */
//  432   LCD_CLS();
//  433   CurrentMethod = MET_AND;
??CrossCallReturnLabel_42:
        BL       ?Subroutine3
//  434   CurrentFont = &Font_6x8;
//  435   DisplayMenuTitle("Time show");
??CrossCallReturnLabel_1:
        ADR.W    R0,`?<Constant "Time show">`
        BL       DisplayMenuTitle
//  436   WAIT_UNTIL_KEY_RELEASED(SEL);
??TimeShowFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??TimeShowFunc_0
//  437 
//  438   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        BL       ?Subroutine16
??CrossCallReturnLabel_46:
        ITT      EQ 
        LDREQ    R0,[R0, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??TimeShowFunc_1
//  439   {
//  440     RTCHelp();
        BL       RTCHelp
        B.N      ??TimeShowFunc_2
//  441   }
//  442   else
//  443   {
//  444     LCD_PUTS(0, LineTitle, "        TIME        ");
??TimeShowFunc_1:
        ADR.W    R2,`?<Constant "        TIME        ">`
        BL       ??Subroutine4_0
??CrossCallReturnLabel_15:
        B.N      ??TimeShowFunc_3
//  445     while (GetKey() != SEL)
//  446     {
//  447       /* Display the current time */
//  448       Time_Display();
??TimeShowFunc_4:
        BL       Time_Display
//  449     }
??TimeShowFunc_3:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??TimeShowFunc_4
//  450     WAIT_UNTIL_KEY_RELEASED(SEL);
??TimeShowFunc_5:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??TimeShowFunc_5
//  451   }
//  452 
//  453   CurrentMethod = OldMethod;
??TimeShowFunc_2:
        B.N      ?Subroutine1
//  454   CurrentFont = OldFont;
//  455 
//  456   /* Display the menu */
//  457   DisplayMenu();
//  458 
//  459 }
//  460 
//  461 /*******************************************************************************
//  462 * Function Name  : IsLeapYear
//  463 * Description    : Check whether the passed year is Leap or not.
//  464 * Input          : nYear - Year value
//  465 * Output         : None
//  466 * Return         : 1: leap year
//  467 *                : 0: not leap year
//  468 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  469 static uint32_t IsLeapYear(uint32_t nYear)
//  470 {
//  471   if(nYear % 4 != 0) return 0;
IsLeapYear:
        TST      R0,#0x3
        BEQ.N    ??IsLeapYear_0
        MOVS     R0,#+0
        BX       LR
//  472   if(nYear % 100 != 0) return 1;
??IsLeapYear_0:
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        MLS      R1,R1,R2,R0
        CBZ.N    R1,??IsLeapYear_1
        MOVS     R0,#+1
        BX       LR
//  473   return (uint8_t)(nYear % 400 == 0);
??IsLeapYear_1:
        MOV      R1,#+400
        UDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        SUBS     R0,R0,#+1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        BX       LR               ;; return
//  474 }
//  475 
//  476 /*******************************************************************************
//  477 * Function Name  : Date_Update
//  478 * Description    : Updates date when time is 23:59:59.
//  479 * Input          : None
//  480 * Output         : None
//  481 * Return         : None
//  482 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  483 void Date_Update(void)
//  484 {
Date_Update:
        PUSH     {R4-R6,LR}
//  485   if(sDate.month == 1 || sDate.month == 3 || sDate.month == 5 || sDate.month == 7 ||
//  486      sDate.month == 8 || sDate.month == 10 || sDate.month == 12)
        LDR.W    R4,??DataTable35_4
        LDRB     R5,[R4, #+0]
        LDRB     R0,[R4, #+1]
        MOV      R6,R0
        CMP      R0,#+1
        IT       NE 
        CMPNE    R6,#+3
        BEQ.N    ??Date_Update_0
        CMP      R6,#+5
        IT       NE 
        CMPNE    R6,#+7
        BEQ.N    ??Date_Update_0
        CMP      R6,#+8
        ITT      NE 
        CMPNE    R6,#+10
        CMPNE    R6,#+12
        BNE.N    ??Date_Update_1
//  487   {
//  488     if(sDate.day < 31)
??Date_Update_0:
        CMP      R5,#+31
        BCC.N    ??Date_Update_2
//  489     {
//  490       sDate.day++;
//  491     }
//  492     /* Date structure member: sDate.day = 31 */
//  493     else
//  494     {
//  495       if(sDate.month != 12)
        CMP      R6,#+12
        BNE.N    ??Date_Update_3
//  496       {
//  497         sDate.month++;
//  498         sDate.day = 1;
//  499       }
//  500       /* Date structure member: sDate.day = 31 & sDate.month =12 */
//  501       else
//  502       {
//  503         sDate.month = 1;
        MOVS     R6,#+1
//  504         sDate.day = 1;
        MOVS     R5,#+1
//  505         sDate.year++;
        LDRH     R0,[R4, #+2]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+2]
        B.N      ??Date_Update_4
//  506       }
//  507     }
//  508   }
//  509   else if(sDate.month == 4 || sDate.month == 6 || sDate.month == 9 ||
//  510           sDate.month == 11)
??Date_Update_1:
        CMP      R6,#+4
        IT       NE 
        CMPNE    R6,#+6
        BEQ.N    ??Date_Update_5
        CMP      R6,#+9
        IT       NE 
        CMPNE    R6,#+11
        BNE.N    ??Date_Update_6
//  511   {
//  512     if(sDate.day < 30)
??Date_Update_5:
        CMP      R5,#+30
        BCS.N    ??Date_Update_3
        B.N      ??Date_Update_2
//  513     {
//  514       sDate.day++;
//  515     }
//  516     /* Date structure member: sDate.day = 30 */
//  517     else
//  518     {
//  519       sDate.month++;
//  520       sDate.day = 1;
//  521     }
//  522   }
//  523   else if(sDate.month == 2)
??Date_Update_6:
        CMP      R6,#+2
        BNE.N    ??Date_Update_4
//  524   {
//  525     if(sDate.day < 28)
        CMP      R5,#+28
        BCC.N    ??Date_Update_2
//  526     {
//  527       sDate.day++;
//  528     }
//  529     else if(sDate.day == 28)
        BNE.N    ??Date_Update_7
//  530     {
//  531       /* Leap year */
//  532       if(IsLeapYear(sDate.year))
        LDRH     R0,[R4, #+2]
        BL       IsLeapYear
        CBZ.N    R0,??Date_Update_3
//  533       {
//  534         sDate.day++;
??Date_Update_2:
        ADDS     R5,R5,#+1
        B.N      ??Date_Update_4
//  535       }
//  536       else
//  537       {
//  538         sDate.month++;
//  539         sDate.day = 1;
//  540       }
//  541     }
//  542     else if(sDate.day == 29)
??Date_Update_7:
        CMP      R5,#+29
        BNE.N    ??Date_Update_4
//  543     {
//  544       sDate.month++;
??Date_Update_3:
        ADDS     R6,R6,#+1
//  545       sDate.day = 1;
        MOVS     R5,#+1
??Date_Update_4:
        STRB     R6,[R4, #+1]
        STRB     R5,[R4, #+0]
//  546     }
//  547   }
//  548 
//  549   MDR_BKP->REG_01 = sDate.year + (sDate.month << 16) + (sDate.day << 24);
        LDRH     R0,[R4, #+2]
        LDRB     R1,[R4, #+1]
        ADD      R0,R0,R1, LSL #+16
        LDRB     R1,[R4, #+0]
        ADD      R0,R0,R1, LSL #+24
        LDR.W    R1,??DataTable35_5  ;; 0x400d8004
        STR      R0,[R1, #+0]
//  550   /* Wait until last write operation on RTC registers has finished */
//  551   BKP_RTC_WaitForUpdate();
        POP      {R4-R6,LR}
        B.W      BKP_RTC_WaitForUpdate
//  552 }
//  553 
//  554 /*******************************************************************************
//  555 * Function Name  : IsValidDate
//  556 * Description    : Checks if the given date valid.
//  557 * Input          : Day   - Day value
//  558 *                : Month - Month value
//  559 *                : Year  - Year value
//  560 * Input          : None
//  561 * Output         : None
//  562 * Return         : SUCCESS if the date is valid, ERROR otherwise.
//  563 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  564 ErrorStatus IsValidDate(uint32_t Day, uint32_t Month, uint32_t Year)
//  565 {
IsValidDate:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R0,R2
//  566   if(Day == 0 || Month == 0 || Month > 12 || Year == 0)
        IT       NE 
        CMPNE    R1,#+0
        BEQ.N    ??IsValidDate_0
        CMP      R1,#+13
        BCS.N    ??IsValidDate_0
        CBZ.N    R0,??IsValidDate_0
//  567   {
//  568     return ERROR;
//  569   }
//  570   if((Month == 1 || Month == 3 || Month == 5 || Month == 7 ||
//  571      Month == 8 || Month == 10 || Month == 12) && (Day > 31))
        CMP      R1,#+1
        IT       NE 
        CMPNE    R1,#+3
        BEQ.N    ??IsValidDate_1
        CMP      R1,#+5
        IT       NE 
        CMPNE    R1,#+7
        BEQ.N    ??IsValidDate_1
        CMP      R1,#+8
        ITT      NE 
        CMPNE    R1,#+10
        CMPNE    R1,#+12
        BNE.N    ??IsValidDate_2
??IsValidDate_1:
        CMP      R4,#+32
        BCS.N    ??IsValidDate_0
//  572   {
//  573     return ERROR;
//  574   }
//  575   if((Month == 4 || Month == 6 || Month == 9 || Month == 11) && (Day > 30))
??IsValidDate_2:
        CMP      R1,#+4
        IT       NE 
        CMPNE    R1,#+6
        BEQ.N    ??IsValidDate_3
        CMP      R1,#+9
        IT       NE 
        CMPNE    R1,#+11
        BNE.N    ??IsValidDate_4
??IsValidDate_3:
        CMP      R4,#+31
        BCS.N    ??IsValidDate_0
//  576   {
//  577     return ERROR;
//  578   }
//  579   if(Month == 2)
??IsValidDate_4:
        CMP      R1,#+2
        BNE.N    ??IsValidDate_5
//  580   {
//  581     if (IsLeapYear(Year))
        BL       IsLeapYear
        CBZ.N    R0,??IsValidDate_6
//  582     {
//  583       if (Day > 29)
        CMP      R4,#+30
        BCS.N    ??IsValidDate_0
//  584       return ERROR;
//  585     }
//  586     else
//  587     {
//  588       if (Day > 28)
//  589       return ERROR;
//  590     }
//  591   }
//  592   return SUCCESS;
??IsValidDate_5:
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
??IsValidDate_6:
        CMP      R4,#+29
        BCC.N    ??IsValidDate_5
??IsValidDate_0:
        MOVS     R0,#+0
        POP      {R4,PC}
//  593 }
//  594 
//  595 /*******************************************************************************
//  596 * Function Name  : Date_Display
//  597 * Description    : Displays the current date.
//  598 * Input          : None
//  599 * Output         : None
//  600 * Return         : None
//  601 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  602 void Date_Display(void)
//  603 {
Date_Display:
        PUSH     {R3-R5,LR}
//  604   uint8_t tmp;
//  605   uint32_t temp_date;
//  606 
//  607   /* Initialize Date structure */
//  608   temp_date   = MDR_BKP->REG_01;
        LDR.W    R0,??DataTable35_5  ;; 0x400d8004
        LDR      R0,[R0, #+0]
//  609   sDate.day   = temp_date >> 24;
        LDR.W    R4,??DataTable35_4
        BL       ?Subroutine17
//  610   sDate.month = (temp_date >> 16) & 0xFF;
//  611   sDate.year  = temp_date & 0xFFFF;
//  612 
//  613   /* Display day */
//  614   tmp = (uint8_t)(sDate.day / 10);
//  615   LCD_PUTC(DateD_h, LineDigits, (tmp + 0x30));
??CrossCallReturnLabel_50:
        MOVS     R5,#+10
        LDRB     R0,[R4, #+0]
        SDIV     R0,R0,R5
        BL       ??Subroutine18_0
??CrossCallReturnLabel_52:
        MOVS     R0,#+37
        BL       LCD_PUTC
//  616   tmp = (uint8_t)(sDate.day % 10);
        LDRB     R0,[R4, #+0]
//  617   LCD_PUTC(DateD_l, LineDigits, (tmp + 0x30));
        BL       ?Subroutine10
??CrossCallReturnLabel_57:
        MOVS     R0,#+43
        BL       LCD_PUTC
//  618 
//  619   /* Display separator */
//  620   LCD_PUTC(DateD_sep, LineDigits, '.');
        MOVS     R2,#+46
        MOVS     R1,#+52
        MOVS     R0,#+49
        BL       LCD_PUTC
//  621 
//  622   /* Display month */
//  623   tmp = (uint8_t)(sDate.month / 10);
//  624   LCD_PUTC(DateM_h, LineDigits, (tmp + 0x30));
        LDRB     R0,[R4, #+1]
        SDIV     R0,R0,R5
        BL       ??Subroutine18_0
??CrossCallReturnLabel_53:
        MOVS     R0,#+55
        BL       LCD_PUTC
//  625   tmp = (uint8_t)(sDate.month % 10);
        LDRB     R0,[R4, #+1]
//  626   LCD_PUTC(DateM_l, LineDigits, (tmp + 0x30));
        BL       ?Subroutine10
??CrossCallReturnLabel_58:
        MOVS     R0,#+61
        BL       LCD_PUTC
//  627 
//  628   /* Display separator */
//  629   LCD_PUTC(DateM_sep, LineDigits, '.');
        MOVS     R2,#+46
        MOVS     R1,#+52
        MOVS     R0,#+67
        BL       LCD_PUTC
//  630 
//  631   /* Display year */
//  632   tmp = (uint8_t)(sDate.year / 1000);
//  633   LCD_PUTC(DateY_1000, LineDigits, (tmp + 0x30));
        LDRH     R0,[R4, #+2]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
        BL       ??Subroutine18_0
??CrossCallReturnLabel_54:
        MOVS     R0,#+73
        BL       LCD_PUTC
//  634   tmp = (uint8_t)((sDate.year / 100) % 10);
        LDRH     R0,[R4, #+2]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
//  635   LCD_PUTC(DateY_100, LineDigits, (tmp + 0x30));
        BL       ?Subroutine10
??CrossCallReturnLabel_59:
        MOVS     R0,#+79
        BL       LCD_PUTC
//  636   tmp = (uint8_t)((sDate.year / 10) % 10);
        LDRH     R0,[R4, #+2]
        SDIV     R0,R0,R5
//  637   LCD_PUTC(DateY_10, LineDigits, (tmp + 0x30));
        BL       ?Subroutine10
??CrossCallReturnLabel_60:
        MOVS     R0,#+85
        BL       LCD_PUTC
//  638   tmp = (uint8_t)(sDate.year % 10);
        LDRH     R0,[R4, #+2]
//  639   LCD_PUTC(DateY_1, LineDigits, (tmp + 0x30));
        BL       ?Subroutine10
??CrossCallReturnLabel_61:
        MOVS     R0,#+91
        POP      {R3-R5,LR}
        B.W      LCD_PUTC
//  640 }
//  641 
//  642 /*******************************************************************************
//  643 * Function Name  : Date_Regulate
//  644 * Description    : Allows user to enter the date with joystick keys, stores it
//  645 *                : in Backup register REG_01.
//  646 * Input          : None
//  647 * Output         : None
//  648 * Return         : None
//  649 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  650 void Date_Regulate(void)
//  651 {
Date_Regulate:
        PUSH     {R3-R11,LR}
        MOVS     R4,#+100
        MOV      R8,#+1000
        MOVS     R6,#+10
        LDR.W    R7,??DataTable35_4
        B.N      ??Date_Regulate_0
//  652   uint32_t Tmp_day, Tmp_month, Tmp_year;
//  653   FlagStatus ValidDateFlag;
//  654 
//  655   do
//  656   {
//  657     ValidDateFlag = SET;
//  658     /* Read day */
//  659     Tmp_day  = ReadDigit(DateD_h, (sDate.day / 10), 0x3, 0x0);
//  660     Tmp_day  = Tmp_day * 10 + ReadDigit(DateD_l, (sDate.day % 10), (Tmp_day < 3) ? 0x9 : 0x1, 0x0);
//  661     /* Read month */
//  662     Tmp_month = ReadDigit(DateM_h, (sDate.month / 10), 0x1, 0x0);
//  663     Tmp_month = Tmp_month * 10 + ReadDigit(DateM_l, (sDate.month % 10), (Tmp_month < 1) ? 0x9 : 0x2, 0x0);
//  664     /* Read year */
//  665     Tmp_year = ReadDigit(DateY_1000, (sDate.year / 1000), 0x2, 0x1) * 1000;
//  666     Tmp_year = Tmp_year + (ReadDigit(DateY_100, ((sDate.year / 100) % 10), 0x9, 0x0) * 100);
//  667     Tmp_year = Tmp_year + (ReadDigit(DateY_10, ((sDate.year / 10) % 10), 0x9, 0x0) * 10);
//  668     Tmp_year = Tmp_year + ReadDigit(DateY_1, (sDate.year % 10), 0x9, 0x0);
//  669     if (!IsValidDate(Tmp_day, Tmp_month, Tmp_year))
//  670     {
//  671       ValidDateFlag = RESET;
//  672       LCD_PUTS(0, LineMessage1, "   Invalid date." );
??Date_Regulate_1:
        ADR.W    R2,`?<Constant "   Invalid date.">`
        MOVS     R1,#+12
        BL       LCD_PUTS
//  673       LCD_PUTS(0, LineMessage2, "   Repeat, please.");
        ADR.W    R2,`?<Constant "   Repeat, please.">`
        MOVS     R1,#+22
        BL       ??Subroutine4_1
//  674       SysTickDelay(2500);
??CrossCallReturnLabel_11:
        MOVW     R0,#+2500
        BL       SysTickDelay
//  675       LCD_PUTS(0, LineMessage1, "                " );
        ADR.W    R2,`?<Constant "                ">`
        MOVS     R1,#+12
        BL       ??Subroutine4_1
//  676       LCD_PUTS(0, LineMessage2, "                  ");
??CrossCallReturnLabel_10:
        ADR.W    R2,`?<Constant "                  ">`
        MOVS     R1,#+22
        BL       ??Subroutine4_1
//  677       sDate.day   = Tmp_day;
??CrossCallReturnLabel_9:
        STRB     R5,[R7, #+0]
//  678       sDate.month = Tmp_month;
        STRB     R9,[R7, #+1]
//  679       sDate.year  = Tmp_year;
        STRH     R10,[R7, #+2]
//  680     }
??Date_Regulate_0:
        MOVS     R3,#+0
        MOVS     R2,#+3
        LDRB     R0,[R7, #+0]
        SDIV     R1,R0,R6
        UXTB     R1,R1
        MOVS     R0,#+37
        BL       ReadDigit
        MOV      R5,R0
        CMP      R5,#+3
        ITE      CC 
        MOVCC    R2,#+9
        MOVCS    R2,#+1
        LDRB     R0,[R7, #+0]
        BL       ?Subroutine12
??CrossCallReturnLabel_33:
        MOVS     R0,#+43
        BL       ReadDigit
        MLA      R5,R6,R5,R0
        MOVS     R3,#+0
        MOVS     R2,#+1
        LDRB     R0,[R7, #+1]
        SDIV     R1,R0,R6
        UXTB     R1,R1
        MOVS     R0,#+55
        BL       ReadDigit
        MOVS     R9,R0
        ITE      EQ 
        MOVEQ    R2,#+9
        MOVNE    R2,#+2
        LDRB     R0,[R7, #+1]
        BL       ?Subroutine12
??CrossCallReturnLabel_34:
        MOVS     R0,#+61
        BL       ReadDigit
        MLA      R9,R6,R9,R0
        MOVS     R3,#+1
        MOVS     R2,#+2
        LDRH     R0,[R7, #+2]
        SDIV     R1,R0,R8
        UXTB     R1,R1
        MOVS     R0,#+73
        BL       ReadDigit
        MOV      R10,R0
        LDRH     R0,[R7, #+2]
        SDIV     R0,R0,R4
        BL       ?Subroutine11
??CrossCallReturnLabel_31:
        MOVS     R0,#+79
        BL       ReadDigit
        MOV      R11,R0
        LDRH     R0,[R7, #+2]
        SDIV     R0,R0,R6
        BL       ?Subroutine11
??CrossCallReturnLabel_32:
        MOVS     R0,#+85
        BL       ReadDigit
        LDRH     R1,[R7, #+2]
        MUL      R2,R4,R11
        MLA      R2,R8,R10,R2
        MLA      R10,R6,R0,R2
        MOVS     R3,#+0
        MOVS     R2,#+9
        SDIV     R0,R1,R6
        MLS      R1,R6,R0,R1
        UXTB     R1,R1
        MOVS     R0,#+91
        BL       ReadDigit
        ADD      R10,R0,R10
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R5
        BL       IsValidDate
        CMP      R0,#+0
        BEQ.N    ??Date_Regulate_1
//  681   } while (ValidDateFlag == RESET);
//  682   MDR_BKP->REG_01 = Tmp_year + (Tmp_month << 16) + (Tmp_day << 24);
        ADD      R0,R10,R9, LSL #+16
        ADD      R0,R0,R5, LSL #+24
        LDR.W    R1,??DataTable35_5  ;; 0x400d8004
        STR      R0,[R1, #+0]
//  683   /* Wait until last write operation on RTC registers has finished */
//  684   BKP_RTC_WaitForUpdate();
        POP      {R0,R4-R11,LR}
        B.W      BKP_RTC_WaitForUpdate
//  685 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine12:
        MOVS     R3,#+0
        SDIV     R1,R0,R6
        MLS      R1,R6,R1,R0
        UXTB     R1,R1
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine11:
        MOVS     R3,#+0
        MOVS     R2,#+9
        SDIV     R1,R0,R6
        MLS      R1,R6,R1,R0
        UXTB     R1,R1
        BX       LR
//  686 
//  687 /*******************************************************************************
//  688 * Function Name  : DatePreAdjustFunc
//  689 * Description    : Adjust date menu item handler work function.
//  690 * Input          : None
//  691 * Output         : None
//  692 * Return         : None
//  693 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  694 void DatePreAdjustFunc(void)
//  695 {
DatePreAdjustFunc:
        PUSH     {R3-R7,LR}
//  696   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine14
//  697   LCD_Method OldMethod = CurrentMethod;
//  698 
//  699   /* Print the header */
//  700   LCD_CLS();
//  701   CurrentMethod = MET_AND;
??CrossCallReturnLabel_41:
        BL       ?Subroutine3
//  702   CurrentFont = &Font_6x8;
//  703   DisplayMenuTitle("Date adjust");
??CrossCallReturnLabel_2:
        ADR.W    R0,`?<Constant "Date adjust">`
        BL       DisplayMenuTitle
//  704   WAIT_UNTIL_KEY_RELEASED(SEL);
??DatePreAdjustFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??DatePreAdjustFunc_0
//  705 
//  706   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        BL       ?Subroutine16
??CrossCallReturnLabel_47:
        ITT      EQ 
        LDREQ    R0,[R0, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??DatePreAdjustFunc_1
//  707   {
//  708     RTCHelp();
        BL       RTCHelp
        B.N      ??DatePreAdjustFunc_2
//  709   }
//  710   else
//  711   {
//  712     LCD_PUTS(0, LineTitle, "DATE  DD.MM.YYYY");
??DatePreAdjustFunc_1:
        BL       ?Subroutine4
//  713 
//  714     /* Display the current Date */
//  715     Date_Display();
??CrossCallReturnLabel_20:
        BL       Date_Display
//  716     /* Change the current Date */
//  717     Date_Regulate();
        BL       Date_Regulate
//  718   }
//  719 
//  720   CurrentMethod = OldMethod;
??DatePreAdjustFunc_2:
        STRB     R7,[R6, #+0]
//  721   CurrentFont = OldFont;
        STR      R5,[R4, #+0]
//  722 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine14:
        LDR.W    R4,??DataTable35_6
        LDR      R5,[R4, #+0]
        LDR.N    R6,??DataTable35_1
        LDRB     R7,[R6, #+0]
        B.W      LCD_CLS
//  723 
//  724 /*******************************************************************************
//  725 * Function Name  : DateAdjustFunc
//  726 * Description    : Adjust date menu item handler.
//  727 * Input          : None
//  728 * Output         : None
//  729 * Return         : None
//  730 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  731 void DateAdjustFunc(void)
//  732 {
DateAdjustFunc:
        PUSH     {R7,LR}
//  733   DatePreAdjustFunc();
        BL       DatePreAdjustFunc
//  734   /* Display the menu */
//  735   DisplayMenu();
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  736 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        POP      {R0,LR}
        B.W      DisplayMenu
//  737 
//  738 /*******************************************************************************
//  739 * Function Name  : DateShowFunc
//  740 * Description    : Displays current date on LCD.
//  741 * Input          : None
//  742 * Output         : None
//  743 * Return         : None
//  744 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  745 void DateShowFunc(void)
//  746 {
DateShowFunc:
        PUSH     {R3-R7,LR}
//  747   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine14
//  748   LCD_Method OldMethod = CurrentMethod;
//  749 
//  750   /* Print header */
//  751   LCD_CLS();
//  752   CurrentMethod = MET_AND;
??CrossCallReturnLabel_40:
        BL       ?Subroutine3
//  753   CurrentFont = &Font_6x8;
//  754   DisplayMenuTitle("Date show");
??CrossCallReturnLabel_3:
        ADR.W    R0,`?<Constant "Date show">`
        BL       DisplayMenuTitle
//  755   WAIT_UNTIL_KEY_RELEASED(SEL);
??DateShowFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??DateShowFunc_0
//  756 
//  757   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        BL       ?Subroutine16
??CrossCallReturnLabel_48:
        ITT      EQ 
        LDREQ    R0,[R0, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??DateShowFunc_1
//  758   {
//  759     RTCHelp();
        BL       RTCHelp
        B.N      ??DateShowFunc_2
//  760   }
//  761   else
//  762   {
//  763     LCD_PUTS(0, LineTitle, "DATE  DD.MM.YYYY");
??DateShowFunc_1:
        BL       ?Subroutine4
??CrossCallReturnLabel_19:
        B.N      ??DateShowFunc_3
//  764 
//  765     while (GetKey() != SEL)
//  766     {
//  767       /* Display the current Date */
//  768       Date_Display();
??DateShowFunc_4:
        BL       Date_Display
//  769     }
??DateShowFunc_3:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??DateShowFunc_4
//  770     WAIT_UNTIL_KEY_RELEASED(SEL);
??DateShowFunc_5:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??DateShowFunc_5
//  771   }
//  772 
//  773   CurrentMethod = OldMethod;
??DateShowFunc_2:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  774   CurrentFont = OldFont;
//  775 
//  776   /* Display menu */
//  777   DisplayMenu();
//  778 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        STRB     R7,[R6, #+0]
        STR      R5,[R4, #+0]
        POP      {R0,R4-R7,LR}
        B.W      DisplayMenu

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine16:
        LDR.N    R0,??DataTable35_3  ;; 0x400d8000
        LDR      R1,[R0, #+0]
        MOVW     R2,#+4660
        CMP      R1,R2
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        MOVS     R0,#+4
        STRB     R0,[R6, #+0]
        LDR.N    R0,??DataTable35_7
        STR      R0,[R4, #+0]
        BX       LR
//  779 
//  780 /*******************************************************************************
//  781 * Function Name  : Alarm_Display
//  782 * Description    : Displays alarm time.
//  783 * Input          : None
//  784 * Output         : None
//  785 * Return         : None
//  786 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  787 void Alarm_Display()
//  788 {
Alarm_Display:
        PUSH     {R3-R9,LR}
//  789   uint32_t AlarmVar = MDR_BKP->RTC_ALRM;
        LDR.N    R0,??DataTable35_8  ;; 0x400d804c
        LDR      R8,[R0, #+0]
//  790 
//  791   /* Display time separators ":" */
//  792   LCD_PUTS(Time_Display_Column, LineDigits, "  :  :");
        ADR.W    R2,`?<Constant "  :  :">`
        MOVS     R1,#+52
        MOVS     R0,#+33
        BL       LCD_PUTS
//  793 
//  794   /* Display alarm hours */
//  795   sAlarm.hour_h = (uint8_t)(AlarmVar / 3600) / 10;
        MOV      R7,#+3600
        UDIV     R6,R8,R7
        LDR.N    R4,??DataTable35_9
        BL       ?Subroutine6
//  796   LCD_PUTC(TimeH_h, LineDigits, (sAlarm.hour_h + 0x30));
//  797   sAlarm.hour_l = (uint8_t)(((AlarmVar) / 3600) % 10);
??CrossCallReturnLabel_23:
        BL       ?Subroutine7
//  798   LCD_PUTC(TimeH_l, LineDigits, (sAlarm.hour_l + 0x30));
//  799 
//  800   /* Display alarm minutes */
//  801   sAlarm.min_h = (uint8_t)(((AlarmVar) % 3600) / 60) / 10;
??CrossCallReturnLabel_25:
        BL       ?Subroutine8
//  802   LCD_PUTC(TimeM_h, LineDigits, (sAlarm.min_h + 0x30));
//  803   sAlarm.min_l = (uint8_t)(((AlarmVar) % 3600) / 60) % 10;
??CrossCallReturnLabel_27:
        BL       ?Subroutine9
//  804   LCD_PUTC(TimeM_l, LineDigits, (sAlarm.min_l + 0x30));
??CrossCallReturnLabel_30:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  805 
//  806   /* Display alarm seconds */
//  807   sAlarm.sec_h = (uint8_t)(((AlarmVar) % 3600) % 60) / 10;
//  808   LCD_PUTC(TimeS_h, LineDigits, (sAlarm.sec_h + 0x30));
//  809   sAlarm.sec_l = (uint8_t)(((AlarmVar) % 3600) % 60) % 10;
//  810   LCD_PUTC(TimeS_l, LineDigits, (sAlarm.sec_l + 0x30));
//  811 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        BL       LCD_PUTC
        MLS      R7,R7,R6,R8
        UXTB     R7,R7
        SDIV     R6,R7,R5
        STRB     R6,[R4, #+1]
        LDRB     R0,[R4, #+1]
        BL       ??Subroutine18_0
??CrossCallReturnLabel_55:
        MOVS     R0,#+69
        BL       LCD_PUTC
        MLS      R0,R5,R6,R7
        STRB     R0,[R4, #+0]
        LDRB     R0,[R4, #+0]
        BL       ??Subroutine18_0
??CrossCallReturnLabel_56:
        MOVS     R0,#+75
        POP      {R3-R9,LR}
        B.W      LCD_PUTC

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine10:
        SDIV     R1,R0,R5
        MLS      R0,R5,R1,R0
        REQUIRE ??Subroutine18_0
        ;; // Fall through to label ??Subroutine18_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
??Subroutine18_0:
        ADD      R2,R0,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine9:
        MLS      R0,R5,R9,R6
        STRB     R0,[R4, #+2]
        LDRB     R0,[R4, #+2]
        ADD      R2,R0,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        MOVS     R0,#+57
        BX       LR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine8:
        MLS      R8,R7,R6,R8
        MOVS     R7,#+60
        UDIV     R6,R8,R7
        UXTB     R6,R6
        SDIV     R9,R6,R5
        STRB     R9,[R4, #+3]
        LDRB     R0,[R4, #+3]
        ADD      R2,R0,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        MOVS     R0,#+51
        B.W      LCD_PUTC

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine7:
        UDIV     R0,R6,R5
        MLS      R0,R5,R0,R6
        STRB     R0,[R4, #+4]
        LDRB     R0,[R4, #+4]
        ADD      R2,R0,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        MOVS     R0,#+39
        B.W      LCD_PUTC

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine6:
        MOVS     R5,#+10
        UXTB     R0,R6
        SDIV     R0,R0,R5
        STRB     R0,[R4, #+5]
        LDRB     R0,[R4, #+5]
        ADD      R2,R0,#+48
        UXTB     R2,R2
        MOVS     R1,#+52
        MOVS     R0,#+33
        B.W      LCD_PUTC
//  812 
//  813 /*******************************************************************************
//  814 * Function Name  : Alarm_Regulate
//  815 * Description    : Returns the alarm time entered by user, using joystick keys.
//  816 * Input          : None
//  817 * Output         : None
//  818 * Return         : Alarm time value to be loaded in RTC alarm register.
//  819 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  820 uint32_t Alarm_Regulate(void)
//  821 {
Alarm_Regulate:
        PUSH     {R4-R8,LR}
//  822   uint32_t Alarm_HH, Alarm_MM, Alarm_SS;
//  823 
//  824   /* Read alarm hours */
//  825   Alarm_HH = ReadDigit(TimeH_h, sAlarm.hour_h, 0x2, 0x0);
        LDR.N    R5,??DataTable35_9
        MOVS     R3,#+0
        MOVS     R2,#+2
        LDRB     R1,[R5, #+5]
        MOVS     R0,#+33
        BL       ReadDigit
        MOV      R4,R0
//  826   if(Alarm_HH == 2)
        LDRB     R1,[R5, #+4]
        MOVS     R6,#+10
        CMP      R4,#+2
        BNE.N    ??Alarm_Regulate_0
//  827   {
//  828     if(sAlarm.hour_l > 3)
        CMP      R1,#+4
        ITT      CS 
        MOVCS    R0,#+0
        STRBCS   R0,[R5, #+4]
//  829     {
//  830       sAlarm.hour_l = 0;
//  831     }
//  832     Alarm_HH = Alarm_HH*10 + ReadDigit(TimeH_l, sAlarm.hour_l, 0x3, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+3
        LDRB     R1,[R5, #+4]
        BL       ??Subroutine13_0
//  833   }
??CrossCallReturnLabel_35:
        ADD      R4,R0,#+20
        B.N      ??Alarm_Regulate_1
//  834   else
//  835   {
//  836     Alarm_HH = Alarm_HH*10 + ReadDigit(TimeH_l, sAlarm.hour_l, 0x9, 0x0);
??Alarm_Regulate_0:
        BL       ?Subroutine13
//  837   }
??CrossCallReturnLabel_37:
        MLA      R4,R6,R4,R0
//  838   /* Read time minutes */
//  839   Alarm_MM = ReadDigit(TimeM_h, sAlarm.min_h, 0x5, 0x0);
??Alarm_Regulate_1:
        MOVS     R3,#+0
        MOVS     R2,#+5
        LDRB     R1,[R5, #+3]
        MOVS     R0,#+51
        BL       ReadDigit
        MOV      R7,R0
//  840   Alarm_MM = Alarm_MM*10 + ReadDigit(TimeM_l, sAlarm.min_l, 0x9, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+9
        LDRB     R1,[R5, #+2]
        MOVS     R0,#+57
        BL       ReadDigit
        MLA      R7,R6,R7,R0
//  841   /* Read time seconds */
//  842   Alarm_SS = ReadDigit(TimeS_h, sAlarm.sec_h, 0x5, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+5
        LDRB     R1,[R5, #+1]
        MOVS     R0,#+69
        BL       ReadDigit
        MOV      R8,R0
//  843   Alarm_SS = Alarm_SS*10 + ReadDigit(TimeS_l, sAlarm.sec_l, 0x9, 0x0);
        MOVS     R3,#+0
        MOVS     R2,#+9
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+75
        BL       ReadDigit
        MLA      R0,R6,R8,R0
//  844 
//  845   /* Save the Alarm value in the Backup register REG_02 */
//  846   MDR_BKP->REG_02 = Alarm_HH*3600 + Alarm_MM*60 + Alarm_SS;
        MOV      R1,#+3600
        MOVS     R2,#+60
        MULS     R2,R2,R7
        MLA      R1,R1,R4,R2
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable35_10  ;; 0x400d8008
        STR      R0,[R1, #+0]
//  847 
//  848   /* Return the value to store in RTC alarm register */
//  849   return((Alarm_HH*3600 + Alarm_MM*60 + Alarm_SS));
        POP      {R4-R8,PC}       ;; return
//  850 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine13:
        MOVS     R3,#+0
        MOVS     R2,#+9
??Subroutine13_0:
        MOVS     R0,#+39
        B.N      ReadDigit
//  851 
//  852 /*******************************************************************************
//  853 * Function Name  : AlarmAdjustFunc
//  854 * Description    : Allows the user to set alarm event.
//  855 * Input          : None
//  856 * Output         : None
//  857 * Return         : None
//  858 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  859 void AlarmAdjustFunc(void)
//  860 {
AlarmAdjustFunc:
        PUSH     {R4-R8,LR}
//  861   sFONT *OldFont = CurrentFont;
        LDR.N    R4,??DataTable35_6
        LDR      R5,[R4, #+0]
//  862   LCD_Method OldMethod = CurrentMethod;
        LDR.N    R6,??DataTable35_1
        LDRB     R8,[R6, #+0]
//  863 
//  864   /* Print header */
//  865   LCD_CLS();
        BL       LCD_CLS
//  866   CurrentMethod = MET_AND;
        BL       ?Subroutine3
//  867   CurrentFont = &Font_6x8;
//  868   DisplayMenuTitle("Alarm adjust");
??CrossCallReturnLabel_4:
        ADR.W    R0,`?<Constant "Alarm adjust">`
        BL       DisplayMenuTitle
//  869   WAIT_UNTIL_KEY_RELEASED(SEL);
??AlarmAdjustFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??AlarmAdjustFunc_0
//  870 
//  871   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        LDR.N    R7,??DataTable35_3  ;; 0x400d8000
        LDR      R0,[R7, #+0]
        MOVW     R1,#+4660
        CMP      R0,R1
        ITT      EQ 
        LDREQ    R0,[R7, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??AlarmAdjustFunc_1
//  872   {
//  873     RTCHelp();
        BL       RTCHelp
        B.N      ??AlarmAdjustFunc_2
//  874   }
//  875   else
//  876   {
//  877     LCD_PUTS(Time_Display_Column - DefaultFontWidth, LineTitle, "ALARM TIME");
??AlarmAdjustFunc_1:
        BL       ?Subroutine15
//  878 
//  879     /* Initialize the RTC Alarm register */
//  880     BKP_RTC_SetAlarm(MDR_BKP->REG_02);
??CrossCallReturnLabel_45:
        LDR      R0,[R7, #+8]
        BL       BKP_RTC_SetAlarm
//  881 
//  882     /* Display the Alarm time */
//  883     Alarm_Display();
        BL       Alarm_Display
//  884 
//  885     /* Change the current alarm time */
//  886     BKP_RTC_SetAlarm(Alarm_Regulate());
        BL       Alarm_Regulate
        BL       BKP_RTC_SetAlarm
//  887     /* Wait until last write operation on RTC registers has finished */
//  888     BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  889     /* Enable the Alarm interrupt  */
//  890     BKP_RTC_ITConfig(BKP_RTC_IT_ALRF, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       BKP_RTC_ITConfig
//  891     AlarmSetStatus = 1;
        LDR.N    R0,??DataTable35_11
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  892   }
//  893   CurrentMethod = OldMethod;
??AlarmAdjustFunc_2:
        STRB     R8,[R6, #+0]
//  894   CurrentFont = OldFont;
        STR      R5,[R4, #+0]
//  895 
//  896   /* Display the menu */
//  897   DisplayMenu();
        POP      {R4-R8,LR}
        B.W      DisplayMenu
//  898 }
//  899 
//  900 /*******************************************************************************
//  901 * Function Name  : AlarmShowFunc
//  902 * Description    : Displays the alarm time (HH:MM:SS) on LCD.
//  903 * Input          : None
//  904 * Output         : None
//  905 * Return         : None
//  906 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  907 void AlarmShowFunc(void)
//  908 {
AlarmShowFunc:
        PUSH     {R3-R7,LR}
//  909   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine14
//  910   LCD_Method OldMethod = CurrentMethod;
//  911 
//  912   /* Print header */
//  913   LCD_CLS();
//  914   CurrentMethod = MET_AND;
??CrossCallReturnLabel_39:
        BL       ?Subroutine3
//  915   CurrentFont = &Font_6x8;
//  916   DisplayMenuTitle("Alarm show");
??CrossCallReturnLabel_5:
        ADR.W    R0,`?<Constant "Alarm show">`
        BL       DisplayMenuTitle
//  917   WAIT_UNTIL_KEY_RELEASED(SEL);
??AlarmShowFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??AlarmShowFunc_0
//  918 
//  919   if((MDR_BKP->REG_00 != 0x1234) || (MDR_BKP->RTC_PRL != RTC_PRESCALER_VALUE))
        BL       ?Subroutine16
??CrossCallReturnLabel_49:
        ITT      EQ 
        LDREQ    R0,[R0, #+72]
        CMPEQ    R0,#+32768
        BEQ.N    ??AlarmShowFunc_1
//  920   {
//  921     RTCHelp();
        BL       RTCHelp
        B.N      ??AlarmShowFunc_2
//  922   }
//  923   else
//  924   {
//  925     LCD_PUTS(Time_Display_Column - DefaultFontWidth, LineTitle, "ALARM TIME");
??AlarmShowFunc_1:
        BL       ?Subroutine15
//  926     /* Display the current alarm time */
//  927     Alarm_Display();
??CrossCallReturnLabel_44:
        BL       Alarm_Display
//  928     WAIT_UNTIL_KEY_PRESSED(SEL);
??AlarmShowFunc_3:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??AlarmShowFunc_3
//  929     WAIT_UNTIL_KEY_RELEASED(SEL);
??AlarmShowFunc_4:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??AlarmShowFunc_4
//  930   }
//  931 
//  932   CurrentMethod = OldMethod;
??AlarmShowFunc_2:
        B.N      ?Subroutine1
//  933   CurrentFont = OldFont;
//  934 
//  935   /* Display the menu */
//  936   DisplayMenu();
//  937 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine15:
        ADR.W    R2,`?<Constant "ALARM TIME">`
        MOVS     R1,#+42
        MOVS     R0,#+27
        B.W      LCD_PUTS
//  938 
//  939 /*******************************************************************************
//  940 * Function Name  : Calendar_Init
//  941 * Description    : Allows the user to initialize time and date values.
//  942 * Input          : None
//  943 * Output         : None
//  944 * Return         : None
//  945 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  946 void Calendar_Init(void)
//  947 {
Calendar_Init:
        PUSH     {R3-R7,LR}
//  948   uint32_t tmp, i;
//  949   KeyCode key;
//  950 
//  951   /* Enables the HSE clock for BKP control */
//  952   RST_CLK_PCLKcmd(RST_CLK_PCLK_BKP,ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+134217728
        BL       RST_CLK_PCLKcmd
//  953 
//  954   RTC_Configuration();
        BL       RTC_Configuration
//  955 
//  956   if(MDR_BKP->REG_00 != 0x1234)
        LDR.N    R4,??DataTable35_4
        LDR.N    R5,??DataTable35_3  ;; 0x400d8000
        LDR      R0,[R5, #+0]
        MOVW     R1,#+4660
        CMP      R0,R1
        BEQ.N    ??Calendar_Init_0
//  957   {
//  958     LCD_CLS();
        BL       LCD_CLS
//  959     LCD_PUTS(0, LineMessage1, " To configuring Time ");
        ADR.W    R2,`?<Constant " To configuring Time ">`
        MOVS     R1,#+12
        BL       ??Subroutine4_1
//  960     LCD_PUTS(0, LineMessage2, " and Date press SEL, ");
??CrossCallReturnLabel_8:
        ADR.W    R2,`?<Constant " and Date press SEL, ">`
        MOVS     R1,#+22
        BL       ??Subroutine4_1
//  961     LCD_PUTS(0, LineMessage3, " else press any key. ");
??CrossCallReturnLabel_7:
        ADR.W    R2,`?<Constant " else press any key. ">`
        MOVS     R1,#+32
        BL       ??Subroutine4_1
//  962 
//  963     for (key = NOKEY; key == NOKEY; key = GetKey())
??CrossCallReturnLabel_6:
        BL       GetKey
        MOV      R6,R0
        CMP      R6,#+5
        BEQ.N    ??CrossCallReturnLabel_6
//  964     {
//  965     }
//  966     if (key == SEL)
        CBNZ.N   R6,??Calendar_Init_1
//  967     {
//  968       WAIT_UNTIL_KEY_RELEASED(key);
??Calendar_Init_2:
        BL       GetKey
        CMP      R0,R6
        BEQ.N    ??Calendar_Init_2
//  969       TimePreAdjustFunc();
        BL       TimePreAdjustFunc
//  970       DatePreAdjustFunc();
        BL       DatePreAdjustFunc
        B.N      ??Calendar_Init_3
//  971     }
//  972     else
//  973     {
//  974       /* Initialize Date structure with default values */
//  975       sDate.day   = 1;
??Calendar_Init_1:
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  976       sDate.month = 1;
        STRB     R0,[R4, #+1]
//  977       sDate.year  = 2010;
        MOVW     R0,#+2010
        STRH     R0,[R4, #+2]
//  978       MDR_BKP->REG_01 = sDate.year + (sDate.month << 16) + (sDate.day << 24);
        LDR.N    R0,??DataTable35_12  ;; 0x10107da
        STR      R0,[R5, #+4]
//  979       /* Wait until last write operation on RTC registers has finished */
//  980       BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  981       /* Initialize Alarm backup register */
//  982       MDR_BKP->REG_02 = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
//  983       /* Wait until last write operation on RTC registers has finished */
//  984       BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  985     }
//  986     WAIT_UNTIL_KEY_RELEASED(key);
??Calendar_Init_3:
        BL       GetKey
        CMP      R0,R6
        BEQ.N    ??Calendar_Init_3
        POP      {R0,R4-R7,PC}
//  987   }
//  988   else
//  989   {
//  990     /* Initialize Date structure */
//  991     tmp = MDR_BKP->REG_01;
??Calendar_Init_0:
        LDR      R0,[R5, #+4]
//  992     sDate.day   = tmp >> 24;
        BL       ?Subroutine17
//  993     sDate.month = (tmp >> 16) & 0xFF;
//  994     sDate.year  = tmp & 0xFFFF;
//  995 
//  996     tmp = BKP_RTC_GetCounter();
??CrossCallReturnLabel_51:
        BL       BKP_RTC_GetCounter
        MOV      R4,R0
//  997     if(tmp / 86399 != 0)
        LDR.N    R5,??DataTable35_13  ;; 0x1517f
        UDIV     R6,R4,R5
        CBZ.N    R6,??Calendar_Init_4
//  998     {
//  999       for(i = 0; i < (tmp / 86399); i++)
        MOV      R7,R6
// 1000       {
// 1001         Date_Update();
??Calendar_Init_5:
        BL       Date_Update
// 1002       }
        SUBS     R7,R7,#+1
        BNE.N    ??Calendar_Init_5
// 1003       BKP_RTC_SetCounter(tmp % 86399);
        MLS      R0,R5,R6,R4
        POP      {R1,R4-R7,LR}
        B.W      BKP_RTC_SetCounter
// 1004     }
// 1005   }
// 1006 }
??Calendar_Init_4:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_1:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_2:
        DC32     sTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_3:
        DC32     0x400d8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_4:
        DC32     sDate

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_5:
        DC32     0x400d8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_6:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_7:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_8:
        DC32     0x400d804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_9:
        DC32     sAlarm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_10:
        DC32     0x400d8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_11:
        DC32     AlarmSetStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_12:
        DC32     0x10107da

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_13:
        DC32     0x1517f

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine17:
        LSRS     R1,R0,#+24
        STRB     R1,[R4, #+0]
        LSRS     R1,R0,#+16
        STRB     R1,[R4, #+1]
        STRH     R0,[R4, #+2]
        BX       LR

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
`?<Constant "Time Adjust menu.    ">`:
        DC8 "Time Adjust menu.    "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Time adjust">`:
        DC8 "Time adjust"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "RTC is configured...">`:
        DC8 "RTC is configured..."
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "        TIME        ">`:
        DC8 "        TIME        "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Time show">`:
        DC8 "Time show"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "   Invalid date.">`:
        DC8 "   Invalid date."
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "   Repeat, please.">`:
        DC8 "   Repeat, please."
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "                ">`:
        DC8 "                "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "                  ">`:
        DC8 "                  "
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Date adjust">`:
        DC8 "Date adjust"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "DATE  DD.MM.YYYY">`:
        DC8 "DATE  DD.MM.YYYY"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Date show">`:
        DC8 "Date show"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "  :  :">`:
        DC8 "  :  :"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Alarm adjust">`:
        DC8 "Alarm adjust"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "ALARM TIME">`:
        DC8 "ALARM TIME"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Alarm show">`:
        DC8 "Alarm show"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " To configuring Time ">`:
        DC8 " To configuring Time "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " and Date press SEL, ">`:
        DC8 " and Date press SEL, "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " else press any key. ">`:
        DC8 " else press any key. "
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
// 1007 
// 1008 /** @} */ /* End of group Menu_TIME_Private_Functions */
// 1009 
// 1010 /** @} */ /* End of group Menu_TIME */
// 1011 
// 1012 /** @} */ /* End of group Menu */
// 1013 
// 1014 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
// 1015 
// 1016 /******************* (C) COPYRIGHT 2010 Phyton *******************
// 1017 *
// 1018 * END OF FILE Menu_time.c */
// 1019 
// 
//    20 bytes in section .bss
// 2 928 bytes in section .text
// 
// 2 928 bytes of CODE memory
//    20 bytes of DATA memory
//
//Errors: none
//Warnings: none
