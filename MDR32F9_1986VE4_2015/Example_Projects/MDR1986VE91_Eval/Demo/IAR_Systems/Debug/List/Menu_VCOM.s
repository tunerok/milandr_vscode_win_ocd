///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:59 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_VCOM.c                            /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\Menu_VCOM.c --preprocess               /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\Menu_VCOM.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Menu_VCOM

        #define SHT_PROGBITS 0x1

        EXTERN CurrentFont
        EXTERN CurrentMethod
        EXTERN DisplayMenu
        EXTERN DisplayMenuTitle
        EXTERN Font_6x8
        EXTERN GetKey
        EXTERN LCD_CLS
        EXTERN LCD_PUTS
        EXTERN PORT_Init
        EXTERN RST_CLK_CPU_PLLcmd
        EXTERN RST_CLK_CPU_PLLconfig
        EXTERN RST_CLK_CPU_PLLstatus
        EXTERN RST_CLK_CPU_PLLuse
        EXTERN RST_CLK_CPUclkPrescaler
        EXTERN RST_CLK_CPUclkSelection
        EXTERN RST_CLK_HSEconfig
        EXTERN RST_CLK_HSEstatus
        EXTERN RST_CLK_PCLKcmd
        EXTERN UART_BRGInit
        EXTERN UART_Cmd
        EXTERN UART_DeInit
        EXTERN UART_GetFlagStatus
        EXTERN UART_ITConfig
        EXTERN UART_Init
        EXTERN UART_ReceiveData
        EXTERN UART_SendData
        EXTERN USB_CDC_Init
        EXTERN USB_CDC_ReceiveStop
        EXTERN USB_CDC_Reset
        EXTERN USB_CDC_SendData
        EXTERN USB_DeviceInit
        EXTERN USB_DevicePowerOff
        EXTERN USB_DevicePowerOn
        EXTERN USB_SetSIM
        EXTERN pfUARTReceiverFunc
        EXTERN pfUARTSenderFunc

        PUBLIC USB_CDC_GetLineCoding
        PUBLIC USB_CDC_RecieveData
        PUBLIC USB_CDC_SetLineCoding
        PUBLIC USB_Clock_InitStruct
        PUBLIC USB_DeviceBUSParam
        PUBLIC VCOMFunc
        PUBLIC VCOMHelp

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\Menu_VCOM.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Menu_VCOM.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.2.0
//    6   * @date    12.09.2011
//    7   * @brief   This file contains all the "USB VCOM" menu handlers.
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
//   23 #include <MDR32F9Qx_rst_clk.h>
//   24 #include <MDR32F9Qx_uart.h>
//   25 #include <MDR32F9Qx_usb_handlers.h>
//   26 #include "systick.h"
//   27 #include "Menu.h"
//   28 #include "Menu_items.h"
//   29 #include "leds.h"
//   30 #include "lcd.h"
//   31 #include "text.h"
//   32 #include "joystick.h"
//   33 #include "demo_init.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 #include "MDR32F9Qx_it.h"
//   35 
//   36 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   37   * @{
//   38   */
//   39 
//   40 /** @addtogroup Menu Menu
//   41   * @{
//   42   */
//   43 
//   44 /** @addtogroup Menu_USB Menu USB VCOM
//   45   * @{
//   46   */
//   47 
//   48 /** @defgroup Menu_USB_Private_Constants Menu USB VCOM Private Constants
//   49   * @{
//   50   */
//   51 
//   52 #define BUFFER_LENGTH                        100
//   53 
//   54 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//   55 #define UART                                 MDR_UART2
//   56 #define RST_CLK_PCLK_UART                    RST_CLK_PCLK_UART2
//   57 #define UART_IRQn                            UART2_IRQn
//   58 #else
//   59 #define UART                                 MDR_UART1
//   60 #define RST_CLK_PCLK_UART                    RST_CLK_PCLK_UART1
//   61 #define UART_IRQn                            UART1_IRQn
//   62 #endif /* (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1) */
//   63 
//   64 /** @} */ /* End of group Menu_USB_Private_Constants */
//   65 
//   66 /** @defgroup Menu_USB_Private_Types Menu USB VCOM Private Types
//   67   * @{
//   68   */
//   69 
//   70 /** @} */ /* End of group Menu_USB_Private_Types */
//   71 
//   72 /** @defgroup Menu_USB_Private_Macros Menu USB VCOM Private Macros
//   73   * @{
//   74   */
//   75 
//   76 /** @} */ /* End of group Menu_USB_Private_Macros */
//   77 
//   78 /** @defgroup Menu_USB_Private_Variables Menu USB VCOM Private Variables
//   79   * @{
//   80   */
//   81 
//   82 static uint8_t SendBuffer[BUFFER_LENGTH];
//   83 static uint8_t ReceiveBuffer[BUFFER_LENGTH];
//   84 
//   85 static vuint32_t send_data_length = 0;
//   86 static vuint32_t send_data_pos = 0;
//   87 static vuint32_t receive_data_length = 0;
//   88 
//   89 USB_Clock_TypeDef USB_Clock_InitStruct;
//   90 USB_DeviceBUSParam_TypeDef USB_DeviceBUSParam;
//   91 
//   92 static UART_InitTypeDef UARTInitStructure;
//   93 
//   94 static uint32_t temp_CPU_CLOCK, temp_PLL_CONTROL;
//   95 
//   96 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//   97 static USB_CDC_LineCoding_TypeDef LineCoding;
LineCoding:
        DS8 8
        DS8 12
        DS8 16
