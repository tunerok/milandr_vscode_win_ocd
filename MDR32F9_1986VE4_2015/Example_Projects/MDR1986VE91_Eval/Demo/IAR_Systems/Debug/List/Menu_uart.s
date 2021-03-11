///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:26:01 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_uart.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_uart.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_uart.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_uart

        #define SHT_PROGBITS 0x1

        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTC
        EXTERN LCD_PUTS
        EXTERN RST_CLK_PCLKcmd
        EXTERN UART_BRGInit
        EXTERN UART_Cmd
        EXTERN UART_DMACmd
        EXTERN UART_DMAConfig
        EXTERN UART_DeInit
        EXTERN UART_GetFlagStatus
        EXTERN UART_ITConfig
        EXTERN UART_Init
        EXTERN UART_ReceiveData
        EXTERN UART_SendData
        EXTERN __aeabi_memcpy
        EXTERN pfUARTReceiverFunc
        EXTERN pfUARTSenderFunc

        PUBLIC ReceiverFuncFIFODemo
        PUBLIC SenderFuncFIFODemo
        PUBLIC UARTConfiguration
        PUBLIC UARTDisplayError
        PUBLIC UARTFunc
        PUBLIC UARTHelp
        PUBLIC UARTwFIFOFunc

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_uart.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_uart.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.2.0
//    6   * @date    09.09.2010
//    7   * @brief   This file contains all the "UART" menu handlers.
//    8   *          Only UART1 is used in this example; output transmitter line
//    9   *          UARTTXD is shortcutted to UARTRXD receiver input.
//   10   ******************************************************************************
//   11   * <br><br>
//   12   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   13   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   14   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY
//   15   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   16   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   17   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   18   *
//   19   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   20   */
//   21 /* Includes ------------------------------------------------------------------*/
//   22 #include "MDR32F9Qx_config.h"
//   23 #include <MDR32Fx.h>
//   24 #include <MDR32F9Qx_port.h>
//   25 #include <MDR32F9Qx_rst_clk.h>
//   26 #include <MDR32F9Qx_uart.h>
//   27 #include "Menu.h"
//   28 #include "Menu_items.h"
//   29 #include "leds.h"
//   30 #include "lcd.h"
//   31 #include "text.h"
//   32 #include "joystick.h"
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
//   43 /** @addtogroup Menu_UART Menu UART
//   44   * @{
//   45   */
//   46 
//   47 /** @defgroup Menu_UART_Private_Constants Menu UART Private Constants
//   48   * @{
//   49   */
//   50 
//   51 #define SEND_STRING_START_COLUMN         6
//   52 #define SEND_STRING_LINE                 4
//   53 #define SEND_STRING_LINE_OFFS            8
//   54 #define RECEIVE_STRING_START_COLUMN      6
//   55 #define RECEIVE_STRING_LINE              5
//   56 #define RECEIVE_STRING_LINE_OFFS         10
//   57 
//   58 #define SEND_STRING_SIZE                 14
//   59 #define SEND_BUFFER_SIZE                 (SEND_STRING_SIZE * SEND_STRING_SIZE)
//   60 
//   61 #define RECEIVE_BUFFER_SIZE              SEND_BUFFER_SIZE
//   62 
//   63 /* FIFO DMA Interrupt levels (possible values: 2,4,8,12,14) */
//   64 #define SEND_FIFO_LVL                    4
//   65 #define RECEIVE_FIFO_LVL                 12
//   66 
//   67 /** @} */ /* End of group Menu_UART_Private_Constants */
//   68 
//   69 /** @defgroup Menu_UART_Private_Types Menu UART Private Types
//   70   * @{
//   71   */
//   72 
//   73 typedef enum {IT_On = 0, IT_Off = !IT_On} ITState;
//   74 
//   75 /** @} */ /* End of group Menu_UART_Private_Types */
//   76 
//   77 /** @defgroup Menu_UART_Private_Macros Menu UART Private Macros
//   78   * @{
//   79   */
//   80 
//   81 #define FIFO_IT_LVL_TO_UART_IT_CONST(lvl) ((lvl) == 2  ? UART_IT_FIFO_LVL_2words :  \ 
//   82                                            (lvl) == 4  ? UART_IT_FIFO_LVL_4words :  \ 
//   83                                            (lvl) == 8  ? UART_IT_FIFO_LVL_8words :  \ 
//   84                                            (lvl) == 12 ? UART_IT_FIFO_LVL_12words : \ 
//   85                                            (lvl) == 14 ? UART_IT_FIFO_LVL_14words : \ 
//   86                                            0xFFFF)    /* To invoke assert_param */
//   87 
//   88 /** @} */ /* End of group Menu_UART_Private_Macros */
//   89 
//   90 /** @defgroup Menu_UART_Private_Variables Menu UART Private Variables
//   91   * @{
//   92   */
//   93 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   94 static vuint8_t SendBuffer[SEND_BUFFER_SIZE];
SendBuffer:
        DS8 196

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   95 static vuint8_t ReceiveBuffer[RECEIVE_BUFFER_SIZE];
ReceiveBuffer:
        DS8 196
