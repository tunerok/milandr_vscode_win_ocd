///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:04 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\text.c                                 /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\text.c --preprocess                    /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\text.s         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME text

        #define SHT_PROGBITS 0x1

        EXTERN ADC1_GetResult
        EXTERN CurrentMethod
        EXTERN Font_6x8
        EXTERN ReadLCD_Data
        EXTERN SetCrystal
        EXTERN SysTickDelay
        EXTERN WriteLCD_Cmd
        EXTERN WriteLCD_Data
        EXTERN strlen

        PUBLIC CurrentFont
        PUBLIC LCD_PUTC
        PUBLIC LCD_PUTS
        PUBLIC LCD_PUTS_Ex
        PUBLIC LCD_PUT_BYTE

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\text.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    text.c
//    4   * @author  Phyton Application Team
//    5   * @version V3.0.0
//    6   * @date    10.09.2011
//    7   * @brief   This file provides all the functions for the symbol  and text
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
//   22 #include <string.h>
//   23 #include <MDR32F9Qx_adc.h>
//   24 #include "lcd.h"
//   25 #include "text.h"
//   26 #include "joystick.h"
//   27 #include "systick.h"
//   28 #include "menu.h"
//   29 
//   30 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   31   * @{
//   32   */
//   33 
//   34 /** @addtogroup LCD_Text LCD Text
//   35   * @{
//   36   */
//   37 
//   38 /** @defgroup LCD_Text_Private_Constants LCD Text Private Constants
//   39   * @{
//   40   */
//   41 
//   42 /** @} */ /* End of group LCD_Text_Private_Constants */
//   43 
//   44 /** @defgroup LCD_Text_Variables LCD Text Variables
//   45   * @{
//   46   */
//   47 
//   48 /* The selected font for text output */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   49 sFONT *CurrentFont = &Font_6x8;
CurrentFont:
        DATA
        DC32 Font_6x8
//   50 
//   51 /** @} */ /* End of group LCD_Text_Variables */
//   52 
//   53 /** @defgroup LCD_Text_Private_Functions LCD Text Private Functions
//   54   * @{
//   55   */
//   56 
//   57 /*******************************************************************************
//   58 * Function Name  : LCD_PUT_BYTE
//   59 * Description    : Outputs one byte to the given screen coordinates.
//   60 * Input          : õ    - x-coordinate
//   61 *                : y    - y-coordinate
//   62 *                : data - byte to output
//   63 * Output         : None
//   64 * Return         : None
//   65 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 void LCD_PUT_BYTE(uint8_t x, uint8_t y, uint8_t data)
//   67 {
LCD_PUT_BYTE:
        PUSH     {R3-R11,LR}
        MOV      R5,R0
        MOV      R6,R1
        MOV      R9,R2
//   68   uint32_t tmp_data, page, shift_num, shift_num_ex;
//   69 
//   70   if ((x>MAX_X)|(y>MAX_Y))
        CMP      R5,#+128
        SBCS     R0,R0,R0
        MVNS     R0,R0
        CMP      R6,#+64
        SBCS     R1,R1,R1
        MVNS     R1,R1
        LSRS     R1,R1,#+31
        ORRS     R0,R1,R0, LSR #+31
        BNE.N    ??LCD_PUT_BYTE_0
//   71   {
//   72     return;
//   73   }
//   74 
//   75   /* Select crystal and x offset */
//   76   SetCrystal((LCD_Crystal)(x/64));
        LSRS     R0,R5,#+6
        BL       SetCrystal
//   77   x %= 64;
        AND      R4,R5,#0x3F
//   78   /* Determine first page and y offset */
//   79   page = y/8;
        LSRS     R5,R6,#+3
//   80   shift_num = y%8;
        AND      R6,R6,#0x7
//   81   shift_num_ex = 8 - shift_num;
        RSB      R11,R6,#+8
//   82 
//   83   /* First page */
//   84 
//   85   /* Read current value */
//   86   LCD_SET_PAGE(page);
        ORR      R7,R5,#0xB8
        MOV      R0,R7
        BL       WriteLCD_Cmd