USB_DeviceBUSParam:
        DS8 12
USB_Clock_InitStruct:
        DS8 8
        DS8 4
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SendBuffer:
        DS8 100
        DS8 4
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ReceiveBuffer:
        DS8 100
        DS8 4
//   98 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//   99 
//  100 #if defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1)
//  101 static MDR_PORT_TypeDef PORTB_Configuration;
//  102 #endif /* defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) */
//  103 
//  104 /** @} */ /* End of group Menu_USB_Private_Variables */
//  105 
//  106 /** @defgroup Menu_USB_Private_Functions Menu USB VCOM Private Functions
//  107   * @{
//  108   */
//  109 
//  110 /* Private function prototypes -----------------------------------------------*/
//  111 static void Setup_CPU_Clock(void);
//  112 static void Setup_USB(void);
//  113 static void UARTConfiguration(void);
//  114 static void SenderFunc(void);
//  115 static void ReceiverFunc(void);
//  116 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  117 static void LineStateFunc(uint32_t events);
//  118 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  119 
//  120 /* Private functions ---------------------------------------------------------*/
//  121 
//  122 /*******************************************************************************
//  123 * Function Name  : Setup_CPU_Clock
//  124 * Description    : Frequencies setup
//  125 * Output         : None
//  126 * Return         : USB_Result
//  127 *******************************************************************************/
//  128 static void Setup_CPU_Clock(void)
//  129 {
//  130   /* Enable HSE */
//  131   RST_CLK_HSEconfig(RST_CLK_HSE_ON);
//  132   if (RST_CLK_HSEstatus() != SUCCESS)
//  133   {
//  134     /* Trap */
//  135     while (1)
//  136     {
//  137     }
//  138   }
//  139 
//  140   /* CPU_C1_SEL = HSE */
//  141   RST_CLK_CPU_PLLconfig(RST_CLK_CPU_PLLsrcHSEdiv1, RST_CLK_CPU_PLLmul10);
//  142   RST_CLK_CPU_PLLcmd(ENABLE);
//  143   if (RST_CLK_CPU_PLLstatus() != SUCCESS)
//  144   {
//  145     /* Trap */
//  146     while (1)
//  147     {
//  148     }
//  149   }
//  150 
//  151   /* CPU_C3_SEL = CPU_C2_SEL */
//  152   RST_CLK_CPUclkPrescaler(RST_CLK_CPUclkDIV1);
//  153   /* CPU_C2_SEL = PLL */
//  154   RST_CLK_CPU_PLLuse(ENABLE);
//  155   /* HCLK_SEL = CPU_C3_SEL */
//  156   RST_CLK_CPUclkSelection(RST_CLK_CPUclkCPU_C3);
//  157 }
//  158 
//  159 /*******************************************************************************
//  160 * Function Name  : Setup_USB
//  161 * Description    : USB Device layer setup and powering on
//  162 * Output         : None
//  163 * Return         : USB_Result
//  164 *******************************************************************************/
//  165 static void Setup_USB(void)
//  166 {
//  167   /* Enables the CPU_CLK clock on USB */
//  168   RST_CLK_PCLKcmd(RST_CLK_PCLK_USB, ENABLE);
//  169 
//  170   /* Device layer initialization */
//  171   USB_Clock_InitStruct.USB_USBC1_Source = USB_C1HSEdiv2;
//  172   USB_Clock_InitStruct.USB_PLLUSBMUL    = USB_PLLUSBMUL12;
//  173 
//  174   USB_DeviceBUSParam.MODE  = USB_SC_SCFSP_Full;
//  175   USB_DeviceBUSParam.SPEED = USB_SC_SCFSR_12Mb;
//  176   USB_DeviceBUSParam.PULL  = USB_HSCR_DP_PULLUP_Set;
//  177 
//  178   USB_DeviceInit(&USB_Clock_InitStruct, &USB_DeviceBUSParam);
//  179 
//  180   /* Enable all USB interrupts */
//  181   USB_SetSIM(USB_SIS_Msk);
//  182 
//  183   USB_DevicePowerOn();
//  184 
//  185   /* Enable interrupt on USB */
//  186 #ifdef USB_INT_HANDLE_REQUIRED
//  187   NVIC_EnableIRQ(USB_IRQn);
//  188 #endif /* USB_INT_HANDLE_REQUIRED */
//  189 
//  190   USB_DEVICE_HANDLE_RESET;
//  191 }
//  192 
//  193 
//  194 /*******************************************************************************
//  195 * Function Name  : USB_CDC_RecieveData
//  196 * Description    : CDC data reception handler.
//  197 *                : Transfers received data to UART
//  198 * Output         : None
//  199 * Return         : USB_Result
//  200 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 USB_Result USB_CDC_RecieveData(uint8_t* Buffer, uint32_t Length)
//  202 {
USB_CDC_RecieveData:
        PUSH     {R7,LR}