//   96 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   97 static vuint32_t send_buffer_pos = 0;
//   98 static vuint32_t receive_buffer_pos = 0;
//   99 
//  100 static vuint32_t error_flag = 0;
//  101 
//  102 static uint8_t * SendData [4] = {
//  103   "UP pressed    ",
//  104   "DOWN pressed  ",
//  105   "LEFT pressed  ",
//  106   "RIGHT pressed "
//  107 };
//  108 
//  109 static uint8_t * ErrorMessage [4] = {
//  110   "Frame error   ",
//  111   "Parity error  ",
//  112   "Break line    ",
//  113   "Overflow error"
//  114 };
//  115 
//  116 static UART_InitTypeDef UARTInitStructure;
UARTInitStructure:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0
        DC32 0
        DC32 0
        DC32 `?<Constant "UP pressed    ">`, `?<Constant "DOWN pressed  ">`
        DC32 `?<Constant "LEFT pressed  ">`, `?<Constant "RIGHT pressed ">`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
ErrorMessage:
        DATA
        DC32 `?<Constant "Frame error   ">`, `?<Constant "Parity error  ">`
        DC32 `?<Constant "Break line    ">`, `?<Constant "Overflow error">`
//  117 
//  118 /** @} */ /* End of group Menu_UART_Private_Variables */
//  119 
//  120 /** @defgroup Menu_UART_Private_Functions Menu UART Private Functions
//  121   * @{
//  122   */
//  123 
//  124 /*******************************************************************************
//  125 * Function Name  : UARTConfiguration
//  126 * Description    : Configures the UART1.
//  127 *                : Configures the HCLK division factor and RTCHSE clock for UART1.
//  128 * Input          : IT_Flag - Interrupt status. This parameter can be one of the
//  129 *                : following values: IT_On, IT_Off.
//  130 * Output         : None
//  131 * Return         : None
//  132 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void UARTConfiguration(ITState IT_Flag)
//  134 {
UARTConfiguration:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
//  135   /* Enable the RTCHSE clock on UART1 */
//  136   RST_CLK_PCLKcmd(RST_CLK_PCLK_UART1, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RST_CLK_PCLKcmd
//  137 
//  138   /* Set the UART1 HCLK division factor */
//  139   UART_BRGInit(MDR_UART1, UART_HCLKdiv1);
        LDR.W    R5,??DataTable20  ;; 0x40030000
        MOVS     R1,#+0
        MOV      R0,R5
        BL       UART_BRGInit
//  140 
//  141   UART_DeInit(MDR_UART1);
        MOV      R0,R5
        BL       UART_DeInit
//  142 
//  143   if (IT_Flag == IT_On)
        CMP      R4,#+0
        ITE      EQ 
        LDREQ.W  R0,??DataTable20_1  ;; 0xe000e100
        LDRNE.W  R0,??DataTable20_2  ;; 0xe000e180
