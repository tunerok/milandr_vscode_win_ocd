///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_gl.c                              /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_gl.c --preprocess                 /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_gl.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_gl

        #define SHT_PROGBITS 0x1

        EXTERN ADC1_Cmd
        EXTERN ADC1_GetResult
        EXTERN ADC_Config
        EXTERN BackToMenuOnSel
        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN DisplayMenuTitle
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_Circle
        EXTERN LCD_Line
        EXTERN LCD_PUTS
        EXTERN SysTickDelay

        PUBLIC DisplayFillingCircle
        PUBLIC DisplayFillingRectangle
        PUBLIC DisplayRectangle
        PUBLIC ElementsFunc
        PUBLIC IndicatorsFunc

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_gl.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_gl.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file contains all the "Graphics" menu handlers
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
//   21 #include <MDR32F9Qx_adc.h>
//   22 #include "MDR32F9Qx_board.h"
//   23 #include "Menu.h"
//   24 #include "Menu_items.h"
//   25 #include "gl.h"
//   26 #include "lcd.h"
//   27 #include "joystick.h"
//   28 #include "systick.h"
//   29 #include "text.h"
//   30 #include "adc.h"
//   31 
//   32 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   33   * @{
//   34   */
//   35 
//   36 /** @addtogroup Menu Menu
//   37   * @{
//   38   */
//   39 
//   40 /** @addtogroup Menu_Graphics Menu Graphics
//   41   * @{
//   42   */
//   43 
//   44 
//   45 /** @defgroup Menu_Graphics_Private_Constants Menu Graphics Private Constants
//   46   * @{
//   47   */
//   48 
//   49 /** @} */ /* End of group Menu_Graphics_Private_Constants */
//   50 
//   51 /** @addtogroup Menu_Graphics_Private_Functions Menu Graphics Private Functions
//   52   * @{
//   53   */
//   54 
//   55 /** @addtogroup Menu_Graphics_Elements Menu Graphics Elements
//   56   * @{
//   57   */
//   58 
//   59 /*******************************************************************************
//   60 * Function Name  : DisplayTriangle
//   61 * Description    : Draws unfilled right triangle
//   62 * Input          : up angle õ-coordinate
//   63 *                : up angle y-coordinate
//   64 *                : side - cathetus length, in pixels
//   65 * Output         : None
//   66 * Return         : None
//   67 *******************************************************************************/
//   68 static void DisplayTriangle (int32_t x, int32_t y, int32_t side)
//   69 {
//   70   LCD_Line(x, y, x + side, y);
//   71   LCD_Line(x + side, y, x + side, y + side);
//   72   LCD_Line(x, y, x + side, y + side);
//   73 }
//   74 
//   75 /*******************************************************************************
//   76 * Function Name  : DisplayFillingTriangle
//   77 * Description    : Draws filled right triangle
//   78 * Input          : up angle õ-coordinate
//   79 *                : up angle y-coordinate
//   80 *                : side - cathetus length, in pixels
//   81 * Output         : None
//   82 * Return         : None
//   83 *******************************************************************************/
//   84 static void DisplayFillingTriangle (int32_t x, int32_t y, int32_t side)
//   85 {
//   86   int32_t i;
//   87 
//   88   for (i = 0; i < side + 1; i++)
//   89   {
//   90     LCD_Line(x + i, y + i, x + side, y + i);
//   91   }
//   92 }
//   93 
//   94 /*******************************************************************************
//   95 * Function Name  : DisplayFillingCircle
//   96 * Description    : Draws circle
//   97 * Input          : õ      - center x-coordinate
//   98 *                : y      - center y-coordinate
//   99 *                : radius - radius, in pixel
//  100 * Output         : None
//  101 * Return         : None
//  102 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void DisplayFillingCircle (int32_t x, int32_t y, int32_t radius)
//  104 {
DisplayFillingCircle:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R5,R1
        MOV      R6,R2
//  105   int32_t i;
//  106 
//  107   for (i = 0; i < radius + 1; i++)
        MOVS     R7,#+0
        B.N      ??DisplayFillingCircle_0
//  108   {
//  109     LCD_Circle(x, y, i);
??DisplayFillingCircle_1:
        MOV      R2,R7
        MOV      R1,R5
        MOV      R0,R4
        BL       LCD_Circle