//  203   /* Initiate UART transmission */
//  204   send_data_length = Length;
        LDR.N    R0,??DataTable8
        STR      R1,[R0, #+100]
//  205   send_data_pos = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+104]
//  206 
//  207   SenderFunc();
        BL       SenderFunc
//  208 
//  209   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  210 }
//  211 
//  212 
//  213 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//  214 
//  215 /*******************************************************************************
//  216 * Function Name  : USB_CDC_GetLineCoding
//  217 * Description    : GetLineCoding CDC request handler.
//  218 *                : Sends back current line coding settings.
//  219 * Output         : None
//  220 * Return         : USB_Result
//  221 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 USB_Result USB_CDC_GetLineCoding(uint16_t wINDEX, USB_CDC_LineCoding_TypeDef* DATA)
//  223 {
//  224   assert_param(DATA);
//  225   if (wINDEX != 0)
USB_CDC_GetLineCoding:
        CBZ.N    R0,??USB_CDC_GetLineCoding_0
//  226   {
//  227     /* Invalid interface */
//  228     return USB_ERR_INV_REQ;
        MOVS     R0,#+2
        BX       LR
//  229   }
//  230 
//  231   /* Just send back settings stored earlier */
//  232   *DATA = LineCoding;
??USB_CDC_GetLineCoding_0:
        LDR.N    R0,??DataTable8_1
        LDRD     R2,R3,[R0, #+0]
        STRD     R2,R3,[R1, #+0]
//  233 
//  234   return USB_SUCCESS;
        MOVS     R0,#+0
        BX       LR               ;; return
//  235 }
//  236 
//  237 
//  238 /*******************************************************************************
//  239 * Function Name  : USB_CDC_SetLineCoding
//  240 * Description    : SetLineCoding CDC request handler.
//  241 *                : Stores received line coding settings and adjusts UART.
//  242 * Output         : None
//  243 * Return         : USB_Result
//  244 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 USB_Result USB_CDC_SetLineCoding(uint16_t wINDEX, const USB_CDC_LineCoding_TypeDef* DATA)
//  246 {
USB_CDC_SetLineCoding:
        PUSH     {R4-R6,LR}
        MOV      R4,R1
//  247   assert_param(DATA);
//  248   if (wINDEX != 0)
        CMP      R0,#+0
        BNE.N    ??USB_CDC_SetLineCoding_0
//  249   {
//  250     /* Invalid interface */
//  251     return USB_ERR_INV_REQ;
//  252   }
//  253 
//  254   /* Adjust UART settings */
//  255 
//  256   /* Baud rate */
//  257   UARTInitStructure.UART_BaudRate = DATA->dwDTERate;
        LDR.N    R5,??DataTable8_1
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+20]
//  258 
//  259   /* Stop bits */
//  260   switch (DATA->bCharFormat)
        LDRB     R0,[R4, #+4]
        CBZ.N    R0,??USB_CDC_SetLineCoding_1
        CMP      R0,#+2
        BNE.N    ??USB_CDC_SetLineCoding_0
//  261   {
//  262     case USB_CDC_STOP_BITS1:
//  263       UARTInitStructure.UART_StopBits = UART_StopBits1;
//  264       break;
//  265     case USB_CDC_STOP_BITS2:
//  266       UARTInitStructure.UART_StopBits = UART_StopBits2;
        MOVS     R0,#+8
//  267       break;
??USB_CDC_SetLineCoding_1:
        STRH     R0,[R5, #+26]
//  268     default :
//  269       return USB_ERR_INV_REQ;
//  270   }
//  271 
//  272   /* Parity */
//  273   switch (DATA->bParityType)
        LDRB     R0,[R4, #+5]
        CBZ.N    R0,??USB_CDC_SetLineCoding_2
        CMP      R0,#+2
        BEQ.N    ??USB_CDC_SetLineCoding_3
        BCC.N    ??USB_CDC_SetLineCoding_4
        CMP      R0,#+4
        BEQ.N    ??USB_CDC_SetLineCoding_5
        BCC.N    ??USB_CDC_SetLineCoding_6
        B.N      ??USB_CDC_SetLineCoding_0
//  274   {
//  275     case USB_CDC_PARITY_NONE:
//  276       UARTInitStructure.UART_Parity = UART_Parity_No;
//  277       break;
//  278     case USB_CDC_PARITY_ODD:
//  279       UARTInitStructure.UART_Parity = UART_Parity_Odd;
??USB_CDC_SetLineCoding_4:
        MOVS     R0,#+2
//  280       break;
        B.N      ??USB_CDC_SetLineCoding_2
//  281     case USB_CDC_PARITY_EVEN:
//  282       UARTInitStructure.UART_Parity = UART_Parity_Even;
??USB_CDC_SetLineCoding_3:
        MOVS     R0,#+6
//  283       break;
        B.N      ??USB_CDC_SetLineCoding_2
//  284     case USB_CDC_PARITY_MARK:
//  285       UARTInitStructure.UART_Parity = UART_Parity_0;
??USB_CDC_SetLineCoding_6:
        MOVS     R0,#+134
//  286       break;
        B.N      ??USB_CDC_SetLineCoding_2
//  287     case USB_CDC_PARITY_SPACE:
//  288       UARTInitStructure.UART_Parity = UART_Parity_1;
??USB_CDC_SetLineCoding_5:
        MOVS     R0,#+130
//  289       break;
??USB_CDC_SetLineCoding_2:
        STRH     R0,[R5, #+28]
//  290     default :
//  291       return USB_ERR_INV_REQ;
//  292   }
//  293 
//  294   /* Data bits */
//  295   switch (DATA->bDataBits)
        LDRB     R0,[R4, #+6]
        CMP      R0,#+5
        BEQ.N    ??USB_CDC_SetLineCoding_7
        BCC.N    ??USB_CDC_SetLineCoding_0
        CMP      R0,#+7
        BEQ.N    ??USB_CDC_SetLineCoding_8
        BCC.N    ??USB_CDC_SetLineCoding_9
        CMP      R0,#+8
        BEQ.N    ??USB_CDC_SetLineCoding_10
        B.N      ??USB_CDC_SetLineCoding_0
//  296   {
//  297     case USB_CDC_DATA_BITS5:
//  298       UARTInitStructure.UART_WordLength = UART_WordLength5b;
??USB_CDC_SetLineCoding_7:
        MOVS     R0,#+0
//  299       break;
??USB_CDC_SetLineCoding_11:
        STRH     R0,[R5, #+24]
//  300     case USB_CDC_DATA_BITS6:
//  301       UARTInitStructure.UART_WordLength = UART_WordLength6b;
//  302       break;
//  303     case USB_CDC_DATA_BITS7:
//  304       UARTInitStructure.UART_WordLength = UART_WordLength7b;
//  305       break;
//  306     case USB_CDC_DATA_BITS8:
//  307       UARTInitStructure.UART_WordLength = UART_WordLength8b;
//  308       break;
//  309     default :
//  310       return USB_ERR_INV_REQ;
//  311   }
//  312 
//  313   /* Re-initialize UART */
//  314   UART_Cmd(UART, DISABLE);
        LDR.N    R6,??DataTable8_2  ;; 0x40038000
        BL       ?Subroutine0
//  315   UART_DeInit(UART);
??CrossCallReturnLabel_3:
        MOV      R0,R6
        BL       UART_DeInit
//  316   UART_Init(UART, &UARTInitStructure);
        BL       ?Subroutine1
//  317   /* Enable sender, receiver and line state interrupts */
//  318   UART_ITConfig (UART, UART_IT_TX | UART_IT_RX
//  319 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  320               | UART_LINE_STATE_EVENTS
//  321 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  322               , ENABLE);
??CrossCallReturnLabel_5:
        BL       ?Subroutine2
//  323   UART_Cmd(UART, ENABLE);
??CrossCallReturnLabel_7:
        MOVS     R1,#+1
        BL       ??Subroutine0_0
//  324 
//  325   /* On success, store new values for GetLineCoding request fastening */
//  326   LineCoding = *DATA;
??CrossCallReturnLabel_1:
        LDRD     R0,R1,[R4, #+0]
        STRD     R0,R1,[R5, #+0]
//  327 
//  328   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
??USB_CDC_SetLineCoding_9:
        MOVS     R0,#+32
        B.N      ??USB_CDC_SetLineCoding_11
??USB_CDC_SetLineCoding_8:
        MOVS     R0,#+64
        B.N      ??USB_CDC_SetLineCoding_11
??USB_CDC_SetLineCoding_10:
        MOVS     R0,#+96
        B.N      ??USB_CDC_SetLineCoding_11
??USB_CDC_SetLineCoding_0:
        MOVS     R0,#+2
        POP      {R4-R6,PC}
//  329 }
//  330 
//  331 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//  332 
//  333 #if defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1)
//  334 /*******************************************************************************
//  335 * Function Name  : PORTBSaveConfig
//  336 * Description    : Save the current PORTB configuration.
//  337 * Output         : None
//  338 * Return         : None
//  339 *******************************************************************************/
//  340 void PORTBSaveConfig(void)
//  341 {
//  342   PORTB_Configuration.ANALOG = MDR_PORTB->ANALOG;
//  343   PORTB_Configuration.FUNC   = MDR_PORTB->FUNC;
//  344   PORTB_Configuration.GFEN   = MDR_PORTB->GFEN;
//  345   PORTB_Configuration.OE     = MDR_PORTB->OE;
//  346   PORTB_Configuration.PD     = MDR_PORTB->PD;
//  347   PORTB_Configuration.PULL   = MDR_PORTB->PULL;
//  348   PORTB_Configuration.PWR    = MDR_PORTB->PWR;
//  349 }
//  350 
//  351 /*******************************************************************************
//  352 * Function Name  : PORTBRestoreConfig
//  353 * Description    : Restore saved PORTB configuration.
//  354 * Output         : None
//  355 * Return         : None
//  356 *******************************************************************************/
//  357 void PORTBRestoreConfig(void)
//  358 {
//  359   MDR_PORTB->ANALOG = PORTB_Configuration.ANALOG;
//  360   MDR_PORTB->FUNC   = PORTB_Configuration.FUNC;
//  361   MDR_PORTB->GFEN   = PORTB_Configuration.GFEN;
//  362   MDR_PORTB->OE     = PORTB_Configuration.OE;
//  363   MDR_PORTB->PD     = PORTB_Configuration.PD;
//  364   MDR_PORTB->PULL   = PORTB_Configuration.PULL;
//  365   MDR_PORTB->PWR    = PORTB_Configuration.PWR;
//  366 }
//  367 #endif /* defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) */
//  368 
//  369 
//  370 /*******************************************************************************
//  371 * Function Name  : UARTConfiguration
//  372 * Description    : Configures the UART.
//  373 *                : Configures the HCLK division factor and RTCHSE clock for UART.
//  374 * Output         : None
//  375 * Return         : None
//  376 *******************************************************************************/
//  377 static void UARTConfiguration(void)
//  378 {
//  379   /* Enable the RTCHSE clock on UART */
//  380   RST_CLK_PCLKcmd(RST_CLK_PCLK_UART, ENABLE);
//  381 
//  382   /* Set the UART HCLK division factor */
//  383   UART_BRGInit(UART, UART_HCLKdiv16);
//  384 
//  385   UART_DeInit(UART);
//  386 
//  387 #if defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1)
//  388   /* Configure PORTF pins for data transfer to/from UART */
//  389   PortInitStructure.PORT_Pin   = PORT_Pin_0 | PORT_Pin_1;
//  390   PortInitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
//  391   PortInitStructure.PORT_FUNC  = PORT_FUNC_OVERRID;
//  392   PortInitStructure.PORT_SPEED = PORT_SPEED_MAXFAST;
//  393   PORT_Init(MDR_PORTF, &PortInitStructure);
//  394 #else
//  395 #if defined (USE_MDR32F9Q2_Rev0) && !defined (USE_MDR32F9Q2_Rev1)
//  396   PORTBSaveConfig();
//  397 #endif /* defined (USE_MDR32F9Q2_Rev0) && !defined (USE_MDR32F9Q2_Rev1) */
//  398   /* Configure PORTB pins for data transfer to/from UART */
//  399   PortInitStructure.PORT_Pin   = PORT_Pin_5 | PORT_Pin_6;
//  400   PortInitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
//  401   PortInitStructure.PORT_FUNC  = PORT_FUNC_ALTER;
//  402   PortInitStructure.PORT_SPEED = PORT_SPEED_MAXFAST;
//  403   PORT_Init(MDR_PORTB, &PortInitStructure);
//  404 #endif /* defined (USE_MDR32F9Q1_Rev0) || defined (USE_MDR32F9Q1_Rev1) */
//  405 
//  406   /* Enable interrupt on UART */
//  407   NVIC_EnableIRQ(UART_IRQn);
//  408 }
//  409 
//  410 /*******************************************************************************
//  411 * Function Name  : VCOMHelp
//  412 * Description    : Prints hint to the screen.
//  413 * Input          : None
//  414 * Output         : None
//  415 * Return         : None
//  416 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  417 void VCOMHelp(void)
//  418 {
VCOMHelp:
        PUSH     {R3-R7,LR}
//  419   sFONT *OldFont = CurrentFont;
        LDR.N    R4,??DataTable8_3
        LDR      R5,[R4, #+0]
//  420   LCD_Method OldMethod = CurrentMethod;
        LDR.N    R6,??DataTable8_4
        LDRB     R7,[R6, #+0]
//  421 
//  422   LCD_CLS();
        BL       LCD_CLS
//  423   CurrentMethod = MET_AND;
        MOVS     R0,#+4
        STRB     R0,[R6, #+0]
//  424   CurrentFont = &Font_6x8;
        LDR.N    R0,??DataTable8_5
        STR      R0,[R4, #+0]
//  425   DisplayMenuTitle("MDR_USB. Virtual COM");
        ADR.W    R0,`?<Constant "MDR_USB. Virtual COM">`
        BL       DisplayMenuTitle
//  426   WAIT_UNTIL_KEY_RELEASED(SEL);
??VCOMHelp_0:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??VCOMHelp_0
//  427   LCD_PUTS(0, CurrentFont->Height * 2 + 2,     "  To stop Press SEL");
        ADR.W    R2,`?<Constant "  To stop Press SEL">`
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        ADDS     R1,R0,#+2
        UXTB     R1,R1
        MOVS     R0,#+0
        BL       LCD_PUTS
//  428 
//  429   CurrentMethod = OldMethod;
        STRB     R7,[R6, #+0]
//  430   CurrentFont = OldFont;
        STR      R5,[R4, #+0]
//  431 }
        POP      {R0,R4-R7,PC}    ;; return
//  432 
//  433 /*******************************************************************************
//  434 * Function Name  : SenderFunc
//  435 * Description    : Sender interrupt handler.
//  436 * Input          : None
//  437 * Output         : None
//  438 * Return         : None
//  439 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  440 static void SenderFunc(void)
//  441 {
SenderFunc:
        PUSH     {R3-R5,LR}
        LDR.N    R4,??DataTable8_2  ;; 0x40038000
        LDR.N    R5,??DataTable8
        B.N      ??SenderFunc_0
//  442   for (; (send_data_pos < send_data_length && (UART_GetFlagStatus (UART, UART_FLAG_TXFF) == RESET)); send_data_pos++)
//  443   {
//  444     UART_SendData(UART, SendBuffer[send_data_pos]);
??SenderFunc_1:
        LDR      R0,[R5, #+104]
        LDRB     R1,[R0, R5]
        MOV      R0,R4
        BL       UART_SendData
//  445   }
        LDR      R0,[R5, #+104]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+104]
??SenderFunc_0:
        LDR      R0,[R5, #+104]
        LDR      R1,[R5, #+100]
        CMP      R0,R1
        BCS.N    ??SenderFunc_2
        MOVS     R1,#+32
        MOV      R0,R4
        BL       UART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SenderFunc_1
//  446 }
??SenderFunc_2:
        POP      {R0,R4,R5,PC}    ;; return
//  447 
//  448 /*******************************************************************************
//  449 * Function Name  : ReceiverFunc
//  450 * Description    : Receiver interrupt handler.
//  451 * Input          : None
//  452 * Output         : None
//  453 * Return         : None
//  454 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  455 static void ReceiverFunc(void)
//  456 {
ReceiverFunc:
        PUSH     {R3-R5,LR}
//  457   uint16_t receive_data;
//  458 
//  459   /* Read data from UART */
//  460   for (receive_data_length = 0; ((UART_GetFlagStatus(UART, UART_FLAG_RXFE) == RESET) && (receive_data_length < BUFFER_LENGTH)); )
        LDR.N    R4,??DataTable8_6
        MOVS     R0,#+0
        STR      R0,[R4, #+100]
        LDR.N    R5,??DataTable8_2  ;; 0x40038000
        B.N      ??ReceiverFunc_0
//  461   {
//  462     receive_data = UART_ReceiveData(UART);
??ReceiverFunc_1:
        MOV      R0,R5
        BL       UART_ReceiveData
//  463 
//  464     if (UART_Flags(receive_data) == 0)
        LSLS     R1,R0,#+16
        LSRS     R1,R1,#+24
        BNE.N    ??ReceiverFunc_0
//  465     {
//  466       ReceiveBuffer[receive_data_length++] = UART_Data(receive_data);
        LDR      R1,[R4, #+100]
        ADDS     R2,R1,#+1
        STR      R2,[R4, #+100]
        STRB     R0,[R1, R4]
//  467     }
//  468   }
??ReceiverFunc_0:
        MOVS     R1,#+16
        MOV      R0,R5
        BL       UART_GetFlagStatus
        CBNZ.N   R0,??ReceiverFunc_2
        LDR      R0,[R4, #+100]
        CMP      R0,#+100
        BCC.N    ??ReceiverFunc_1
//  469   /* Initiate data portion sending via USB */
//  470   USB_CDC_SendData(ReceiveBuffer, receive_data_length);
??ReceiverFunc_2:
        LDR      R1,[R4, #+100]
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
        B.W      USB_CDC_SendData
//  471 }
//  472 
//  473 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  474 /*******************************************************************************
//  475 * Function Name  : LineStateFunc
//  476 * Description    : Line state event interrupt handler.
//  477 * Input          : None
//  478 * Output         : None
//  479 * Return         : None
//  480 *******************************************************************************/
//  481 static void LineStateFunc(uint32_t events)
//  482 {
//  483   uint16_t lineState = 0;
//  484   if (events & UART_IT_OE)
//  485   {
//  486   lineState |= USB_CDC_bOverRun;
//  487   }
//  488   if (events & UART_IT_BE)
//  489   {
//  490   lineState |= USB_CDC_bBreak;
//  491   }
//  492   if (events & UART_IT_PE)
//  493   {
//  494   lineState |= USB_CDC_bParity;
//  495   }
//  496   if (events & UART_IT_FE)
//  497   {
//  498   lineState |= USB_CDC_bFraming;
//  499   }
//  500   if (events & UART_IT_DSR)
//  501   {
//  502   lineState |= USB_CDC_bTxCarrier;
//  503   }
//  504   if (events & UART_IT_DCD)
//  505   {
//  506   lineState |= USB_CDC_bRxCarrier;
//  507   }
//  508   if (events & UART_IT_RI)
//  509   {
//  510   lineState |= USB_CDC_bRingSignal;
//  511   }
//  512 
//  513   if (lineState)
//  514   {
//  515     USB_CDC_ReportState(lineState);
//  516   }
//  517 }
//  518 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  519 
//  520 /*******************************************************************************
//  521 * Function Name  : VCOMFunc
//  522 * Description    : Demonstration of USB-to-UART VCOM bridge.
//  523 *                : Displays prompt on LCD, enables the bridge and waits for
//  524 *                : joystick SEL key pressed to stop bridging and return
//  525 *                : to main menu.
//  526 * Input          : None
//  527 * Output         : None
//  528 * Return         : None
//  529 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  530 void VCOMFunc(void) {
VCOMFunc:
        PUSH     {R3-R7,LR}
//  531   uint32_t key;
//  532 
//  533   /* Display prompt */
//  534   VCOMHelp();
        BL       VCOMHelp
//  535 
//  536   /* Save current CPU CLOCK configuration */
//  537   temp_CPU_CLOCK   = MDR_RST_CLK->CPU_CLOCK;
        LDR.N    R4,??DataTable8_7  ;; 0x40020004
        LDR.N    R5,??DataTable8_1
        LDR      R0,[R4, #+8]
        STR      R0,[R5, #+56]
//  538   temp_PLL_CONTROL = MDR_RST_CLK->PLL_CONTROL;
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+60]
//  539 
//  540   Setup_CPU_Clock();
        MOVS     R0,#+1
        BL       RST_CLK_HSEconfig
        BL       RST_CLK_HSEstatus
        CMP      R0,#+1
        BEQ.N    ??VCOMFunc_0
??VCOMFunc_1:
        B.N      ??VCOMFunc_1
??VCOMFunc_0:
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       RST_CLK_CPU_PLLconfig
        MOVS     R0,#+1
        BL       RST_CLK_CPU_PLLcmd
        BL       RST_CLK_CPU_PLLstatus
        CMP      R0,#+1
        BEQ.N    ??VCOMFunc_2
??VCOMFunc_3:
        B.N      ??VCOMFunc_3
??VCOMFunc_2:
        MOVS     R0,#+0
        BL       RST_CLK_CPUclkPrescaler
        MOVS     R0,#+1
        BL       RST_CLK_CPU_PLLuse
        MOV      R0,#+256
        BL       RST_CLK_CPUclkSelection
//  541 
//  542   UARTConfiguration();
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       RST_CLK_PCLKcmd
        LDR.N    R6,??DataTable8_2  ;; 0x40038000
        MOVS     R1,#+4
        MOV      R0,R6
        BL       UART_BRGInit
        MOV      R0,R6
        BL       UART_DeInit
        MOVS     R0,#+3
        STRH     R0,[R5, #+8]
        MOVS     R0,#+1
        STRB     R0,[R5, #+18]
        MOVS     R0,#+3
        STRB     R0,[R5, #+16]
        STRB     R0,[R5, #+17]
        ADD      R1,R5,#+8
        LDR.N    R0,??DataTable8_8  ;; 0x400e8000
        BL       PORT_Init
        LDR.N    R7,??DataTable8_9  ;; 0xe000e100
        MOVS     R0,#+128
        STR      R0,[R7, #+0]
//  543 
//  544   /* CDC layer initialization */
//  545   USB_CDC_Init(SendBuffer, 1, SET);
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8
        BL       USB_CDC_Init
//  546 
//  547   /* UART configuration */
//  548   UARTInitStructure.UART_BaudRate                = 14400;
        MOV      R0,#+14400
        STR      R0,[R5, #+20]
//  549   UARTInitStructure.UART_WordLength              = UART_WordLength8b;
        MOVS     R0,#+96
        STRH     R0,[R5, #+24]
//  550   UARTInitStructure.UART_StopBits                = UART_StopBits1;
        MOVS     R0,#+0
        STRH     R0,[R5, #+26]
//  551   UARTInitStructure.UART_Parity                  = UART_Parity_No;
        STR      R0,[R5, #+28]
//  552   UARTInitStructure.UART_FIFOMode                = UART_FIFO_OFF;
//  553   UARTInitStructure.UART_HardwareFlowControl     = UART_HardwareFlowControl_RXE | \ 
//  554                                                    UART_HardwareFlowControl_TXE;
        MOV      R0,#+768
        STRH     R0,[R5, #+32]
//  555   /* With LBE bit set, output line of UARTTXD transmitter becomes to be bound to
//  556    * UARTRXD receiver input. In order to run this example with UART physically
//  557    * connected to PC, just comment this line */
//  558 /*  UARTInitStructure.UART_HardwareFlowControl     |= UART_HardwareFlowControl_LBE; */
//  559 
//  560   UART_Init (UART,&UARTInitStructure);
        BL       ?Subroutine1
//  561 
//  562 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//  563   /* Set line coding initial settings accordingly to UART ones above */
//  564   LineCoding.dwDTERate = UARTInitStructure.UART_BaudRate;
??CrossCallReturnLabel_4:
        LDR      R0,[R5, #+20]
        STR      R0,[R5, #+0]
//  565   LineCoding.bCharFormat = USB_CDC_STOP_BITS1;
        MOVS     R0,#+0
        STRH     R0,[R5, #+4]
//  566   LineCoding.bParityType = USB_CDC_PARITY_NONE;
//  567   LineCoding.bDataBits = USB_CDC_DATA_BITS8;
        MOVS     R0,#+8
        STRB     R0,[R5, #+6]
//  568 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//  569 
//  570   /* Set interrupt handlers */
//  571   pfUARTReceiverFunc = ReceiverFunc;
        LDR.N    R0,??DataTable8_10
        LDR.N    R1,??DataTable8_11
        STR      R1,[R0, #+0]
//  572   pfUARTSenderFunc = SenderFunc;
        LDR.N    R0,??DataTable8_12
        LDR.N    R1,??DataTable8_13
        STR      R1,[R0, #+0]
//  573 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  574   pfUARTLineStateFunc = LineStateFunc;
//  575 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  576 
//  577   /* Enable sender, receiver and line state interrupts */
//  578   UART_ITConfig (UART, UART_IT_TX | UART_IT_RX
//  579 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  580               | UART_LINE_STATE_EVENTS
//  581 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  582               , ENABLE);
        BL       ?Subroutine2
//  583 
//  584   /* Enable bridge */
//  585   UART_Cmd(UART, ENABLE);
??CrossCallReturnLabel_6:
        MOVS     R1,#+1
        BL       ??Subroutine0_0
//  586   Setup_USB();
??CrossCallReturnLabel_0:
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RST_CLK_PCLKcmd
        MOVS     R0,#+3
        STR      R0,[R5, #+48]
        MOVS     R0,#+11
        STR      R0,[R5, #+52]
        MOVS     R0,#+16
        STR      R0,[R5, #+44]
        MOVS     R0,#+32
        STR      R0,[R5, #+40]
        MOVS     R0,#+16
        STR      R0,[R5, #+36]
        ADD      R1,R5,#+36
        ADD      R0,R5,#+48
        BL       USB_DeviceInit
        MOVS     R0,#+31
        BL       USB_SetSIM
        BL       USB_DevicePowerOn
        MOVS     R0,#+4
        STR      R0,[R7, #+0]
        BL       USB_CDC_Reset
//  587 
//  588   /* Wait for SEL to quit */
//  589   key = GetKey();
//  590   for (; key != SEL; key = GetKey())
??VCOMFunc_4:
        BL       GetKey
        CMP      R0,#+0
        BNE.N    ??VCOMFunc_4
//  591   {
//  592   }
//  593   WAIT_UNTIL_KEY_RELEASED(SEL);
??VCOMFunc_5:
        BL       GetKey
        CMP      R0,#+0
        BEQ.N    ??VCOMFunc_5
//  594 
//  595   /* Disable bridge */
//  596   UART_Cmd(UART, DISABLE);
        BL       ?Subroutine0
//  597 #if defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1)
//  598   PORTBRestoreConfig();
//  599 #endif /* defined (USE_MDR32F9Q2_Rev0) || defined (USE_MDR32F9Q2_Rev1) */
//  600   USB_CDC_ReceiveStop();
??CrossCallReturnLabel_2:
        BL       USB_CDC_ReceiveStop
//  601   USB_DevicePowerOff();
        BL       USB_DevicePowerOff
//  602 
//  603   /* Restore original CPU CLOCK configuration */
//  604   MDR_RST_CLK->CPU_CLOCK   = temp_CPU_CLOCK;
        LDR      R0,[R5, #+56]
        STR      R0,[R4, #+8]
//  605   MDR_RST_CLK->PLL_CONTROL = temp_PLL_CONTROL;
        LDR      R0,[R5, #+60]
        STR      R0,[R4, #+0]
//  606 
//  607   DisplayMenu();
        POP      {R0,R4-R7,LR}
        B.W      DisplayMenu
//  608 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     SendBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     LineCoding

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     CurrentFont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     CurrentMethod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     Font_6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     ReceiveBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x400e8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     pfUARTReceiverFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     ReceiverFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     pfUARTSenderFunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     SenderFunc

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOVS     R2,#+1
        MOVS     R1,#+48
        MOV      R0,R6
        B.W      UART_ITConfig

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        ADD      R1,R5,#+20
        MOV      R0,R6
        B.W      UART_Init

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        MOVS     R1,#+0
??Subroutine0_0:
        MOV      R0,R6
        B.W      UART_Cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "MDR_USB. Virtual COM">`:
        DC8 "MDR_USB. Virtual COM"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
`?<Constant "  To stop Press SEL">`:
        DC8 "  To stop Press SEL"

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  609 
//  610 
//  611 /** @} */ /* End of group Menu_USB_Private_Functions */
//  612 
//  613 /** @} */ /* End of group Menu_USB */
//  614 
//  615 /** @} */ /* End of group Menu */
//  616 
//  617 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  618 
//  619 /******************* (C) COPYRIGHT 2011 Phyton *******************
//  620 *
//  621 * END OF FILE Menu_VCOM.c */
//  622 
// 
// 276 bytes in section .bss
// 778 bytes in section .text
// 
// 778 bytes of CODE memory
// 276 bytes of DATA memory
//
//Errors: none
//Warnings: 1