//  144   {
//  145     /* Enable interrupt on UART1 */
//  146     NVIC_EnableIRQ(UART1_IRQn);
//  147   }
//  148   else
//  149   {
//  150     /* Disable interrupt on UART1 */
//  151     NVIC_DisableIRQ(UART1_IRQn);
        MOVS     R1,#+64
        STR      R1,[R0, #+0]
//  152   }
//  153 }
        POP      {R0,R4,R5,PC}    ;; return
//  154 
//  155 /*******************************************************************************
//  156 * Function Name  : UARTHelp
//  157 * Description    : Prints hint to the screen.
//  158 * Input          : None
//  159 * Output         : None
//  160 * Return         : None
//  161 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void UARTHelp(void)
//  163 {
UARTHelp:
        PUSH     {R4,LR}
//  164   LCD_CLS();
        BL       LCD_CLS
//  165   CurrentMethod = MET_AND;
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  166   CurrentFont = &Font_6x8;
        LDR.W    R4,??DataTable20_4
        LDR.W    R0,??DataTable20_5
        STR      R0,[R4, #+0]
//  167   LCD_PUTS(0, 0,                           "Press: DOWN, LEFT, UP");
        ADR.W    R2,`?<Constant "Press: DOWN, LEFT, UP">`
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_PUTS
//  168   LCD_PUTS(0, CurrentFont->Height + 2,     "or RIGHT keys, for   ");
        ADR.W    R2,`?<Constant "or RIGHT keys, for   ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+2
        BL       ?Subroutine2
//  169   LCD_PUTS(0, CurrentFont->Height * 2 + 4, "start sending.       ");
??CrossCallReturnLabel_7:
        ADR.W    R2,`?<Constant "start sending.       ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        ADDS     R1,R0,#+4
        BL       ?Subroutine2
//  170   LCD_PUTS(0, CurrentFont->Height * 3 + 6, "Press SEL for return.");
??CrossCallReturnLabel_6:
        ADR.W    R2,`?<Constant "Press SEL for return.">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R0, LSL #+1
        ADDS     R1,R0,#+6
        BL       ?Subroutine2
//  171 
//  172   LCD_PUTS(0, CurrentFont->Height * 4 + 8, "Send:                ");
??CrossCallReturnLabel_5:
        ADR.W    R2,`?<Constant "Send:                ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2
        ADD      R1,R0,#+8
        BL       ?Subroutine2
//  173   LCD_PUTS(0, CurrentFont->Height * 5 + 8, "Rec.:                ");
??CrossCallReturnLabel_4:
        ADR.W    R2,`?<Constant "Rec.:                ">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R0, LSL #+2
        ADD      R1,R0,#+8
        UXTB     R1,R1
        MOVS     R0,#+0
        POP      {R4,LR}
        B.W      LCD_PUTS
//  174 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        UXTB     R1,R1
        MOVS     R0,#+0
        B.W      LCD_PUTS
//  175 
//  176 
//  177 /*******************************************************************************
//  178 * Function Name  : UARTDisplayError
//  179 * Description    : Prints the message about UART error on LCD
//  180 * Input          : flags - UART flags.
//  181 * Output         : None
//  182 * Return         : None
//  183 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void UARTDisplayError(uint8_t flags)
//  185 {
UARTDisplayError:
        PUSH     {R4-R6,LR}
        MOV      R6,R0
//  186   uint32_t i, j;
//  187 
//  188   for (i = flags, j = 0; i > 0; j++, i >>= 1)
        MOVS     R4,#+0
        LDR.W    R5,??DataTable20_6
        CMP      R6,#+0
        B.N      ??UARTDisplayError_0
//  189   {
//  190     if ((i & 0x01) != 0)
??UARTDisplayError_1:
        LSLS     R0,R6,#+31
        BPL.N    ??UARTDisplayError_2
//  191     {
//  192       LCD_PUTS(CurrentFont->Width * RECEIVE_STRING_START_COLUMN,
//  193                CurrentFont->Height * RECEIVE_STRING_LINE + RECEIVE_STRING_LINE_OFFS,
//  194                ErrorMessage[j]);
        LDR.W    R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        LDR      R2,[R5, R4, LSL #+2]
        LDR      R1,[R0, #+0]
        ADD      R1,R1,R1, LSL #+2
        ADDS     R1,R1,#+10
        UXTB     R1,R1
        LDR      R0,[R0, #+4]
        MOVS     R3,#+6
        MULS     R0,R3,R0
        UXTB     R0,R0
        BL       LCD_PUTS
//  195       while (!KEY_PRESSED(SEL));
??UARTDisplayError_3:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??UARTDisplayError_3
//  196       WAIT_UNTIL_KEY_RELEASED(SEL);
??UARTDisplayError_4:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??UARTDisplayError_4
//  197     }
//  198   }
??UARTDisplayError_2:
        ADDS     R4,R4,#+1
        LSRS     R6,R6,#+1
??UARTDisplayError_0:
        BNE.N    ??UARTDisplayError_1
//  199 }
        POP      {R4-R6,PC}       ;; return
//  200 
//  201 /*******************************************************************************
//  202 * Function Name  : SenderFuncFIFODemo
//  203 * Description    : Sender interrupt handler.
//  204 * Input          : None
//  205 * Output         : None
//  206 * Return         : None
//  207 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void SenderFuncFIFODemo(void)
//  209 {
SenderFuncFIFODemo:
        PUSH     {R3-R5,LR}
//  210   if (error_flag == 0)
        LDR.W    R4,??DataTable20_7
        LDR      R0,[R4, #+24]
        CBNZ.N   R0,??SenderFuncFIFODemo_0
        LDR.N    R5,??DataTable20  ;; 0x40030000
        B.N      ??SenderFuncFIFODemo_1
//  211   {
//  212     for (; ((UART_GetFlagStatus (MDR_UART1, UART_FLAG_TXFF) == RESET) && (send_buffer_pos < SEND_BUFFER_SIZE)); send_buffer_pos++)
//  213     {
//  214       UART_SendData(MDR_UART1, SendBuffer[send_buffer_pos]);
??SenderFuncFIFODemo_2:
        LDR      R0,[R4, #+16]
        LDR.N    R1,??DataTable20_8
        LDRB     R1,[R0, R1]
        MOV      R0,R5
        BL       UART_SendData
//  215     }
        LDR      R0,[R4, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
??SenderFuncFIFODemo_1:
        MOVS     R1,#+32
        MOV      R0,R5
        BL       UART_GetFlagStatus
        CBNZ.N   R0,??SenderFuncFIFODemo_0
        LDR      R0,[R4, #+16]
        CMP      R0,#+196
        BCC.N    ??SenderFuncFIFODemo_2
//  216   }
//  217 }
??SenderFuncFIFODemo_0:
        POP      {R0,R4,R5,PC}    ;; return
//  218 
//  219 /*******************************************************************************
//  220 * Function Name  : ReceiverFuncFIFODemo
//  221 * Description    : Receiver interrupt handler.
//  222 * Input          : None
//  223 * Output         : None
//  224 * Return         : None
//  225 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  226 void ReceiverFuncFIFODemo(void)
//  227 {
ReceiverFuncFIFODemo:
        PUSH     {R3-R5,LR}
//  228   uint16_t receive_data;
//  229 
//  230   if (error_flag == 0)
        LDR.N    R4,??DataTable20_7
        LDR      R0,[R4, #+24]
        CBZ.N    R0,??ReceiverFuncFIFODemo_0
//  231   {
//  232     for (; ((UART_GetFlagStatus(MDR_UART1, UART_FLAG_RXFE) == RESET) && (receive_buffer_pos < RECEIVE_BUFFER_SIZE) && (error_flag == 0));
//  233              receive_buffer_pos++)
//  234     {
//  235       receive_data = UART_ReceiveData(MDR_UART1);
//  236 
//  237       /* Check for errors */
//  238       if (UART_Flags(receive_data) != 0)
//  239       {
//  240         /* Print appropriate messages on LCD in case of errors */
//  241         UARTDisplayError(UART_Flags(receive_data));
//  242         error_flag = 1;
//  243       }
//  244       else
//  245       {
//  246         ReceiveBuffer[receive_buffer_pos] = UART_Data(receive_data);
//  247       }
//  248     }
//  249   }
//  250 }
??ReceiverFuncFIFODemo_1:
        POP      {R0,R4,R5,PC}    ;; return
??ReceiverFuncFIFODemo_2:
        LDR      R1,[R4, #+20]
        LDR.N    R2,??DataTable20_9
        STRB     R0,[R1, R2]
??ReceiverFuncFIFODemo_3:
        LDR      R0,[R4, #+20]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+20]
??ReceiverFuncFIFODemo_0:
        LDR.N    R5,??DataTable20  ;; 0x40030000
        MOVS     R1,#+16
        MOV      R0,R5
        BL       UART_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??ReceiverFuncFIFODemo_1
        LDR      R0,[R4, #+20]
        CMP      R0,#+196
        BCS.N    ??ReceiverFuncFIFODemo_1
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??ReceiverFuncFIFODemo_1
        MOV      R0,R5
        BL       UART_ReceiveData
        LSLS     R1,R0,#+16
        LSRS     R1,R1,#+24
        BEQ.N    ??ReceiverFuncFIFODemo_2
        MOV      R0,R1
        BL       UARTDisplayError
        MOVS     R0,#+1
        STR      R0,[R4, #+24]
        B.N      ??ReceiverFuncFIFODemo_3
//  251 
//  252 /*******************************************************************************
//  253 * Function Name  : UARTwFIFOFunc
//  254 * Description    : Demonstration of UART utilization with FIFO and interrupts.
//  255 *                : Waits for joystick key press and calls sender interrupt
//  256 *                : handler to initiate send/receive process. Prints sent and
//  257 *                : received data on LCD.
//  258 * Input          : None
//  259 * Output         : None
//  260 * Return         : None
//  261 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 void UARTwFIFOFunc(void) {
UARTwFIFOFunc:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
//  263   uint8_t *pdata;
//  264   uint8_t  lcd_string[SEND_STRING_SIZE + 1];
//  265   uint32_t key, i, data_size;
//  266   uint32_t send_string_pos, receive_string_pos;
//  267 
//  268   UARTConfiguration(IT_On);
        MOVS     R0,#+0
        BL       UARTConfiguration
//  269 
//  270   /* UART1 configuration */
//  271   UARTInitStructure.UART_BaudRate                = 115200;
        LDR.N    R4,??DataTable20_7
        MOV      R0,#+115200
        STR      R0,[R4, #+0]
//  272   UARTInitStructure.UART_WordLength              = UART_WordLength8b;
        MOVS     R0,#+96
        STRH     R0,[R4, #+4]
//  273   UARTInitStructure.UART_StopBits                = UART_StopBits2;
        MOVS     R0,#+8
        STRH     R0,[R4, #+6]
//  274   UARTInitStructure.UART_Parity                  = UART_Parity_Even;
        MOVS     R0,#+6
        STRH     R0,[R4, #+8]
//  275   UARTInitStructure.UART_FIFOMode                = UART_FIFO_ON;
        MOVS     R0,#+16
        STRH     R0,[R4, #+10]
//  276   /* With LBE bit set, output line of UARTTXD transmitter becomes to be bound to
//  277    * UARTRXD receiver input */
//  278   UARTInitStructure.UART_HardwareFlowControl     = UART_HardwareFlowControl_RXE | \ 
//  279                                                    UART_HardwareFlowControl_TXE | \ 
//  280                                                    UART_HardwareFlowControl_LBE;
        MOV      R0,#+896
        STRH     R0,[R4, #+12]
        MOV      R1,R4
        LDR.N    R0,??DataTable20  ;; 0x40030000
//  281 
//  282   UART_Init (MDR_UART1,&UARTInitStructure);
        BL       UART_Init
//  283 
//  284   /* Set interrupt handlers */
//  285   pfUARTReceiverFunc = ReceiverFuncFIFODemo;
        LDR.N    R0,??DataTable20_10
        LDR.N    R1,??DataTable20_11
        STR      R1,[R0, #+0]
//  286   pfUARTSenderFunc = SenderFuncFIFODemo;
        LDR.N    R0,??DataTable20_12
        LDR.N    R1,??DataTable20_13
        STR      R1,[R0, #+0]
//  287 
//  288   /* Enable sender and receiver interrupts */
//  289   UART_ITConfig (MDR_UART1, UART_IT_TX | UART_IT_RX, ENABLE);
        MOVS     R2,#+1
        MOVS     R1,#+48
        LDR.N    R0,??DataTable20  ;; 0x40030000
        BL       UART_ITConfig
//  290 
//  291   /* Adjust sender and receiver interrupt levels */
//  292   UART_DMAConfig (MDR_UART1, FIFO_IT_LVL_TO_UART_IT_CONST(RECEIVE_FIFO_LVL),
//  293                          FIFO_IT_LVL_TO_UART_IT_CONST(SEND_FIFO_LVL));
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.N    R0,??DataTable20  ;; 0x40030000
        BL       UART_DMAConfig
//  294   /* Enable DMA interrupts */
//  295   UART_DMACmd(MDR_UART1, UART_DMA_TXE | UART_DMA_RXE, ENABLE);
        MOVS     R2,#+1
        MOVS     R1,#+3
        LDR.N    R0,??DataTable20  ;; 0x40030000
        BL       UART_DMACmd
//  296 
//  297   UART_Cmd(MDR_UART1,ENABLE);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20  ;; 0x40030000
        BL       UART_Cmd
//  298 
//  299   UARTHelp();
        BL       UARTHelp
//  300 
//  301   key = GetKey();
        BL       GetKey
        MOV      R8,R0
        LDR.W    R9,??DataTable20_4
        LDR.W    R10,??DataTable20_8
        ADD      R7,SP,#+0
        MOVS     R6,#+6
        B.N      ??UARTwFIFOFunc_0
//  302   for (; key != SEL; key = GetKey())
//  303   {
//  304     if ((key != NOKEY) && (key != MULTIPLE))
//  305     {
//  306       /* Form strings to be transmitted in the buffer.
//  307        * An algorithm is the following: copy data_size symbols
//  308        * from the corresponding SendData array element;
//  309        * fill the rest with '#' symbols. */
//  310       pdata = SendData[key - 1];
//  311       for (send_string_pos = 0, data_size = 1; send_string_pos < SEND_BUFFER_SIZE; data_size++)
//  312       {
//  313         for (i = 0; i < data_size; send_string_pos++, i++)
//  314         {
//  315           SendBuffer[send_string_pos] = pdata[i];
//  316         }
//  317         for (; ((i < SEND_STRING_SIZE) && (send_string_pos < SEND_BUFFER_SIZE)); send_string_pos++, i++)
//  318         {
//  319           SendBuffer[send_string_pos] = '#';
//  320         }
//  321       }
//  322 
//  323       error_flag = 0;
//  324 
//  325       receive_string_pos = 0;
//  326       receive_buffer_pos = 0;
//  327       send_string_pos = 0;
//  328       send_buffer_pos = 0;
//  329 
//  330       /* Initiate transmit */
//  331       SenderFuncFIFODemo();
//  332 
//  333       /* Interrupt-based processing */
//  334       while ((receive_buffer_pos < (RECEIVE_BUFFER_SIZE - RECEIVE_FIFO_LVL)) && (error_flag == 0))
//  335       {
//  336         /* Process send buffer to output transmitted strings to LCD */
//  337         if ((send_buffer_pos - send_string_pos) >= SEND_STRING_SIZE)
//  338         {
//  339           for (i = 0; i < SEND_STRING_SIZE; i++, send_string_pos++)
//  340           {
//  341             lcd_string[i] = SendBuffer[send_string_pos];
//  342           }
//  343           lcd_string[i] = 0x00;
//  344           /* Print string on LCD */
//  345           LCD_PUTS(CurrentFont->Width * (SEND_STRING_START_COLUMN),
//  346                    CurrentFont->Height * SEND_STRING_LINE + SEND_STRING_LINE_OFFS,
//  347                    lcd_string);
//  348         }
//  349 
//  350         /* Process receiver buffer to output transmitted strings to LCD */
//  351         if ((receive_buffer_pos - receive_string_pos) >= SEND_STRING_SIZE)
//  352         {
//  353           for (i = 0; i < SEND_STRING_SIZE; i++, receive_string_pos++)
//  354           {
//  355             lcd_string[i] = ReceiveBuffer[receive_string_pos];
//  356           }
//  357           lcd_string[i] = 0x00;
//  358           /* Print string on LCD */
//  359           LCD_PUTS(CurrentFont->Width * (RECEIVE_STRING_START_COLUMN),
//  360                    CurrentFont->Height * RECEIVE_STRING_LINE + RECEIVE_STRING_LINE_OFFS,
//  361                    lcd_string);
//  362         }
//  363       }
//  364       /* Print on LCD remaining strings (from send buffer) */
//  365       while ((send_buffer_pos - send_string_pos) >= SEND_STRING_SIZE)
//  366       {
//  367         for (i = 0; i < SEND_STRING_SIZE; i++, send_string_pos++)
//  368         {
//  369           lcd_string[i] = SendBuffer[send_string_pos];
//  370         }
//  371         lcd_string[i] = 0x00;
//  372         /* Print string on LCD */
//  373         LCD_PUTS(CurrentFont->Width * (SEND_STRING_START_COLUMN),
//  374                  CurrentFont->Height * SEND_STRING_LINE + SEND_STRING_LINE_OFFS,
//  375                  lcd_string);
//  376       }
//  377       /* Read data not handled by interrupts */
//  378       while ((receive_buffer_pos < RECEIVE_BUFFER_SIZE) && (error_flag == 0))
//  379       {
//  380         ReceiverFuncFIFODemo();
//  381       }
//  382       while ((receive_string_pos < receive_buffer_pos) && (error_flag == 0))
//  383       {
//  384           for (i = 0; ((i < SEND_STRING_SIZE) && (receive_string_pos < receive_buffer_pos)); i++, receive_string_pos++)
//  385           {
//  386             lcd_string[i] = ReceiveBuffer[receive_string_pos];
//  387           }
//  388           lcd_string[i] = 0x00;
//  389           /* Print string on LCD */
//  390           LCD_PUTS(CurrentFont->Width * (RECEIVE_STRING_START_COLUMN),
//  391                    CurrentFont->Height * RECEIVE_STRING_LINE + RECEIVE_STRING_LINE_OFFS,
//  392                    lcd_string);
//  393       }
//  394 
//  395     }
//  396     WAIT_UNTIL_KEY_RELEASED(key);
??UARTwFIFOFunc_1:
        BL       GetKey
        CMP      R0,R8
        BEQ.N    ??UARTwFIFOFunc_1
        BL       GetKey
        MOV      R8,R0
??UARTwFIFOFunc_0:
        CMP      R8,#+0
        BEQ.N    ??UARTwFIFOFunc_2
        CMP      R8,#+5
        IT       NE 
        CMPNE    R8,#+6
        BEQ.N    ??UARTwFIFOFunc_1
        ADD      R0,R4,R8, LSL #+2
        LDR      R1,[R0, #+24]
        MOVS     R2,#+0
        MOVS     R3,#+1
??UARTwFIFOFunc_3:
        MOVS     R0,#+0
        B.N      ??UARTwFIFOFunc_4
??UARTwFIFOFunc_5:
        LDRB     R5,[R0, R1]
        STRB     R5,[R2, R10]
        ADDS     R2,R2,#+1
        ADDS     R0,R0,#+1
??UARTwFIFOFunc_4:
        CMP      R0,R3
        BCC.N    ??UARTwFIFOFunc_5
??UARTwFIFOFunc_6:
        CMP      R0,#+14
        IT       CC 
        CMPCC    R2,#+196
        ITTTT    CC 
        MOVCC    R5,#+35
        STRBCC   R5,[R2, R10]
        ADDCC    R2,R2,#+1
        ADDCC    R0,R0,#+1
        BCC.N    ??UARTwFIFOFunc_6
        ADDS     R3,R3,#+1
        CMP      R2,#+196
        BCC.N    ??UARTwFIFOFunc_3
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
        MOVS     R5,#+0
        STR      R0,[R4, #+20]
        MOV      R11,R0
        STR      R0,[R4, #+16]
        BL       SenderFuncFIFODemo
        B.N      ??CrossCallReturnLabel_3
??UARTwFIFOFunc_7:
        LDR      R0,[R4, #+16]
        SUB      R0,R0,R11
        CMP      R0,#+14
        BCC.N    ??CrossCallReturnLabel_1
        BL       ?Subroutine5
??CrossCallReturnLabel_14:
        BL       ?Subroutine0
??CrossCallReturnLabel_1:
        LDR      R0,[R4, #+20]
        SUBS     R0,R0,R5
        CMP      R0,#+14
        BCC.N    ??CrossCallReturnLabel_3
        MOVS     R2,#+14
        LDR.N    R0,??DataTable20_9
        ADDS     R1,R5,R0
        ADD      R0,SP,#+0
        BL       __aeabi_memcpy
        ADDS     R5,R5,#+14
        MOVS     R0,#+0
        STRB     R0,[R7, #+14]
        BL       ?Subroutine1
??CrossCallReturnLabel_3:
        LDR      R0,[R4, #+20]
        CMP      R0,#+184
        BCS.N    ??UARTwFIFOFunc_8
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BEQ.N    ??UARTwFIFOFunc_7
??UARTwFIFOFunc_8:
        LDR      R0,[R4, #+16]
        SUB      R0,R0,R11
        CMP      R0,#+14
        BCC.N    ??UARTwFIFOFunc_9
        BL       ?Subroutine5
??CrossCallReturnLabel_15:
        BL       ?Subroutine0
??CrossCallReturnLabel_0:
        B.N      ??UARTwFIFOFunc_8
??UARTwFIFOFunc_10:
        BL       ReceiverFuncFIFODemo
??UARTwFIFOFunc_9:
        LDR      R0,[R4, #+20]
        CMP      R0,#+196
        BCS.N    ??UARTwFIFOFunc_11
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BEQ.N    ??UARTwFIFOFunc_10
??UARTwFIFOFunc_11:
        LDR      R0,[R4, #+20]
        CMP      R5,R0
        BCS.N    ??UARTwFIFOFunc_1
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??UARTwFIFOFunc_1
??UARTwFIFOFunc_12:
        LDR      R1,[R4, #+20]
        CMP      R5,R1
        BCS.N    ??UARTwFIFOFunc_13
        LDR.N    R1,??DataTable20_9
        LDRB     R1,[R5, R1]
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
        ADDS     R5,R5,#+1
        CMP      R0,#+14
        BCC.N    ??UARTwFIFOFunc_12
??UARTwFIFOFunc_13:
        MOVS     R1,#+0
        STRB     R1,[R0, R7]
        BL       ?Subroutine1
//  397   }
??CrossCallReturnLabel_2:
        B.N      ??UARTwFIFOFunc_11
//  398 
//  399   UART_Cmd(MDR_UART1,DISABLE);
??UARTwFIFOFunc_2:
        MOVS     R1,#+0
        LDR.N    R0,??DataTable20  ;; 0x40030000
        BL       UART_Cmd
//  400   DisplayMenu();
        BL       DisplayMenu
//  401 }
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine5:
        MOVS     R2,#+14
        ADD      R1,R11,R10
        ADD      R0,SP,#+0
        B.W      __aeabi_memcpy

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        LDR      R0,[R9, #+0]
        ADD      R2,SP,#+0
        LDR      R1,[R0, #+0]
        ADD      R1,R1,R1, LSL #+2
        ADDS     R1,R1,#+10
        UXTB     R1,R1
        LDR      R0,[R0, #+4]
        MULS     R0,R0,R6
        UXTB     R0,R0
        B.W      LCD_PUTS

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        ADD      R11,R11,#+14
        MOVS     R0,#+0
        STRB     R0,[R7, #+14]
        LDR      R0,[R9, #+0]
        ADD      R2,SP,#+0
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,#+8
        UXTB     R1,R1
        LDR      R0,[R0, #+4]
        MULS     R0,R0,R6
        UXTB     R0,R0
        B.W      LCD_PUTS
//  402 
//  403 /*******************************************************************************
//  404 * Function Name  : UARTFunc
//  405 * Description    : Demonstration of UART utilization without FIFO and interrupts.
//  406 *                : Waits for joystick key press, then sends byte-per-byte
//  407 *                : corresponding string to LCD (Send: string) and to UART1 transmitter.
//  408 *                : Reads data from UART1 receiver and prints it on LCD (Rec.: string)
//  409 *                : If error is detected, aborts the transmition.
//  410 * Input          : None
//  411 * Output         : None
//  412 * Return         : None
//  413 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  414 void UARTFunc(void) {
UARTFunc:
        PUSH     {R4-R10,LR}
//  415   uint32_t key, i;
//  416   uint8_t * pdata;
//  417   uint16_t receive_data;
//  418 
//  419   UARTConfiguration(IT_Off);
        MOVS     R0,#+1
        BL       UARTConfiguration
//  420 
//  421   /* UART1 configuration */
//  422   UARTInitStructure.UART_BaudRate                = 220;
        LDR.N    R4,??DataTable20_7
        MOVS     R0,#+220
        STR      R0,[R4, #+0]
//  423   UARTInitStructure.UART_WordLength              = UART_WordLength8b;
        MOVS     R0,#+96
        STRH     R0,[R4, #+4]
//  424   UARTInitStructure.UART_StopBits                = UART_StopBits1;
        MOVS     R0,#+0
        STRH     R0,[R4, #+6]
//  425   UARTInitStructure.UART_Parity                  = UART_Parity_No;
        STR      R0,[R4, #+8]
//  426   UARTInitStructure.UART_FIFOMode                = UART_FIFO_OFF;
//  427   /* With LBE bit set, output line of UARTTXD transmitter becomes to be bound to
//  428    * UARTRXD receiver input */
//  429   UARTInitStructure.UART_HardwareFlowControl     = UART_HardwareFlowControl_RXE | \ 
//  430                                                    UART_HardwareFlowControl_TXE | \ 
//  431                                                    UART_HardwareFlowControl_LBE;
        MOV      R0,#+896
        STRH     R0,[R4, #+12]
//  432 
//  433   UART_Init (MDR_UART1,&UARTInitStructure);
        LDR.W    R8,??DataTable20  ;; 0x40030000
        MOV      R1,R4
        MOV      R0,R8
        BL       UART_Init
//  434   UART_Cmd(MDR_UART1,ENABLE);
        MOVS     R1,#+1
        MOV      R0,R8
        BL       UART_Cmd
//  435 
//  436   UARTHelp();
        BL       UARTHelp
//  437 
//  438   key = GetKey();
        BL       GetKey
        MOVS     R10,R0
        LDR.W    R9,??DataTable20_4
        B.N      ??UARTFunc_0
//  439   for (; key != SEL; key = GetKey())
//  440   {
//  441     if ((key != NOKEY) && (key != MULTIPLE))
//  442     {
//  443       /* The receiver buffer may be non-empty, so clean it */
//  444       while (UART_GetFlagStatus (MDR_UART1, UART_FLAG_RXFF) == SET)
//  445       {
//  446         UART_ReceiveData (MDR_UART1);
//  447       }
//  448 
//  449       error_flag = 0;
//  450       for (pdata = SendData[key - 1], i = 0; ((*pdata != 0) && (error_flag == 0)); pdata++, i++)
//  451       {
//  452         LCD_PUTC(CurrentFont->Width * (SEND_STRING_START_COLUMN + i),
//  453                  CurrentFont->Height * SEND_STRING_LINE + SEND_STRING_LINE_OFFS,
//  454                  *pdata);
//  455         UART_SendData (MDR_UART1, *pdata);
//  456         /* Wait for transmition end */
//  457         while (UART_GetFlagStatus (MDR_UART1, UART_FLAG_TXFF) == SET);
//  458         while (UART_GetFlagStatus (MDR_UART1, UART_FLAG_BUSY) == SET);
//  459         /* Wait for any data in the receiver buffer */
//  460         while (UART_GetFlagStatus (MDR_UART1, UART_FLAG_RXFE) == SET);
//  461         receive_data = UART_ReceiveData (MDR_UART1);
//  462 
//  463         /* Check for errors */
//  464         if (UART_Flags(receive_data) != 0)
//  465         {
//  466           /* If there are an error, print error message on LCD */
//  467           UARTDisplayError(UART_Flags(receive_data));
//  468           error_flag = 1;
//  469         }
//  470         else
//  471         {
//  472           /* If there are no errors, print the symbol */
//  473           LCD_PUTC(CurrentFont->Width * (RECEIVE_STRING_START_COLUMN + i),
//  474                    CurrentFont->Height * RECEIVE_STRING_LINE + RECEIVE_STRING_LINE_OFFS,
//  475                    UART_Data(receive_data));
//  476         }
//  477       }
//  478     }
//  479     WAIT_UNTIL_KEY_RELEASED(key);
??UARTFunc_1:
        BL       GetKey
        CMP      R0,R10
        BEQ.N    ??UARTFunc_1
        BL       GetKey
        MOVS     R10,R0
??UARTFunc_0:
        BEQ.N    ??UARTFunc_2
        CMP      R10,#+5
        BEQ.N    ??UARTFunc_1
        CMP      R10,#+6
        BNE.N    ??UARTFunc_3
        B.N      ??UARTFunc_1
??UARTFunc_4:
        MOV      R0,R8
        BL       UART_ReceiveData
??UARTFunc_3:
        MOVS     R1,#+64
        BL       ?Subroutine4
??CrossCallReturnLabel_13:
        CMP      R0,#+1
        BEQ.N    ??UARTFunc_4
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
        ADD      R0,R4,R10, LSL #+2
        LDR      R5,[R0, #+24]
        MOVS     R6,#+0
        B.N      ??UARTFunc_5
??UARTFunc_6:
        LDR      R0,[R9, #+0]
        UXTB     R2,R2
        LDR      R1,[R0, #+0]
        ADD      R1,R1,R1, LSL #+2
        ADDS     R1,R1,#+10
        BL       ?Subroutine3
??CrossCallReturnLabel_9:
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+1
??UARTFunc_5:
        LDRB     R2,[R5, #+0]
        CMP      R2,#+0
        BEQ.N    ??UARTFunc_1
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??UARTFunc_1
        ADDS     R7,R6,#+6
        LDR      R0,[R9, #+0]
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,#+8
        BL       ?Subroutine3
??CrossCallReturnLabel_8:
        LDRB     R1,[R5, #+0]
        MOV      R0,R8
        BL       UART_SendData
??UARTFunc_7:
        MOVS     R1,#+32
        BL       ?Subroutine4
??CrossCallReturnLabel_12:
        CMP      R0,#+1
        BEQ.N    ??UARTFunc_7
??UARTFunc_8:
        MOVS     R1,#+8
        BL       ?Subroutine4
??CrossCallReturnLabel_11:
        CMP      R0,#+1
        BEQ.N    ??UARTFunc_8
??UARTFunc_9:
        MOVS     R1,#+16
        BL       ?Subroutine4
??CrossCallReturnLabel_10:
        CMP      R0,#+1
        BEQ.N    ??UARTFunc_9
        MOV      R0,R8
        BL       UART_ReceiveData
        MOV      R2,R0
        LSLS     R0,R2,#+16
        LSRS     R0,R0,#+24
        BEQ.N    ??UARTFunc_6
        BL       UARTDisplayError
        MOVS     R0,#+1
        STR      R0,[R4, #+24]
        B.N      ??CrossCallReturnLabel_9
//  480   }
//  481 
//  482   UART_Cmd(MDR_UART1,DISABLE);
??UARTFunc_2:
        MOVS     R1,#+0
        MOV      R0,R8
        BL       UART_Cmd
//  483   DisplayMenu();
        POP      {R4-R10,LR}
        B.W      DisplayMenu
//  484 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0x40030000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     ErrorMessage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     UARTInitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_8:
        DC32     SendBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_9:
        DC32     ReceiveBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_10:
        DC32     pfUARTReceiverFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_11:
        DC32     ReceiverFuncFIFODemo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_12:
        DC32     pfUARTSenderFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_13:
        DC32     SenderFuncFIFODemo

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine4:
        MOV      R0,R8
        B.W      UART_GetFlagStatus

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine3:
        UXTB     R1,R1
        LDR      R0,[R0, #+4]
        MULS     R0,R0,R7
        UXTB     R0,R0
        B.W      LCD_PUTC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Press: DOWN, LEFT, UP">`:
        DC8 "Press: DOWN, LEFT, UP"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "or RIGHT keys, for   ">`:
        DC8 "or RIGHT keys, for   "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "start sending.       ">`:
        DC8 "start sending.       "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Press SEL for return.">`:
        DC8 "Press SEL for return."
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Send:                ">`:
        DC8 "Send:                "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "Rec.:                ">`:
        DC8 "Rec.:                "
        DC8 0, 0

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
`?<Constant "UP pressed    ">`:
        DC8 "UP pressed    "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "DOWN pressed  ">`:
        DC8 "DOWN pressed  "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "LEFT pressed  ">`:
        DC8 "LEFT pressed  "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "RIGHT pressed ">`:
        DC8 "RIGHT pressed "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Frame error   ">`:
        DC8 "Frame error   "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Parity error  ">`:
        DC8 "Parity error  "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Break line    ">`:
        DC8 "Break line    "
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
`?<Constant "Overflow error">`:
        DC8 "Overflow error"
        DC8 0

        END
//  485 
//  486 /** @} */ /* End of group Menu_UART_Private_Functions */
//  487 
//  488 /** @} */ /* End of group Menu_UART */
//  489 
//  490 /** @} */ /* End of group Menu */
//  491 
//  492 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  493 
//  494 /******************* (C) COPYRIGHT 2010 Phyton *******************
//  495 *
//  496 * END OF FILE Menu_uart.c */
//  497 
//  498 
// 
//   392 bytes in section .bss
//    60 bytes in section .data
//   128 bytes in section .rodata
// 1 314 bytes in section .text
// 
// 1 314 bytes of CODE  memory
//   128 bytes of CONST memory
//   452 bytes of DATA  memory
//
//Errors: none
//Warnings: none