//  110   }
        ADDS     R7,R7,#+1
??DisplayFillingCircle_0:
        ADDS     R0,R6,#+1
        CMP      R7,R0
        BLT.N    ??DisplayFillingCircle_1
//  111 }
        POP      {R0,R4-R7,PC}    ;; return
//  112 
//  113 /*******************************************************************************
//  114 * Function Name  : DisplayRectangle
//  115 * Description    : Draws rectangle
//  116 * Input          : õ      - left up rectangle corner x-coordinate
//  117 *                : y      - left up rectangle corner y-coordinate
//  118 *                : side_x - horizontal side length, in pixels
//  119 *                : side_y - vertical side length, in pixels
//  120 * Output         : None
//  121 * Return         : None
//  122 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  123 void DisplayRectangle (int32_t x, int32_t y, int32_t side_x, int32_t side_y)
//  124 {
DisplayRectangle:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R5,R1
        MOV      R6,R3
        ADDS     R7,R2,R4
        MOV      R3,R5
        MOV      R2,R7
//  125   LCD_Line(x, y, x + side_x, y);
        BL       LCD_Line
        ADDS     R6,R6,R5
        MOV      R3,R6
        MOV      R2,R4
        MOV      R1,R5
        MOV      R0,R4
//  126   LCD_Line(x, y, x, y + side_y);
        BL       LCD_Line
//  127   LCD_Line(x + side_x, y, x + side_x, y + side_y);
        MOV      R3,R6
        MOV      R2,R7
        MOV      R1,R5
        MOV      R0,R7
        BL       LCD_Line
//  128   LCD_Line(x, y + side_y, x + side_x, y + side_y);
        MOV      R3,R6
        MOV      R2,R7
        MOV      R1,R6
        MOV      R0,R4
        ADD      SP,SP,#+4
        POP      {R4-R7,LR}
        B.W      LCD_Line
//  129 }
//  130 
//  131 /*******************************************************************************
//  132 * Function Name  : DisplayFillingRectangle
//  133 * Description    : Draws block (filled rectangle)
//  134 * Input          : õ      - left up rectangle corner x-coordinate
//  135 *                : y      - left up rectangle corner y-coordinate
//  136 *                : side_x - horizontal side length, in pixels
//  137 *                : side_y - vertical side length, in pixels
//  138 * Output         : None
//  139 * Return         : None
//  140 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 void DisplayFillingRectangle (int32_t x, int32_t y, int32_t side_x, int32_t side_y)
//  142 {
DisplayFillingRectangle:
        PUSH     {R4-R8,LR}
        MOV      R4,R0
        MOV      R5,R1
        MOV      R6,R2
        MOV      R8,R3
//  143   int32_t i;
//  144   for (i = 0; i < side_y; i++)
        MOVS     R7,#+0
        B.N      ??DisplayFillingRectangle_0
??DisplayFillingRectangle_1:
        ADDS     R1,R7,R5
        MOV      R3,R1
        ADDS     R2,R6,R4
        MOV      R0,R4
//  145   {
//  146     LCD_Line(x, y + i, x + side_x, y + i);
        BL       LCD_Line
//  147   }
        ADDS     R7,R7,#+1
??DisplayFillingRectangle_0:
        CMP      R7,R8
        BLT.N    ??DisplayFillingRectangle_1
//  148 }
        POP      {R4-R8,PC}       ;; return
//  149 
//  150 /** @} */ /* End of group Menu_Graphics_Elements */
//  151 
//  152 /** @addtogroup Menu_Graphics_Functions Menu Graphics Functions
//  153   * @{
//  154   */
//  155 
//  156 /*******************************************************************************
//  157 * Function Name  : ElementsFunc
//  158 * Description    : Graphical elements drawing
//  159 * Input          : None
//  160 * Output         : None
//  161 * Return         : None
//  162 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  163 void ElementsFunc(void)
//  164 {
ElementsFunc:
        PUSH     {R4,LR}
//  165 #define base_x 25
//  166 #define base_y 14
//  167 #define side   16
//  168 
//  169 #define offs_x 8
//  170 #define offs_y 5
//  171 
//  172 #define circle_radius side / 2
//  173 #define circle_x base_x + side + offs_x + circle_radius
//  174 #define circle_y base_y + circle_radius
//  175 #define circle_filling_y circle_y + circle_radius * 2 + offs_y
//  176 
//  177 #define rectangle_x base_x + side * 2 + offs_x * 2
//  178 #define block_y  base_y + side + offs_y
//  179 
//  180   /* Header output */
//  181   LCD_CLS();
        BL       LCD_CLS
