///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\gl.c                                   /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\gl.c --preprocess                      /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\gl.s           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME gl

        #define SHT_PROGBITS 0x1

        EXTERN CurrentMethod
        EXTERN ReadLCD_Data
        EXTERN SetCrystal
        EXTERN WriteLCD_Cmd
        EXTERN WriteLCD_Data

        PUBLIC LCD_Circle
        PUBLIC LCD_Line
        PUBLIC LCD_PutPixel

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\gl.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    gl.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file provides all the functions for the graphic primitive
//    8   *          output to LCD.
//    9   ******************************************************************************
//   10   * <br><br>
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   */
//   20 
//   21 /* Includes ------------------------------------------------------------------*/
//   22 #include "lcd.h"
//   23 #include "gl.h"
//   24 #include "joystick.h"
//   25 
//   26 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   27   * @{
//   28   */
//   29 
//   30 /** @addtogroup LCD_Graphics LCD Graphics
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup LCD_Graphics_Private_Functions LCD Graphics Private Functions
//   35   * @{
//   36   */
//   37 
//   38 /*******************************************************************************
//   39 * Function Name  : LCD_PutPixel
//   40 * Description    : Outputs one pixel to the given screen coordinates.
//   41 * Input          : õ - x-coordinate
//   42 *                : y - y-coordinate
//   43 * Output         : None
//   44 * Return         : None
//   45 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void LCD_PutPixel(uint32_t x, uint32_t y)
//   47 {
LCD_PutPixel:
        PUSH     {R4-R6,LR}
        MOV      R4,R0
        MOV      R5,R1
//   48   uint32_t shifted, page;
//   49   uint32_t data;
//   50 
//   51   if ((x>MAX_X)|(y>MAX_Y))
        CMP      R4,#+128
        SBCS     R0,R0,R0
        MVNS     R0,R0
        CMP      R5,#+64
        SBCS     R1,R1,R1
        MVNS     R1,R1
        LSRS     R1,R1,#+31
        ORRS     R0,R1,R0, LSR #+31
        BNE.N    ??LCD_PutPixel_0
//   52   {
//   53     return;
//   54   }
//   55 
//   56   SetCrystal((LCD_Crystal)(x/64));
        LSLS     R0,R4,#+18
        LSRS     R0,R0,#+24
        BL       SetCrystal
//   57   x %= 64;
        AND      R4,R4,#0x3F
//   58 
//   59   page = y/8;
//   60   shifted = (1 << (y%8));
        MOVS     R0,#+1
        AND      R1,R5,#0x7
        LSL      R6,R0,R1
//   61   LCD_SET_PAGE(page);
        LSRS     R0,R5,#+3
        ORR      R0,R0,#0xB8
        BL       WriteLCD_Cmd
//   62   LCD_SET_ADDRESS(x);
        ORR      R4,R4,#0x40
        MOV      R0,R4
        BL       WriteLCD_Cmd
//   63   data = ReadLCD_Data();
        BL       ReadLCD_Data
        MOV      R5,R0
