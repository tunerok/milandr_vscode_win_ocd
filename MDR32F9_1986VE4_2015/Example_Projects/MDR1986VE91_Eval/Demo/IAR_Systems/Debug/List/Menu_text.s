///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_text.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_text.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_text.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_text

        #define SHT_PROGBITS 0x1

        EXTERN ADC1_Cmd
        EXTERN ADC_Config
        EXTERN BackToMenuOnSel
        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN DisplayMenuTitle
        EXTERN Font_12x16
        EXTERN Font_6x8
        EXTERN Font_7x10_bold
        EXTERN Font_7x10_thin
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTS
        EXTERN LCD_PUTS_Ex

        PUBLIC AboutFunc
        PUBLIC BookFunc
        PUBLIC FontFunc
        PUBLIC StyleFunc

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_text.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_text.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file contains all the "Text" menu handlers
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
//   22 #include <MDR32F9Qx_adc.h>
//   23 #include "lcd.h"
//   24 #include "Menu.h"
//   25 #include "Menu_items.h"
//   26 #include "text.h"
//   27 #include "joystick.h"
//   28 #include "adc.h"
//   29 
//   30 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   31   * @{
//   32   */
//   33 
//   34 /** @addtogroup Menu Menu
//   35   * @{
//   36   */
//   37 
//   38 /** @addtogroup Menu_Text Menu Text
//   39   * @{
//   40   */
//   41 
//   42 /** @defgroup Menu_Text_Private_Functions Menu Text Private Functions
//   43   * @{
//   44   */
//   45 
//   46 /*******************************************************************************
//   47 * Function Name  : FontFunc
//   48 * Description    : Prints font samples
//   49 * Input          : None
//   50 * Output         : None
//   51 * Return         : None
//   52 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void FontFunc(void)
//   54 {
FontFunc:
        PUSH     {R3-R5,LR}
//   55   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine3
//   56 
//   57   /* Print the header and wait for key up */
//   58   LCD_CLS();
//   59   CurrentMethod = MET_AND;
??CrossCallReturnLabel_20:
        BL       ?Subroutine2
//   60   CurrentFont = &Font_6x8;
//   61   DisplayMenuTitle("Font examples");
??CrossCallReturnLabel_17:
        ADR.W    R0,`?<Constant "Font examples">`
        BL       DisplayMenuTitle
//   62   WAIT_UNTIL_KEY_RELEASED(SEL);
??FontFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??FontFunc_0
//   63 
//   64   /* Font parameters */
//   65   LCD_PUTS(0, 12, "Font6X8");
        ADR.W    R2,`?<Constant "Font6X8">`
        MOVS     R1,#+12
        BL       ??Subroutine1_1