//  182   CurrentMethod = MET_OR;
        LDR.N    R0,??DataTable10_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  183   DisplayMenuTitle("Elements");
        ADR.W    R0,`?<Constant "Elements">`
        BL       DisplayMenuTitle
//  184 
//  185   /* Build primitives and wait for key up */
//  186   DisplayTriangle (base_x, base_y, side);
        MOVS     R3,#+14
        BL       ?Subroutine1
??CrossCallReturnLabel_6:
        MOVS     R3,#+30
        MOVS     R2,#+41
        MOVS     R1,#+14
        MOV      R0,R2
        BL       LCD_Line
        MOVS     R3,#+30
        BL       ?Subroutine1
//  187   DisplayFillingTriangle (base_x, base_y + side + offs_y, side);
??CrossCallReturnLabel_5:
        MOVS     R4,#+0
??ElementsFunc_0:
        ADD      R1,R4,#+35
        MOV      R3,R1
        MOVS     R2,#+41
        ADD      R0,R4,#+25
        BL       LCD_Line
        ADDS     R4,R4,#+1
        CMP      R4,#+17
        BLT.N    ??ElementsFunc_0
//  188 
//  189   LCD_Circle(circle_x, circle_y, circle_radius);
        MOVS     R2,#+8
        MOVS     R1,#+22
        MOVS     R0,#+57
        BL       LCD_Circle
//  190   DisplayFillingCircle (circle_x, circle_filling_y, circle_radius);
        MOVS     R2,#+8
        MOVS     R1,#+43
        MOVS     R0,#+57
        BL       DisplayFillingCircle
//  191 
//  192   DisplayRectangle (rectangle_x, base_y, side * 2, side);
        MOVS     R3,#+16
        MOVS     R2,#+32
        MOVS     R1,#+14
        MOVS     R0,#+73
        BL       DisplayRectangle
//  193   DisplayFillingRectangle (rectangle_x, block_y, side * 2, side);
        MOVS     R3,#+16
        MOVS     R2,#+32
        MOVS     R1,#+35
        MOVS     R0,#+73
        BL       DisplayFillingRectangle
//  194 
//  195   WAIT_UNTIL_KEY_RELEASED(SEL);
??ElementsFunc_1:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??ElementsFunc_1
//  196 
//  197   /* Wait for SEL pressed and return to main menu */
//  198   BackToMenuOnSel();
        POP      {R4,LR}
        B.W      BackToMenuOnSel
//  199 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R2,#+41
        MOVS     R1,#+14
        MOVS     R0,#+25
        B.W      LCD_Line
//  200 
//  201 /*******************************************************************************
//  202 * Function Name  : IndicatorsFunc
//  203 * Description    : Indicators drawing
//  204 * Input          : None
//  205 * Output         : None
//  206 * Return         : None
//  207 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void IndicatorsFunc(void)
//  209 {
IndicatorsFunc:
        PUSH     {R3-R11,LR}