//   87   LCD_SET_ADDRESS(x);
        ORR      R8,R4,#0x40
        BL       ?Subroutine1
//   88   tmp_data = ReadLCD_Data();
??CrossCallReturnLabel_9:
        BL       ReadLCD_Data
        MOV      R4,R0
//   89   /* Write modified value */
//   90   LCD_SET_PAGE(page);
        MOV      R0,R7
        BL       WriteLCD_Cmd
//   91   LCD_SET_ADDRESS(x);
        BL       ?Subroutine1
//   92   switch (CurrentMethod)
??CrossCallReturnLabel_8:
        EOR      R10,R9,#0xFF
        LSL      R0,R10,R6
        LSL      R1,R9,R6
        MOVS     R7,#+255
        LDR.N    R2,??DataTable3
        LDRB     R2,[R2, #+0]
        CBZ.N    R2,??LCD_PUT_BYTE_1
        CMP      R2,#+2
        BEQ.N    ??LCD_PUT_BYTE_2
        BCC.N    ??LCD_PUT_BYTE_3
        CMP      R2,#+4
        BEQ.N    ??LCD_PUT_BYTE_4
        BCC.N    ??LCD_PUT_BYTE_5
        B.N      ??LCD_PUT_BYTE_6
//   93   {
//   94     case MET_OR:
//   95       WriteLCD_Data(tmp_data | (data << shift_num));
??LCD_PUT_BYTE_1:
        ORR      R0,R1,R4
        B.N      ??LCD_PUT_BYTE_7
//   96       break;
//   97     case MET_XOR:
//   98       WriteLCD_Data(tmp_data ^ (data << shift_num));
??LCD_PUT_BYTE_3:
        EOR      R0,R1,R4
        B.N      ??LCD_PUT_BYTE_7
//   99       break;
//  100     case MET_NOT_OR:
//  101       WriteLCD_Data(tmp_data | ((data ^ 0xFF) << shift_num));
??LCD_PUT_BYTE_2:
        ORRS     R0,R0,R4
        B.N      ??LCD_PUT_BYTE_7
//  102       break;
//  103     case MET_NOT_XOR:
//  104       WriteLCD_Data(tmp_data ^ ((data ^ 0xFF) << shift_num));
??LCD_PUT_BYTE_5:
        EORS     R0,R0,R4
        B.N      ??LCD_PUT_BYTE_7
//  105       break;
//  106     case MET_AND:
//  107       WriteLCD_Data(tmp_data & (0xFF >> shift_num_ex) | (data << shift_num));
??LCD_PUT_BYTE_4:
        ASR      R0,R7,R11
        ANDS     R0,R0,R4
        ORRS     R0,R1,R0
??LCD_PUT_BYTE_7:
        BL       WriteLCD_Data
//  108       break;
//  109   }
//  110 
//  111   /* Second page (if any) */
//  112   if (shift_num > 0)
??LCD_PUT_BYTE_6:
        CBZ.N    R6,??LCD_PUT_BYTE_0
//  113   {
//  114     /* Read current value */
//  115     LCD_SET_PAGE(page+1);
        ADDS     R0,R5,#+1
        ORR      R5,R0,#0xB8
        MOV      R0,R5
        BL       WriteLCD_Cmd
//  116     LCD_SET_ADDRESS(x);
        BL       ?Subroutine1
//  117     tmp_data = ReadLCD_Data();
??CrossCallReturnLabel_7:
        BL       ReadLCD_Data
        MOV      R4,R0
//  118     /* Write modified value */
//  119     LCD_SET_PAGE(page+1);
        MOV      R0,R5
        BL       WriteLCD_Cmd
//  120     LCD_SET_ADDRESS(x);
        BL       ?Subroutine1
//  121     switch (CurrentMethod)
??CrossCallReturnLabel_6:
        ASR      R0,R10,R11
        ASR      R1,R9,R11
        LDR.N    R2,??DataTable3
        LDRB     R2,[R2, #+0]
        CBZ.N    R2,??LCD_PUT_BYTE_8
        CMP      R2,#+2
        BEQ.N    ??LCD_PUT_BYTE_9
        BCC.N    ??LCD_PUT_BYTE_10
        CMP      R2,#+4
        BEQ.N    ??LCD_PUT_BYTE_11
        BCC.N    ??LCD_PUT_BYTE_12
        B.N      ??LCD_PUT_BYTE_0
//  122     {
//  123       case MET_OR:
//  124         WriteLCD_Data(tmp_data | (data >> shift_num_ex));
??LCD_PUT_BYTE_8:
        ORR      R0,R1,R4
        B.N      ??LCD_PUT_BYTE_13
//  125         break;
//  126       case MET_XOR:
//  127         WriteLCD_Data(tmp_data ^ (data >> shift_num_ex));
??LCD_PUT_BYTE_10:
        EOR      R0,R1,R4
        B.N      ??LCD_PUT_BYTE_13
//  128         break;
//  129       case MET_NOT_OR:
//  130         WriteLCD_Data(tmp_data | ((data ^ 0xFF) >> shift_num_ex));
??LCD_PUT_BYTE_9:
        ORRS     R0,R0,R4
        B.N      ??LCD_PUT_BYTE_13
//  131         break;
//  132       case MET_NOT_XOR:
//  133         WriteLCD_Data(tmp_data ^ ((data ^ 0xFF)>> shift_num_ex));
??LCD_PUT_BYTE_12:
        EORS     R0,R0,R4
        B.N      ??LCD_PUT_BYTE_13
//  134         break;
//  135       case MET_AND:
//  136         WriteLCD_Data(tmp_data & (0xFF << shift_num) | (data >> shift_num_ex));
??LCD_PUT_BYTE_11:
        LSL      R0,R7,R6
        ANDS     R0,R0,R4
        ORRS     R0,R1,R0
??LCD_PUT_BYTE_13:
        POP      {R1,R4-R11,LR}
        B.W      WriteLCD_Data
//  137         break;
//  138     }
//  139   }
??LCD_PUT_BYTE_0:
        POP      {R0,R4-R11,PC}   ;; return
//  140 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOV      R0,R8
        B.W      WriteLCD_Cmd
//  141 
//  142 /*----------------- Printing of symbols and strings using current font -----------------*/
//  143 
//  144 /*******************************************************************************
//  145 * Function Name  : LCD_PUTC
//  146 * Description    : Prints one symbol to the given screen coordinates.
//  147 * Input          : õ  - x-coordinate
//  148 *                : y  - y-coordinate
//  149 *                : ch - symbol to print
//  150 * Output         : None
//  151 * Return         : None
//  152 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void LCD_PUTC(uint8_t x, uint8_t y, uint8_t ch)
//  154 {
LCD_PUTC:
        PUSH     {R4-R10,LR}
        MOV      R8,R0
        MOV      R9,R1
//  155   uint32_t i, j, line;
//  156   ucint8_t *sym;
//  157 
//  158   sym = Get_Char_Data_Addr(ch);
        LDR.N    R6,??DataTable3_1
        LDR      R0,[R6, #+0]
        LDR      R1,[R0, #+0]
        TST      R1,#0x7
        ITTE     NE 
        LSRNE    R3,R1,#+3
        ADDNE    R3,R3,#+1
        LSREQ    R3,R1,#+3
        LDR      R7,[R0, #+4]
        MULS     R2,R7,R2
        LDR      R0,[R0, #+12]
        MLA      R7,R3,R2,R0
//  159   line = CurrentFont->Height / 8;
        LSRS     R4,R1,#+3
//  160   if (CurrentFont->Height % 8)
        TST      R1,#0x7
        IT       NE 
        ADDNE    R4,R4,#+1
//  161   {
//  162     line++;
//  163   }
//  164 
//  165   for (j = 0; j < line; j++)
        MOVS     R5,#+0
        B.N      ??LCD_PUTC_0
//  166   {
//  167     for( i = 0; i < CurrentFont->Width; i++)
//  168     {
//  169       LCD_PUT_BYTE(x + i, y + j*8, sym[i + CurrentFont->Width*j]);
??LCD_PUTC_1:
        MLA      R0,R5,R0,R10
        LDRB     R2,[R0, R7]
        ADD      R1,R9,R5, LSL #+3
        UXTB     R1,R1
        ADD      R0,R10,R8
        UXTB     R0,R0
        BL       LCD_PUT_BYTE
//  170     }
        ADD      R10,R10,#+1
??LCD_PUTC_2:
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+4]
        CMP      R10,R0
        BCC.N    ??LCD_PUTC_1
        ADDS     R5,R5,#+1
??LCD_PUTC_0:
        CMP      R5,R4
        IT       CC 
        MOVCC    R10,#+0
        BCC.N    ??LCD_PUTC_2
//  171   }
//  172 }
        POP      {R4-R10,PC}      ;; return
//  173 
//  174 /*******************************************************************************
//  175 * Function Name  : LCD_PUTS
//  176 * Description    : Prints the string to the given screen coordinates.
//  177 * Input          : õ  - x-coordinate
//  178 *                : y  - y-coordinate
//  179 *                : str - pointer to string
//  180 * Output         : None
//  181 * Return         : None
//  182 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  183 void LCD_PUTS(uint8_t x, uint8_t y, ucint8_t* str)
//  184 {
LCD_PUTS:
        PUSH     {R4-R8,LR}
        MOV      R4,R0
        MOV      R8,R1
        MOV      R6,R2
//  185   uint32_t i;
//  186 
//  187   for (i=0; str[i]; i++)
        MOVS     R7,#+0
        LDR.N    R5,??DataTable3_1
        B.N      ??LCD_PUTS_0
//  188   {
//  189     LCD_PUTC(x + i*CurrentFont->Width, y, str[i]);
??LCD_PUTS_1:
        MOV      R1,R8
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        MLA      R0,R0,R7,R4
        UXTB     R0,R0
        BL       LCD_PUTC
//  190   }
        ADDS     R7,R7,#+1
??LCD_PUTS_0:
        LDRB     R2,[R7, R6]
        CMP      R2,#+0
        BNE.N    ??LCD_PUTS_1
//  191 }
        POP      {R4-R8,PC}       ;; return
//  192 
//  193 /*******************************************************************************
//  194 * Function Name  : LCD_PUTS_Ex
//  195 * Description    : Prints the string using the dedicated style.
//  196 * Input          : õ  - x-coordinate
//  197 *                : y  - y-coordinate
//  198 *                : str - pointer to string
//  199 *                : style - style
//  200 * Output         : None
//  201 * Return         : None
//  202 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 void LCD_PUTS_Ex(uint8_t x, uint8_t y, ucint8_t* str, uint8_t style)
//  204 {
LCD_PUTS_Ex:
        PUSH     {R4-R10,LR}
        MOV      R8,R0
        MOV      R9,R1
        MOV      R10,R2
        MOV      R6,R3
//  205   uint32_t i, DelayCount;
//  206 
//  207   LCD_Method OldMethod = CurrentMethod;
        LDR.N    R7,??DataTable3
        LDRB     R4,[R7, #+0]
//  208 
//  209   /* Trimming results in animation speed changes */
//  210   DelayCount = (ADC1_GetResult() & ADC_RESULT_Msk) + 51;
        BL       ADC1_GetResult
        LSLS     R0,R0,#+20
        LSRS     R0,R0,#+20
        ADD      R5,R0,#+51
//  211 
//  212   switch (style)
        CBZ.N    R6,??LCD_PUTS_Ex_0
        CMP      R6,#+2
        BEQ.N    ??LCD_PUTS_Ex_1
        BCC.N    ??LCD_PUTS_Ex_2
        CMP      R6,#+3
        BEQ.N    ??LCD_PUTS_Ex_3
        B.N      ??LCD_PUTS_Ex_4
//  213   {
//  214     /* Simple string */
//  215     case StyleSimple:
//  216       CurrentMethod = MET_AND;
??LCD_PUTS_Ex_0:
        MOVS     R0,#+4
        STRB     R0,[R7, #+0]
//  217       LCD_PUTS(x, y, str);
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R8
        B.N      ??LCD_PUTS_Ex_5
//  218       break;
//  219     /* Blinking strings */
//  220     case StyleBlink:
//  221       CurrentMethod = MET_AND;
??LCD_PUTS_Ex_2:
        BL       ?Subroutine0
//  222       LCD_PUTS(x, y, str);
//  223       SysTickDelay(DelayCount);
??CrossCallReturnLabel_5:
        MOV      R0,R5
        BL       SysTickDelay
//  224       for (i = 0; i < strlen((const char *)str); i++)
        MOVS     R5,#+0
        LDR.N    R6,??DataTable3_1
??LCD_PUTS_Ex_6:
        MOV      R0,R10
        BL       strlen
        CMP      R5,R0
        BCS.N    ??LCD_PUTS_Ex_4
//  225         LCD_PUTC(x + ((CurrentFont->Width) * i), y, 0x20);
        MOVS     R2,#+32
        MOV      R1,R9
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+4]
        MLA      R0,R5,R0,R8
        UXTB     R0,R0
        BL       LCD_PUTC
        ADDS     R5,R5,#+1
        B.N      ??LCD_PUTS_Ex_6
//  226       break;
//  227     /* String with modified background */
//  228     case StyleFlipFlop:
//  229       CurrentMethod = MET_AND;
??LCD_PUTS_Ex_1:
        BL       ?Subroutine0
//  230       LCD_PUTS(x, y, str);
//  231       CurrentMethod = MET_XOR;
??CrossCallReturnLabel_4:
        MOVS     R0,#+1
        BL       ??Subroutine0_0
//  232       LCD_PUTS(x, y, str);
//  233       CurrentMethod = MET_NOT_XOR;
??CrossCallReturnLabel_1:
        MOVS     R0,#+3
        BL       ??Subroutine0_0
//  234       LCD_PUTS(x, y, str);
//  235       SysTickDelay(DelayCount * 2);
??CrossCallReturnLabel_0:
        LSLS     R0,R5,#+1
        BL       SysTickDelay
//  236       CurrentMethod = MET_AND;
        BL       ?Subroutine0
//  237       LCD_PUTS(x, y, str);
//  238       SysTickDelay(DelayCount);
??CrossCallReturnLabel_3:
        MOV      R0,R5
        BL       SysTickDelay
//  239       break;
        B.N      ??LCD_PUTS_Ex_4
//  240     /* Shiver string */
//  241     case StyleVibratory:
//  242       CurrentMethod = MET_AND;
??LCD_PUTS_Ex_3:
        BL       ?Subroutine0
//  243       LCD_PUTS(x, y, str);
//  244       SysTickDelay(DelayCount);
??CrossCallReturnLabel_2:
        MOV      R0,R5
        BL       SysTickDelay
//  245       LCD_PUTS(x+1, y+1, str);
        MOV      R2,R10
        ADD      R1,R9,#+1
        UXTB     R1,R1
        ADD      R0,R8,#+1
        UXTB     R0,R0
??LCD_PUTS_Ex_5:
        BL       LCD_PUTS
//  246       break;
//  247   }
//  248   CurrentMethod = OldMethod;
??LCD_PUTS_Ex_4:
        STRB     R4,[R7, #+0]
//  249 }
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R0,#+4
??Subroutine0_0:
        STRB     R0,[R7, #+0]
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R8
        B.N      LCD_PUTS

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  250 
//  251 /** @} */ /* End of group LCD_Text_Private_Functions */
//  252 
//  253 /** @} */ /* End of group LCD_Text */
//  254 
//  255 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  256 
//  257 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  258 *
//  259 * END OF FILE text.c */
//  260 
// 
//   4 bytes in section .data
// 590 bytes in section .text
// 
// 590 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