//   64   switch (CurrentMethod)
        LDR.N    R0,??DataTable0
        LDRB     R0,[R0, #+0]
        CBZ.N    R0,??LCD_PutPixel_1
        CMP      R0,#+1
        BEQ.N    ??LCD_PutPixel_2
        CMP      R0,#+4
        IT       EQ 
        BICEQ    R5,R5,R6
        B.N      ??LCD_PutPixel_3
//   65   {
//   66     case MET_OR :   data |= shifted;    break;
??LCD_PutPixel_1:
        ORRS     R5,R6,R5
        B.N      ??LCD_PutPixel_3
//   67     case MET_XOR :  data ^= shifted;    break;
??LCD_PutPixel_2:
        EORS     R5,R6,R5
//   68     case MET_AND :  data &= ~shifted;  	break;
//   69   }
//   70   LCD_SET_ADDRESS(x);
??LCD_PutPixel_3:
        MOV      R0,R4
        BL       WriteLCD_Cmd
//   71   WriteLCD_Data(data);
        MOV      R0,R5
        POP      {R4-R6,LR}
        B.W      WriteLCD_Data
??LCD_PutPixel_0:
        POP      {R4-R6,PC}       ;; return
//   72 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     CurrentMethod
//   73 
//   74 /*******************************************************************************
//   75 * Function Name  : LCD_Line
//   76 * Description    : Outputs line from (x1,y1) point to (x2,y2) point.
//   77 * Input          : õ1 - start point x-coordinate
//   78 *                : y1 - start point y-coordinate
//   79 *                : x2 - end point x-coordinate
//   80 *                : y2 - end point y-coordinate
//   81 * Output         : None
//   82 * Return         : None
//   83 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 void LCD_Line(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2)
//   85 {
LCD_Line:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+12
        MOV      R9,R0
//   86   int32_t dx, dy, i1, i2, i, kx, ky;
//   87   int32_t d;
//   88   int32_t x, y;
//   89   int32_t flag;
//   90 
//   91   dy = y2 - y1;
        SUBS     R3,R3,R1
//   92   dx = x2 - x1;
        SUB      R5,R2,R9
//   93   if (dx == 0 && dy == 0)
        ORRS     R0,R3,R5
        BNE.N    ??LCD_Line_0
//   94   {
//   95     LCD_PutPixel(x1, y1);
        MOV      R0,R9
        ADD      SP,SP,#+12
        POP      {R4-R11,LR}
        B.N      LCD_PutPixel
//   96     return;
//   97   }
//   98 
//   99   flag = kx = ky = 1;
//  100 
//  101   if (dx < 0)
//  102   {
//  103     dx = -dx;
//  104     kx = -1;
//  105   }
//  106   else if (dx == 0)
//  107   {
//  108     kx = 0;
//  109   }
//  110 
//  111   if (dy < 0)
//  112   {
//  113     dy = -dy;
//  114     ky = -1;
//  115   }
//  116 
//  117   if (dx < dy)
//  118   {
//  119     flag = 0;
//  120     d = dx;
//  121     dx = dy;
//  122     dy = d;
//  123   }
//  124 
//  125   i1 = dy + dy;
//  126   d = i1 - dx;
//  127   i2 = d - dx;
//  128   x = x1;
//  129   y = y1;
//  130 
//  131   for (i=0; ; i++)
//  132   {
//  133     LCD_PutPixel(x,y);
//  134     if (i >= dx)
??LCD_Line_1:
        POP      {R0-R2,R4-R11,PC}  ;; return
??LCD_Line_0:
        MOV      R11,#+1
        MOV      R10,R11
        MOVS     R4,#+1
        MOV      R0,#-1
        CMP      R5,#+0
        BPL.N    ??LCD_Line_2
        RSBS     R5,R5,#+0
        MOV      R10,R0
        B.N      ??LCD_Line_3
??LCD_Line_2:
        IT       EQ 
        MOVEQ    R10,#+0
??LCD_Line_3:
        CMP      R3,#+0
        ITT      MI 
        RSBMI    R3,R3,#+0
        MOVMI    R11,R0
        CMP      R5,R3
        BGE.N    ??LCD_Line_4
        MOVS     R4,#+0
        MOV      R0,R5
        MOV      R5,R3
        MOV      R3,R0
??LCD_Line_4:
        LSLS     R0,R3,#+1
        STR      R0,[SP, #+0]
        SUBS     R6,R0,R5
        SUBS     R0,R6,R5
        STR      R0,[SP, #+4]
        MOV      R8,R1
        MOVS     R7,#+0
        B.N      ??LCD_Line_5
??LCD_Line_6:
        ADDS     R7,R7,#+1
??LCD_Line_5:
        MOV      R1,R8
        MOV      R0,R9
        BL       LCD_PutPixel
        CMP      R7,R5
        BGE.N    ??LCD_Line_1
//  135     {
//  136       break;
//  137     }
//  138     if (flag)
        CMP      R4,#+0
        ITE      NE 
        ADDNE    R9,R10,R9
        ADDEQ    R8,R11,R8
//  139     {
//  140       x += kx;
//  141     }
//  142     else
//  143     {
//  144       y += ky;
//  145     }
//  146 
//  147     if (d < 0)
        CMP      R6,#+0
        BPL.N    ??LCD_Line_7
//  148     {
//  149       d += i1;
        LDR      R0,[SP, #+0]
        ADDS     R6,R0,R6
        B.N      ??LCD_Line_6
//  150     }
//  151     else
//  152     {
//  153       d += i2;
??LCD_Line_7:
        LDR      R0,[SP, #+4]
        ADDS     R6,R0,R6
//  154       if (flag)
        CMP      R4,#+0
        ITE      NE 
        ADDNE    R8,R11,R8
        ADDEQ    R9,R10,R9
//  155       {
//  156         y += ky;
        B.N      ??LCD_Line_6
//  157       }
//  158       else
//  159       {
//  160         x += kx;
//  161       }
//  162     }
//  163   }
//  164 }
//  165 
//  166 /*******************************************************************************
//  167 * Function Name  : LCD_Circle
//  168 * Description    : Draws circle with radius r and center in (x,y) point.
//  169 * Input          : õ - center x-coordinate
//  170 *                : y - center y-coordinate
//  171 *                : r - radius (in pixels)s
//  172 * Output         : None
//  173 * Return         : None
//  174 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 void LCD_Circle(uint32_t xc, uint32_t yc, uint32_t r)
//  176 {
LCD_Circle:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+4
//  177   int32_t d, x, y;
//  178 
//  179   for (x = 0, y = r, d = 3-2*r; ;)
        MOVS     R6,#+0
        MOV      R4,R2
        LSLS     R0,R2,#+1
        RSB      R8,R0,#+3
        B.N      ??LCD_Circle_0
//  180   {
//  181     LCD_PutPixel(x+xc, y+yc);
//  182     LCD_PutPixel(x+xc, -y+yc);
//  183     LCD_PutPixel(-x+xc, -y+yc);
//  184     LCD_PutPixel(-x+xc, y+yc);
//  185     LCD_PutPixel(y+xc, x+yc);
//  186     LCD_PutPixel(y+xc, -x+yc);
//  187     LCD_PutPixel(-y+xc, -x+yc);
//  188     LCD_PutPixel(-y+xc, x+yc);
//  189 
//  190     if (x >= y)
//  191     {
//  192       break;
//  193     }
//  194 
//  195     if (d <= 0)
//  196     {
//  197       d += 4*x+6;
//  198     }
//  199     else
//  200     {
//  201       d += 4*(x-y)+10;
??LCD_Circle_1:
        SUBS     R0,R6,R4
        LSLS     R0,R0,#+2
        ADDS     R0,R0,#+10
        ADD      R8,R0,R8
//  202       y--;
        SUBS     R4,R4,#+1
//  203     }
//  204     x++;
??LCD_Circle_2:
        ADDS     R6,R6,#+1
??LCD_Circle_0:
        LDR      R0,[SP, #+4]
        ADDS     R5,R0,R6
        LDR      R0,[SP, #+8]
        ADDS     R7,R0,R4
        MOV      R1,R7
        MOV      R0,R5
        BL       LCD_PutPixel
        RSB      R9,R4,#+0
        LDR      R0,[SP, #+8]
        ADD      R10,R0,R9
        MOV      R1,R10
        MOV      R0,R5
        BL       LCD_PutPixel
        RSBS     R5,R6,#+0
        LDR      R0,[SP, #+4]
        ADD      R11,R0,R5
        MOV      R1,R10
        MOV      R0,R11
        BL       LCD_PutPixel
        MOV      R1,R7
        MOV      R0,R11
        BL       LCD_PutPixel
        LDR      R0,[SP, #+4]
        ADD      R10,R0,R4
        LDR      R0,[SP, #+8]
        ADDS     R7,R0,R6
        MOV      R1,R7
        MOV      R0,R10
        BL       LCD_PutPixel
        LDR      R0,[SP, #+8]
        ADDS     R5,R0,R5
        MOV      R1,R5
        MOV      R0,R10
        BL       LCD_PutPixel
        LDR      R0,[SP, #+4]
        ADD      R9,R0,R9
        MOV      R1,R5
        MOV      R0,R9
        BL       LCD_PutPixel
        MOV      R1,R7
        MOV      R0,R9
        BL       LCD_PutPixel
        CMP      R6,R4
        BLT.N    ??LCD_Circle_3
//  205   }
//  206 }
        POP      {R0-R2,R4-R11,PC}  ;; return
??LCD_Circle_3:
        CMP      R8,#+1
        BGE.N    ??LCD_Circle_1
        LSLS     R0,R6,#+2
        ADDS     R0,R0,#+6
        ADD      R8,R0,R8
        B.N      ??LCD_Circle_2

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  207 
//  208 /** @} */ /* End of group LCD_Graphics_Private_Functions */
//  209 
//  210 /** @} */ /* End of group LCD_Graphics */
//  211 
//  212 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  213 
//  214 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  215 *
//  216 * END OF FILE gl.c */
//  217 
// 
// 424 bytes in section .text
// 
// 424 bytes of CODE memory
//
//Errors: none
//Warnings: none