//  210 #define side_x 4
//  211 
//  212   int32_t i, sign, DelayCount;
//  213 
//  214   sFONT *OldFont = CurrentFont;
        LDR.N    R4,??DataTable10_3
        LDR      R5,[R4, #+0]
//  215 
//  216   LCD_Method OldMethod = CurrentMethod;
        LDR.N    R6,??DataTable10_2
        LDRB     R7,[R6, #+0]
//  217 
//  218   LCD_CLS();
        BL       LCD_CLS
//  219   CurrentMethod = MET_AND;
        MOVS     R0,#+4
        STRB     R0,[R6, #+0]
//  220   CurrentFont = &Font_6x8;
        LDR.N    R0,??DataTable10_4
        STR      R0,[R4, #+0]
//  221 
//  222   /* Print prompt and wait for key SEL pressed */
//  223   LCD_PUTS(0, 12, "Turn the Trimmer TRIM");
        ADR.W    R2,`?<Constant "Turn the Trimmer TRIM">`
        MOVS     R1,#+12
        BL       ?Subroutine0
//  224   LCD_PUTS(0, 22, "to control the delay");
??CrossCallReturnLabel_4:
        ADR.W    R2,`?<Constant "to control the delay">`
        MOVS     R1,#+22
        BL       ?Subroutine0
//  225   LCD_PUTS(0, 32, "between style frames.");
??CrossCallReturnLabel_3:
        ADR.W    R2,`?<Constant "between style frames.">`
        MOVS     R1,#+32
        BL       ?Subroutine0
//  226   LCD_PUTS(0, 42, "Push JoyStick SEL to");
??CrossCallReturnLabel_2:
        ADR.W    R2,`?<Constant "Push JoyStick SEL to">`
        MOVS     R1,#+42
        BL       ?Subroutine0
//  227   LCD_PUTS(0, 52, "start or stop.");
??CrossCallReturnLabel_1:
        ADR.W    R2,`?<Constant "start or stop.">`
        MOVS     R1,#+52
        BL       ?Subroutine0
//  228 
//  229   while (!KEY_PRESSED(SEL))
??CrossCallReturnLabel_0:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??CrossCallReturnLabel_0
//  230   {
//  231 
//  232   }
//  233 
//  234   /* Configure ADC channel 7 */
//  235   ADC_Config();
        BL       ADC_Config
//  236   /* ADC1 enable */
//  237   ADC1_Cmd(ENABLE);
        MOVS     R0,#+1
        BL       ADC1_Cmd
//  238 
//  239   /* Print header and wait for key up */
//  240   LCD_CLS();
        BL       LCD_CLS
//  241   CurrentMethod = MET_OR;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  242   DisplayMenuTitle("Indicators");
        ADR.W    R0,`?<Constant "Indicators">`
        BL       DisplayMenuTitle
//  243   WAIT_UNTIL_KEY_RELEASED(SEL);
??IndicatorsFunc_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??IndicatorsFunc_0
//  244 
//  245   /* Draw the progress bar */
//  246   LCD_PUTS(24,18,"0");
        ADR.N    R2,??DataTable10  ;; "0"
        MOVS     R1,#+18
        MOVS     R0,#+24
        BL       LCD_PUTS
//  247   DisplayRectangle (32, 14, 64, 14);
        MOVS     R3,#+14
        MOVS     R2,#+64
        MOVS     R1,#+14
        MOVS     R0,#+32
        BL       DisplayRectangle
//  248   LCD_PUTS(97,18,"100");
        ADR.N    R2,??DataTable10_1  ;; "100"
        MOVS     R1,#+18
        MOVS     R0,#+97
        BL       LCD_PUTS
//  249   /* Draw the scale */
//  250   LCD_Circle(63, 63, 30);
        MOVS     R2,#+30
        MOVS     R1,#+63
        MOV      R0,R1
        BL       LCD_Circle
//  251   LCD_Line(63, 34, 63, 41);
        MOVS     R3,#+41
        MOVS     R2,#+63
        MOVS     R1,#+34
        MOV      R0,R2
        BL       LCD_Line
//  252   LCD_Line(35, 53, 42, 56);
        MOVS     R3,#+56
        MOVS     R2,#+42
        MOVS     R1,#+53
        MOVS     R0,#+35
        BL       LCD_Line
//  253   LCD_Line(91, 53, 84, 56);
        MOVS     R3,#+56
        MOVS     R2,#+84
        MOVS     R1,#+53
        MOVS     R0,#+91
        BL       LCD_Line
//  254   LCD_Line(45, 39, 51, 45);
        MOVS     R3,#+45
        MOVS     R2,#+51
        MOVS     R1,#+39
        MOV      R0,R3
        BL       LCD_Line
//  255   LCD_Line(81, 39, 75, 45);
        MOVS     R3,#+45
        MOVS     R2,#+75
        MOVS     R1,#+39
        MOVS     R0,#+81
        BL       LCD_Line
//  256 
//  257   /* Emulate progress - from 0 to 100% and back */
//  258   /* Emulate scale bar trembling */
//  259   CurrentMethod = MET_XOR;
        MOVS     R0,#+1
        STRB     R0,[R6, #+0]
//  260   for (i = 0, sign = 1; !KEY_PRESSED(SEL); )
        MOV      R9,#+0
        MOV      R8,R0
        B.N      ??CrossCallReturnLabel_9
//  261   {
//  262     int32_t ni = i + side_x * sign;
//  263 
//  264     /* Trimming results in animation speed changes */
//  265     DelayCount = (ADC1_GetResult() & ADC_RESULT_Msk) + 51;
//  266 
//  267     /* Draw the bar */
//  268     DisplayFillingRectangle (i + 34, 16, side_x - 1, 11);
//  269     if (ni > 60 || ni < 0)
//  270     {
//  271       sign = -sign;
//  272     }
//  273     else
//  274     {
//  275       i = ni;
//  276     }
//  277     SysTickDelay(DelayCount);
??IndicatorsFunc_1:
        BL       ?Subroutine3
//  278 
//  279     /* Draw the arrow */
//  280     LCD_Line(86, 46, 63, 63);
??CrossCallReturnLabel_13:
        MOVS     R3,#+63
        MOVS     R2,#+63
        MOVS     R1,#+46
        MOVS     R0,#+86
        BL       LCD_Line
//  281     SysTickDelay(DelayCount);
        BL       ?Subroutine3
//  282     LCD_Line(86, 46, 63, 63);
??CrossCallReturnLabel_12:
        MOVS     R3,#+63
        MOV      R2,R3
        MOVS     R1,#+46
        MOVS     R0,#+86
        BL       LCD_Line
//  283     SysTickDelay(DelayCount);
        BL       ?Subroutine3
//  284     LCD_Line(84, 44, 63, 63);
??CrossCallReturnLabel_11:
        BL       ?Subroutine2
//  285     SysTickDelay(DelayCount);
??CrossCallReturnLabel_8:
        BL       ?Subroutine3
//  286     LCD_Line(84, 44, 63, 63);
??CrossCallReturnLabel_10:
        BL       ?Subroutine2
//  287     SysTickDelay(DelayCount);
??CrossCallReturnLabel_7:
        BL       ?Subroutine3
??CrossCallReturnLabel_9:
        BL       GetKey
        CBZ.N    R0,??IndicatorsFunc_2
        ADD      R10,R9,R8, LSL #+2
        BL       ADC1_GetResult
        LSLS     R0,R0,#+20
        LSRS     R0,R0,#+20
        ADD      R11,R0,#+51
        MOVS     R3,#+11
        MOVS     R2,#+3
        MOVS     R1,#+16
        ADD      R0,R9,#+34
        BL       DisplayFillingRectangle
        CMP      R10,#+61
        ITE      CS 
        RSBCS    R8,R8,#+0
        MOVCC    R9,R10
        B.N      ??IndicatorsFunc_1
//  288   }
//  289 
//  290   /* SEL is pressed - return to the main menu */
//  291   CurrentFont = OldFont;
??IndicatorsFunc_2:
        STR      R5,[R4, #+0]
//  292   CurrentMethod = OldMethod;
        STRB     R7,[R6, #+0]
//  293   /* ADC1 disable */
//  294   ADC1_Cmd(DISABLE);
        BL       ADC1_Cmd
//  295   DisplayMenu();
        POP      {R0,R4-R11,LR}
        B.W      DisplayMenu
//  296 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC8      "0",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC8      "100"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        MOV      R0,R11
        B.W      SysTickDelay

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOVS     R3,#+63
        MOV      R2,R3
        MOVS     R1,#+44
        MOVS     R0,#+84
        B.W      LCD_Line

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R0,#+0
        B.W      LCD_PUTS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Elements">`:
        DC8 "Elements"
        DC8 0, 0, 0

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
`?<Constant "Indicators">`:
        DC8 "Indicators"
        DC8 0

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
`?<Constant "0">`:
        DC8 "0"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "100">`:
        DC8 "100"

        END
//  297 
//  298 /** @} */ /* End of group Menu_Graphics_Functions */
//  299 
//  300 /** @} */ /* End of group Menu_Graphics_Private_Functions */
//  301 
//  302 /** @} */ /* End of group Menu_Graphics */
//  303 
//  304 /** @} */ /* End of group Menu */
//  305 
//  306 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  307 
//  308 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  309 *
//  310 * END OF FILE Menu_gl.c */
//  311 
// 
//   6 bytes in section .rodata
// 798 bytes in section .text
// 
// 798 bytes of CODE  memory
//   6 bytes of CONST memory
//
//Errors: none
//Warnings: none