//   66 
//   67   CurrentFont = &Font_12x16;
??CrossCallReturnLabel_9:
        LDR.N    R0,??DataTable23
        STR      R0,[R4, #+0]
//   68   LCD_PUTS(0, 20, "Font12X16");
        ADR.W    R2,`?<Constant "Font12X16">`
        MOVS     R1,#+20
        BL       ??Subroutine1_1
//   69 
//   70   CurrentFont = &Font_7x10_thin;
??CrossCallReturnLabel_8:
        LDR.N    R0,??DataTable23_1
        STR      R0,[R4, #+0]
//   71   LCD_PUTS(0, 36, "Font7X10");
        ADR.W    R2,`?<Constant "Font7X10">`
        MOVS     R1,#+36
        BL       ??Subroutine1_1
//   72 
//   73   CurrentFont = &Font_7x10_bold;
??CrossCallReturnLabel_7:
        LDR.N    R0,??DataTable23_2
        STR      R0,[R4, #+0]
//   74   LCD_PUTS(0, 47, "Font7X10 bold");
        ADR.W    R2,`?<Constant "Font7X10 bold">`
        MOVS     R1,#+47
        BL       ??Subroutine1_1
//   75 
//   76   /* Wait for SEL pressed and return to the main menu */
//   77   CurrentFont = OldFont;
??CrossCallReturnLabel_6:
        STR      R5,[R4, #+0]
//   78   BackToMenuOnSel();
        B.N      ?Subroutine0
//   79 }
//   80 
//   81 /*******************************************************************************
//   82 * Function Name  : StyleFunc
//   83 * Description    : Prints style samples
//   84 * Input          : None
//   85 * Output         : None
//   86 * Return         : None
//   87 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   88 void StyleFunc(void)
//   89 {
StyleFunc:
        PUSH     {R3-R5,LR}
//   90   sFONT *OldFont = CurrentFont;
        BL       ?Subroutine3
//   91 
//   92   LCD_CLS();
//   93   CurrentMethod = MET_AND;
??CrossCallReturnLabel_19:
        BL       ?Subroutine2
//   94   CurrentFont = &Font_6x8;
//   95 
//   96   /* Print prompt and wait for key SEL pressed */
//   97   LCD_PUTS(0, 12, "Turn the Trimmer TRIM");
??CrossCallReturnLabel_18:
        ADR.W    R2,`?<Constant "Turn the Trimmer TRIM">`
        MOVS     R1,#+12
        BL       ??Subroutine1_1
//   98   LCD_PUTS(0, 22, "to control the delay");
??CrossCallReturnLabel_5:
        ADR.W    R2,`?<Constant "to control the delay">`
        MOVS     R1,#+22
        BL       ??Subroutine1_1
//   99   LCD_PUTS(0, 32, "between style frames.");
??CrossCallReturnLabel_4:
        ADR.W    R2,`?<Constant "between style frames.">`
        MOVS     R1,#+32
        BL       ??Subroutine1_1
//  100   LCD_PUTS(0, 42, "Push JoyStick SEL to");
??CrossCallReturnLabel_3:
        ADR.W    R2,`?<Constant "Push JoyStick SEL to">`
        MOVS     R1,#+42
        BL       ??Subroutine1_1
//  101   LCD_PUTS(0, 52, "start or stop.");
??CrossCallReturnLabel_2:
        ADR.W    R2,`?<Constant "start or stop.">`
        MOVS     R1,#+52
        BL       ??Subroutine1_1
//  102 
//  103   while (!KEY_PRESSED(SEL))
??CrossCallReturnLabel_1:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??CrossCallReturnLabel_1
//  104   {
//  105   }
//  106 
//  107   /* Configure ADC channel 7 */
//  108   ADC_Config();
        BL       ADC_Config
//  109   /* ADC1 enable */
//  110   ADC1_Cmd(ENABLE);
        MOVS     R0,#+1
        BL       ADC1_Cmd
//  111 
//  112   /* Print the header and wait for key up */
//  113   LCD_CLS();
        BL       LCD_CLS
//  114   DisplayMenuTitle("Style examples");
        ADR.W    R0,`?<Constant "Style examples">`
        BL       DisplayMenuTitle
//  115   WAIT_UNTIL_KEY_RELEASED(SEL);
??StyleFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??StyleFunc_0
//  116 
//  117   /* Style samples */
//  118   do
//  119   {
//  120     LCD_PUTS_Ex(0, 12, "Blink     ", StyleBlink);
??StyleFunc_1:
        MOVS     R3,#+1
        ADR.W    R2,`?<Constant "Blink     ">`
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       LCD_PUTS_Ex
//  121     if (KEY_PRESSED(SEL)) break;
        BL       GetKey
        CBZ.N    R0,??StyleFunc_2
//  122     LCD_PUTS_Ex(0, 32, "FlipFlop", StyleFlipFlop);
        MOVS     R3,#+2
        ADR.W    R2,`?<Constant "FlipFlop">`
        MOVS     R1,#+32
        MOVS     R0,#+0
        BL       LCD_PUTS_Ex
//  123     if (KEY_PRESSED(SEL)) break;
        BL       GetKey
        CBZ.N    R0,??StyleFunc_2
//  124     LCD_PUTS_Ex(0, 52, "Vibratory", StyleVibratory);
        MOVS     R3,#+3
        ADR.W    R2,`?<Constant "Vibratory">`
        MOVS     R1,#+52
        MOVS     R0,#+0
        BL       LCD_PUTS_Ex
//  125   } while (!KEY_PRESSED(SEL));
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??StyleFunc_1
//  126 
//  127   /* SEL is pressed - return to the main menu */
//  128   CurrentFont = OldFont;
??StyleFunc_2:
        STR      R5,[R4, #+0]
//  129   /* ADC1 disable */
//  130   ADC1_Cmd(DISABLE);
        MOVS     R0,#+0
        BL       ADC1_Cmd
//  131   DisplayMenu();
        POP      {R0,R4,R5,LR}
        B.W      DisplayMenu
//  132 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        LDR.N    R4,??DataTable23_3
        LDR      R5,[R4, #+0]
        B.W      LCD_CLS

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        LDR.N    R0,??DataTable23_4
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable23_5
        STR      R0,[R4, #+0]
        BX       LR
//  133 
//  134 /** @defgroup Menu_Text_Private_Constants Menu Text Private Constants
//  135   * @{
//  136   */
//  137 
//  138 /* The text for "e-book" demonstration */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  139 static uint8_t Book[16][22] = {
Book:
        DATA
        DC8 "Microcontrollers of  "
        DC8 "MDR32F9Qx series are "
        DC8 "microcontrollers     "
        DC8 "with embedded Flash  "
        DC8 "program memory; they "
        DC8 "are built on the     "
        DC8 "base of high perfo-  "
        DC8 "mance RISC processor "
        DC8 "core Cortex-M3.      "
        DC8 "Microcontroller works"
        DC8 "on the up to 80 Mhz  "
        DC8 "frecuency and        "
        DC8 "contains 128 K Flash "
        DC8 "program memory and   "
        DC8 "32 K of RAM.         "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  140     {"Microcontrollers of  "},
//  141     {"MDR32F9Qx series are "},
//  142     {"microcontrollers     "},
//  143     {"with embedded Flash  "},
//  144     {"program memory; they "},
//  145     {"are built on the     "},
//  146     {"base of high perfo-  "},
//  147     {"mance RISC processor "},
//  148     {"core Cortex-M3.      "},
//  149     {"Microcontroller works"},
//  150     {"on the up to 80 Mhz  "},
//  151     {"frecuency and        "},
//  152     {"contains 128 K Flash "},
//  153     {"program memory and   "},
//  154     {"32 K of RAM.         "}
//  155 };
//  156 
//  157 /** @} */ /* End of group Menu_Text_Private_Constants */
//  158 
//  159 /*******************************************************************************
//  160 * Function Name  : BookFunc
//  161 * Description    : Prints "e-book" text
//  162 * Input          : None
//  163 * Output         : None
//  164 * Return         : None
//  165 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void BookFunc(void)
//  167 {
BookFunc:
        PUSH     {R3-R7,LR}
//  168   uint32_t top_ind, key, i;
//  169 
//  170   /* Clear screen and wait for key up */
//  171   LCD_CLS();
        BL       LCD_CLS
//  172   CurrentMethod = MET_AND;
        LDR.N    R0,??DataTable23_4
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  173   WAIT_UNTIL_KEY_RELEASED(SEL);
??BookFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??BookFunc_0
//  174 
//  175   /* Key handling loop */
//  176   for (top_ind = 0, key = NOKEY; key != SEL; )
        MOVS     R4,#+0
        LDR.N    R5,??DataTable23_3
        LDR.N    R6,??DataTable23_6
        B.N      ??BookFunc_1
??BookFunc_2:
        CBZ.N    R7,??BookFunc_3
//  177   {
//  178     /* Print the text and wait for key pressed */
//  179     for (i = 0; i < 8; i++)
??BookFunc_1:
        MOVS     R7,#+0
//  180     {
//  181       LCD_PUTS(0, (CurrentFont->Height) * i, Book[top_ind + i]);
??BookFunc_4:
        ADDS     R0,R7,R4
        MOVS     R1,#+22
        MLA      R2,R1,R0,R6
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        MUL      R1,R7,R0
        BL       ??Subroutine1_0
//  182     }
??CrossCallReturnLabel_14:
        ADDS     R7,R7,#+1
        CMP      R7,#+8
        BCC.N    ??BookFunc_4
//  183     WAIT_UNTIL_ANY_KEY;
??BookFunc_5:
        BL       GetKey
        CMP      R0,#+5
        BEQ.N    ??BookFunc_5
//  184 
//  185     /* Key pressed handling */
//  186     key = GetKey();
        BL       GetKey
        MOV      R7,R0
//  187     switch (key)
        CMP      R0,#+1
        BEQ.N    ??BookFunc_6
        CMP      R0,#+2
        BEQ.N    ??BookFunc_7
        B.N      ??BookFunc_2
//  188     {
//  189       /* Scroll up */
//  190       case UP:
//  191         if (top_ind > 0)
??BookFunc_6:
        CMP      R4,#+0
        BEQ.N    ??BookFunc_1
        SUBS     R4,R4,#+1
        B.N      ??BookFunc_1
//  192         {
//  193           top_ind--;
//  194         }
//  195         break;
//  196       /* Scroll down */
//  197       case DOWN:
//  198         if (top_ind < 7)
??BookFunc_7:
        CMP      R4,#+7
        BCS.N    ??BookFunc_1
        ADDS     R4,R4,#+1
        B.N      ??BookFunc_1
//  199         {
//  200           top_ind++;
//  201         }
//  202         break;
//  203     }
//  204   }
//  205 
//  206   /* SEL is pressed - return to main menu */
//  207   WAIT_UNTIL_KEY_RELEASED(key);
??BookFunc_3:
        BL       GetKey
        CMP      R0,R7
        BEQ.N    ??BookFunc_3
//  208   DisplayMenu();
        POP      {R0,R4-R7,LR}
        B.W      DisplayMenu
//  209 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     Font_12x16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     Font_7x10_thin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_2:
        DC32     Font_7x10_bold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_3:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_4:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_5:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_6:
        DC32     Book
//  210 
//  211 /*******************************************************************************
//  212 * Function Name  : AboutFunc
//  213 * Description    : Displays "About"
//  214 * Input          : None
//  215 * Output         : None
//  216 * Return         : None
//  217 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  218 void AboutFunc(void)
//  219 {
AboutFunc:
        PUSH     {R3-R5,LR}
//  220 
//  221 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//  222 #define EVAL_BOARD_NAME                "   Milandr MDR32F9Q1   "
//  223 #elif defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1)
//  224 #define EVAL_BOARD_NAME                "   Milandr MDR32F9Q2  "
//  225 #elif defined (USE_MDR32F9Q3_Rev0) || defined (USE_MDR32F9Q3_Rev1)
//  226 #define EVAL_BOARD_NAME                "   Milandr MDR32F9Q3  "
//  227 #endif
//  228 
//  229   /* Display About text */
//  230   LCD_CLS();
        BL       LCD_CLS
//  231   CurrentMethod = MET_AND;
        LDR.N    R0,??AboutFunc_0
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  232 
//  233   LCD_PUTS(0, 0, EVAL_BOARD_NAME);
        ADR.W    R2,`?<Constant "   Milandr MDR32F9Q1   ">`
        MOVS     R1,#+0
        BL       ??Subroutine1_1
//  234   LCD_PUTS(0, CurrentFont->Height + 1, "   Evaluation board  ");
??CrossCallReturnLabel_0:
        LDR.N    R4,??AboutFunc_0+0x4
        B.N      ??AboutFunc_1
        Nop      
        DATA
??AboutFunc_0:
        DC32     CurrentMethod
        DC32     CurrentFont
        THUMB
??AboutFunc_1:
        ADR.W    R2,`?<Constant "   Evaluation board  ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+1
        BL       ??Subroutine1_0
//  235   LCD_PUTS(0, (CurrentFont->Height) * 2 + 2, "          ");
??CrossCallReturnLabel_13:
        ADR.W    R5,`?<Constant "          ">`
        MOV      R2,R5
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        BL       ?Subroutine1
//  236   LCD_PUTS(0, (CurrentFont->Height) * 3 + 2, "          ");
??CrossCallReturnLabel_16:
        MOV      R2,R5
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R0, LSL #+1
        BL       ?Subroutine1
//  237   LCD_PUTS(0, (CurrentFont->Height) * 4 + 3, " Appl. example v.3.0");
??CrossCallReturnLabel_15:
        ADR.W    R2,`?<Constant " Appl. example v.3.0">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2
        ADDS     R1,R0,#+3
        BL       ??Subroutine1_0
//  238   LCD_PUTS(0, (CurrentFont->Height) * 5 + 4, "     Phyton 2011   ");
??CrossCallReturnLabel_12:
        ADR.W    R2,`?<Constant "     Phyton 2011   ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R0, LSL #+2
        ADDS     R1,R0,#+4
        BL       ??Subroutine1_0
//  239   LCD_PUTS(0, (CurrentFont->Height) * 6 + 5, "    www.phyton.ru  ");
??CrossCallReturnLabel_11:
        ADR.W    R2,`?<Constant "    www.phyton.ru  ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+6
        MULS     R0,R1,R0
        ADDS     R1,R0,#+5
        BL       ??Subroutine1_0
//  240 
//  241   /* Wait for SEL pressed and return to main menu */
//  242   BackToMenuOnSel();
??CrossCallReturnLabel_10:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  243 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        POP      {R0,R4,R5,LR}
        B.W      BackToMenuOnSel

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        ADDS     R1,R0,#+2
??Subroutine1_0:
        UXTB     R1,R1
??Subroutine1_1:
        MOVS     R0,#+0
        B.W      LCD_PUTS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Font examples">`:
        DC8 "Font examples"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Font6X8">`:
        DC8 "Font6X8"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Font12X16">`:
        DC8 "Font12X16"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Font7X10">`:
        DC8 "Font7X10"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Font7X10 bold">`:
        DC8 "Font7X10 bold"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Turn the Trimmer TRIM">`:
        DC8 "Turn the Trimmer TRIM"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "to control the delay">`:
        DC8 "to control the delay"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "between style frames.">`:
        DC8 "between style frames."
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Push JoyStick SEL to">`:
        DC8 "Push JoyStick SEL to"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "start or stop.">`:
        DC8 "start or stop."
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Style examples">`:
        DC8 "Style examples"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Blink     ">`:
        DC8 "Blink     "
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "FlipFlop">`:
        DC8 "FlipFlop"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Vibratory">`:
        DC8 "Vibratory"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "   Milandr MDR32F9Q1   ">`:
        DC8 "   Milandr MDR32F9Q1   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "   Evaluation board  ">`:
        DC8 "   Evaluation board  "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "          ">`:
        DC8 "          "
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant " Appl. example v.3.0">`:
        DC8 " Appl. example v.3.0"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "     Phyton 2011   ">`:
        DC8 "     Phyton 2011   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "    www.phyton.ru  ">`:
        DC8 "    www.phyton.ru  "

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  244 
//  245 /** @} */ /* End of group Menu_Text_Private_Functions */
//  246 
//  247 /** @} */ /* End of group Menu_Text */
//  248 
//  249 /** @} */ /* End of group Menu */
//  250 
//  251 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  252 
//  253 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  254 *
//  255 * END OF FILE Menu_text.c */
//  256 
// 
// 352 bytes in section .data
// 922 bytes in section .text
// 
// 922 bytes of CODE memory
// 352 bytes of DATA memory
//
//Errors: none
//Warnings: none
