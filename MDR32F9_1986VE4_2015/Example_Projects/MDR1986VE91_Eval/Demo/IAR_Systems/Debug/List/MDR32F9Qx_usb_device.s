///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:59 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\USB_Library\MDR32F9Qx_usb_device.c  /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\USB_Library\MDR32F9Qx_usb_device.c  /
//                    --preprocess C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_ /
//                    Projects\MDR1986VE91_Eval\Demo\IAR_Systems\Debug\List\  /
//                    -lCN C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects /
//                    \MDR1986VE91_Eval\Demo\IAR_Systems\Debug\List\ -lB      /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_usb_ /
//                    device.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_usb_device

        #define SHT_PROGBITS 0x1

        EXTERN USB_BRGInit
        EXTERN USB_CDC_ClassRequest
        EXTERN USB_CDC_GetDescriptor
        EXTERN USB_GetSEPxCTRL
        EXTERN USB_GetSEPxRXFD
        EXTERN USB_GetSEPxRXFDC
        EXTERN USB_GetSEPxSTS
        EXTERN USB_GetSEPxTS
        EXTERN USB_GetSIS
        EXTERN USB_Reset
        EXTERN USB_SEPxToggleEPDATASEQ
        EXTERN USB_SetHSCR
        EXTERN USB_SetSA
        EXTERN USB_SetSC
        EXTERN USB_SetSEPxCTRL
        EXTERN USB_SetSEPxRXFC
        EXTERN USB_SetSEPxTXFD
        EXTERN USB_SetSEPxTXFDC
        EXTERN USB_SetSIS

        PUBLIC USB_CurrentSetupPacket
        PUBLIC USB_DeviceClearFeature
        PUBLIC USB_DeviceContext
        PUBLIC USB_DeviceDispatchEvent
        PUBLIC USB_DeviceDoStatusInAck
        PUBLIC USB_DeviceDoStatusOutAck
        PUBLIC USB_DeviceDummyClassRequest
        PUBLIC USB_DeviceDummyDataError
        PUBLIC USB_DeviceDummyGetConfiguration
        PUBLIC USB_DeviceDummyGetDescriptor
        PUBLIC USB_DeviceDummyGetInterface
        PUBLIC USB_DeviceDummyGetStatus
        PUBLIC USB_DeviceDummySetAddress
        PUBLIC USB_DeviceDummySetConfiguration
        PUBLIC USB_DeviceDummySetDescriptor
        PUBLIC USB_DeviceDummySetInterface
        PUBLIC USB_DeviceDummySyncFrame
        PUBLIC USB_DeviceDummyVendorRequest
        PUBLIC USB_DeviceInit
        PUBLIC USB_DevicePowerOff
        PUBLIC USB_DevicePowerOn
        PUBLIC USB_DeviceReset
        PUBLIC USB_DeviceResume
        PUBLIC USB_DeviceSetFeature
        PUBLIC USB_DeviceSetupPacket
        PUBLIC USB_DeviceSuspend
        PUBLIC USB_EPContext
        PUBLIC USB_EP_Idle
        PUBLIC USB_EP_Init
        PUBLIC USB_EP_Reset
        PUBLIC USB_EP_Stall
        PUBLIC USB_EP_dispatchEvent
        PUBLIC USB_EP_doDataIn
        PUBLIC USB_EP_doDataOut
        PUBLIC USB_EP_setSetupHandler
        PUBLIC USB_IRQHandler

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\USB_Library\MDR32F9Qx_usb_device.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    USB_Library\MDR32F9Qx_usb_device.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    21/02/2011
//    7   * @brief   This file contains implementation of the EndPoint and Device basic
//    8   *          functionality as of USB Specification Rev.2 Chapter 9.
//    9   ******************************************************************************
//   10   * <br><br>
//   11   *
//   12   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   13   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   14   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   15   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   16   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   17   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   18   *
//   19   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   20   ******************************************************************************
//   21   * FILE MDR32F9Qx_usb_device.c
//   22   */
//   23 
//   24 /* Includes ------------------------------------------------------------------*/
//   25 /* Includes ------------------------------------------------------------------*/
//   26 #include "MDR32F9Qx_config.h"
//   27 #include "MDR32F9Qx_rst_clk.h"
//   28 #include "MDR32F9Qx_usb_handlers.h"
//   29 
//   30 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_USB_DEVICE_C
//   31 
//   32 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   33   * @{
//   34   */
//   35 
//   36 /** @addtogroup USB_DEVICE_AND_CDC USB DEVICE AND CDC
//   37   * @{
//   38   */
//   39 
//   40 /** @defgroup USB_Device_Framework_Private_Types USB Device Framework Private Types
//   41   * @{
//   42   */
//   43 
//   44 /** @} */ /* End of group USB_Device_Framework_Private_Types */
//   45 
//   46 /** @defgroup USB_EndPoint USB EndPoint
//   47   * @{
//   48   */
//   49 
//   50 /** @defgroup USB_EndPoint_Private_Types USB EndPoint Private Types
//   51   * @{
//   52   */
//   53 
//   54 /**
//   55   * @brief EndPoint States
//   56   */
//   57 
//   58 typedef enum
//   59 {
//   60   USB_EP_NAK,
//   61   USB_EP_IDLE,
//   62   USB_EP_IN,
//   63   USB_EP_OUT,
//   64   USB_EP_SETUP,
//   65   USB_EP_STALL
//   66 }USB_EPState_TypeDef;
//   67 
//   68 /**
//   69   * @brief EndPoint State Machine Context type
//   70   */
//   71 
//   72 typedef struct
//   73 {
//   74   USB_EPState_TypeDef EP_State;
//   75   USB_StallType EP_Halt;
//   76   struct
//   77   {
//   78     struct
//   79     {
//   80       /* IN-OUT transactions buffer */
//   81       uint8_t *pBuffer;
//   82       uint32_t length, offset;
//   83       uint32_t bytesToAck;        /* number of bytes sent to host in
//   84                                      IN transaction but not acknowledged yet */
//   85     }IO_Buffer;
//   86     /* SETUP-transaction */
//   87     USB_SetupPacket_TypeDef *pSetupPacket;
//   88   }Buffer;
//   89   FlagStatus EP_WasScdone;
//   90   FlagStatus EP_WaitOut, EP_WaitSetup;
//   91   USB_EP_IO_Handler InHandler;
//   92   USB_EP_IO_Handler OutHandler;
//   93   USB_EP_Setup_Handler SetupHandler;
//   94   USB_EP_Error_Handler ErrorHandler;
//   95 }USB_EPContext_TypeDef;
//   96 
//   97 /**
//   98   * @brief DATA bit change control
//   99   */
//  100 
//  101 typedef enum
//  102 {
//  103   USB_DATA_BIT_KEEP,
//  104   USB_DATA_BIT_TOGGLE,
//  105   USB_DATA_BIT_DATA1,
//  106 }USB_EPData_Bit_TypeDef;
//  107 
//  108 /** @} */ /* End of group USB_EndPoint_Private_Types */
//  109 
//  110 /** @defgroup USB_EndPoint_Private_Values USB EndPoint Private Values
//  111   * @{
//  112   */
//  113 
//  114 /**
//  115   * @brief EndPoint State Machine Context
//  116   */
//  117 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  118 USB_EPContext_TypeDef USB_EPContext[Num_USB_EndPoints];
USB_EPContext:
        DS8 176
//  119 
//  120 /** @} */ /* End of group USB_EndPoint_Private_Values */
//  121 
//  122 /** @defgroup USB_EndPoint_Private_Constants USB EndPoint Private Constants
//  123   * @{
//  124   */
//  125 
//  126 /** @} */ /* End of group USB_EndPoint_Private_Constants */
//  127 
//  128 /** @defgroup USB_EndPoint_Private_Macros USB EndPoint Private Macros
//  129   * @{
//  130   */
//  131 
//  132 #define TX_FIFO_FORCE_EMPTY(EndPoint)        USB_SetSEPxTXFDC(EndPoint, 1)
//  133 #define RX_FIFO_FORCE_EMPTY(EndPoint)        USB_SetSEPxRXFC(EndPoint, 1)
//  134 #define EPx_RX_FIFO_DATA(EndPoint)           USB_GetSEPxRXFD(EndPoint)
//  135 
//  136 /** @} */ /* End of group USB_EndPoint_Private_Macros */
//  137 
//  138 /** @defgroup USB_EndPoint_Private_FunctionPrototypes USB EndPoint Private Function Prototypes
//  139   * @{
//  140   */
//  141 
//  142 static void USB_EP_sendInDataPortion(USB_EP_TypeDef EPx, USB_EPData_Bit_TypeDef DataBitChange);
//  143 static void USB_EP_SetReady(USB_EP_TypeDef EPx, uint32_t val);
//  144 
//  145 /** @} */ /* End of group USB_EndPoint_Private_FunctionPrototypes */
//  146 
//  147 /** @defgroup USB_EndPoint_Private_Functions USB EndPoint Private Functions
//  148   * @{
//  149   */
//  150 
//  151 /**
//  152   * @brief  Initial EndPoint setup
//  153   *
//  154   * @param  EPx: USB EndPoint number.
//  155   *         This parameter can be one of the following values:
//  156   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  157   * @param  USB_EP_Ctrl: Value, controlling EPISOEN, EPDATASEQ bits
//  158   *         of corresponding USB_SEPx.CTRL register.
//  159   * @param  onError: User's handler to be called on any error with data transmitting
//  160   *                   via this End Point (may be 0).
//  161   *
//  162   * @retval USB_Result status (USB_SUCCESS or USB_ERROR).
//  163   */
//  164 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 USB_Result USB_EP_Init(USB_EP_TypeDef EPx, uint32_t USB_EP_Ctrl, USB_EP_Error_Handler onError)
//  166 {
USB_EP_Init:
        PUSH     {R4,LR}
//  167   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        BL       ?Subroutine2
//  168 
//  169   /* EndPoint context preparation */
//  170   ep->Buffer.IO_Buffer.pBuffer    = 0;
??CrossCallReturnLabel_3:
        MOVS     R4,#+0
        STR      R4,[R3, #+4]
//  171   ep->Buffer.IO_Buffer.length     = 0;
        STR      R4,[R3, #+8]
//  172   ep->Buffer.IO_Buffer.bytesToAck = 0;
        STR      R4,[R3, #+16]
//  173   ep->Buffer.IO_Buffer.offset     = 0;
        STR      R4,[R3, #+12]
//  174   ep->Buffer.pSetupPacket         = 0;
        STR      R4,[R3, #+20]
//  175   ep->InHandler                   = 0;
        STR      R4,[R3, #+28]
//  176   ep->OutHandler                  = 0;
        STR      R4,[R3, #+32]
//  177   ep->SetupHandler                = 0;
        STR      R4,[R3, #+36]
//  178   ep->ErrorHandler                = onError;
        STR      R2,[R3, #+40]
//  179   ep->EP_Halt                     = USB_STALL_PROTO;
        STRB     R4,[R3, #+1]
//  180   ep->EP_State                    = USB_EP_NAK;
        STRB     R4,[R3, #+0]
//  181   ep->EP_WasScdone                = RESET;
        STRB     R4,[R3, #+24]
//  182 
//  183   USB_SetSEPxCTRL(EPx, USB_EP_Ctrl);
        BL       USB_SetSEPxCTRL
//  184 
//  185   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  186 }
//  187 
//  188 /**
//  189   * @brief  Resets the EndPoint to NAK state
//  190   *
//  191   * @param  EPx: USB EndPoint number.
//  192   *         This parameter can be one of the following values:
//  193   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  194   *
//  195   * @retval USB_Result.
//  196   */
//  197 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  198 USB_Result USB_EP_Reset(USB_EP_TypeDef EPx)
//  199 {
USB_EP_Reset:
        PUSH     {R7,LR}
//  200   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        MOVS     R1,#+44
        LDR.W    R2,??DataTable13
        MLA      R1,R1,R0,R2
//  201 
//  202   ep->EP_State = USB_EP_NAK;
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  203   ep->EP_WasScdone = RESET;
        STRB     R2,[R1, #+24]
//  204 
//  205   USB_SetSEPxCTRL(EPx, USB_SEPx_CTRL_EPISOEN_Reset  |                           /* Reset Isohronic */
//  206                        USB_SEPx_CTRL_EPRDY_NotReady |                           /* Reset READY */
//  207                        USB_SEPx_CTRL_EPEN_Enable);                              /* Set ENABLE */
        LDR.W    R1,??DataTable13_1  ;; 0x120001
        BL       USB_SetSEPxCTRL
//  208 
//  209   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  210 }
//  211 
//  212 /**
//  213   * @brief  Switches the EndPoint to IDLE (wait for transaction) or NAK state
//  214   *
//  215   * @param  EPx: USB EndPoint number.
//  216   *         This parameter can be one of the following values:
//  217   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  218   *
//  219   * @retval USB_Result.
//  220   *
//  221   * @note   IDLE state and EPRDY bit are set if OUT/SETUP transaction is expected.
//  222   *         Otherwise, this function switches to NAK state.
//  223   */
//  224 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 USB_Result USB_EP_Idle(USB_EP_TypeDef EPx)
//  226 {
USB_EP_Idle:
        PUSH     {R7,LR}
//  227   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        MOVS     R1,#+44
        LDR.W    R2,??DataTable13
        MLA      R2,R1,R0,R2
//  228   uint32_t val = USB_SEPx_CTRL_EPSSTALL_NotReply;                               /* Reset STALL reply */
        MOV      R1,#+524288
//  229 
//  230   if (ep->EP_WaitOut || ep->EP_WaitSetup)
        LDRB     R3,[R2, #+25]
        CMP      R3,#+0
        ITTEE    EQ 
        LDRBEQ   R3,[R2, #+26]
        CMPEQ    R3,#+0
        MOVNE    R3,#+1
        LDRNE.W  R1,??DataTable13_2  ;; 0x80002
//  231   {
//  232     ep->EP_State = USB_EP_IDLE;
//  233     val |= USB_SEPx_CTRL_EPRDY_Ready;                                           /* Set READY */
//  234   }
//  235   else
//  236   {
//  237     ep->EP_State = USB_EP_NAK;
        STRB     R3,[R2, #+0]
//  238   }
//  239   ep->EP_Halt = USB_STALL_PROTO;
        MOVS     R3,#+0
        STRB     R3,[R2, #+1]
//  240 
//  241   USB_EP_SetReady(EPx, val);
        BL       USB_EP_SetReady
//  242 
//  243   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  244 }
//  245 
//  246 /**
//  247   * @brief  Switches the EndPoint to STALL state (protocol stall
//  248   *         or halt) or NAK state, if STALL is prohibited.
//  249   *
//  250   * @param  EPx: USB EndPoint number.
//  251   *         This parameter can be one of the following values:
//  252   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  253   *
//  254   * @param  bHalt: Specifies whether the STALL state is a HALT
//  255   *         This parameter can be: USB_STALL_PROTO or USB_STALL_HALT.
//  256   *
//  257   * @retval USB_Result.
//  258   *
//  259   * @note   If protocol stall is ordered, but the EndPoint doesn't accept
//  260   *         SETUP transactions, EndPoint is switched to NAK state.
//  261   */
//  262 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 USB_Result USB_EP_Stall(USB_EP_TypeDef EPx, USB_StallType bHalt)
//  264 {
USB_EP_Stall:
        PUSH     {R4,LR}
//  265   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        MOVS     R2,#+44
        LDR.W    R3,??DataTable13
        MLA      R3,R2,R0,R3
//  266   uint32_t val = 0;
        MOVS     R2,#+0
//  267 
//  268   if (bHalt == USB_STALL_HALT && EPx == USB_EP0)
        CMP      R1,#+1
        BNE.N    ??USB_EP_Stall_0
        CBNZ.N   R0,??USB_EP_Stall_1
//  269   {
//  270     /* No functional stall for Default Control Pipe */
//  271     return USB_ERROR;
        MOVS     R0,#+1
        POP      {R4,PC}
//  272   }
//  273 
//  274   if (bHalt == USB_STALL_HALT || ep->EP_WaitSetup)
??USB_EP_Stall_0:
        LDRB     R4,[R3, #+26]
        CBZ.N    R4,??USB_EP_Stall_2
//  275   {
//  276     ep->EP_Halt  = bHalt;
??USB_EP_Stall_1:
        STRB     R1,[R3, #+1]
//  277     ep->EP_State = USB_EP_STALL;
        MOVS     R1,#+5
        STRB     R1,[R3, #+0]
//  278     val = USB_SEPx_CTRL_EPSSTALL_Reply |                                          /* Set STALL reply */
//  279           USB_SEPx_CTRL_EPRDY_Ready;                                              /* Set READY */
        MOVS     R2,#+10
//  280   }
//  281 
//  282   USB_EP_SetReady(EPx, val);
??USB_EP_Stall_2:
        MOV      R1,R2
        BL       USB_EP_SetReady
//  283 
//  284   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  285 }
//  286 
//  287 /**
//  288   * @brief  Indicates that there is data to be sent to the host by this
//  289   *         EndPoint with one or several IN-transactions.
//  290   *
//  291   * @param  EPx: USB EndPoint number.
//  292   *         This parameter can be one of the following values:
//  293   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  294   *
//  295   * @param  Buffer: Pointer to the user's buffer with data to be sent.
//  296   *
//  297   * @param  Length: Length of data.
//  298   *
//  299   * @param  onInDone: User's handler to be called when data transfer is
//  300   *                   successfully complete (may be 0).
//  301   *
//  302   * @retval USB_Result.
//  303   */
//  304 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  305 USB_Result USB_EP_doDataIn(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length, USB_EP_IO_Handler onInDone)
//  306 {
USB_EP_doDataIn:
        PUSH     {R3-R5,LR}
//  307   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        MOVS     R4,#+44
        LDR.W    R5,??DataTable13
        MLA      R5,R4,R0,R5
//  308   /* Setup IN Data stage starts with DATA1 */
//  309   USB_EPData_Bit_TypeDef StartInStage = (ep->EP_WaitSetup ? USB_DATA_BIT_DATA1 : USB_DATA_BIT_TOGGLE);
        LDRB     R4,[R5, #+26]
        CMP      R4,#+0
        ITE      NE 
        MOVNE    R4,#+2
        MOVEQ    R4,#+1
//  310 
//  311   /* Set EndPoint context */
//  312   ep->Buffer.IO_Buffer.pBuffer    = Buffer;
        STR      R1,[R5, #+4]
//  313   ep->Buffer.IO_Buffer.length     = Length;
        STR      R2,[R5, #+8]
//  314   ep->Buffer.IO_Buffer.bytesToAck = MAX_PACKET_SIZE;
        MOVS     R1,#+32
        STR      R1,[R5, #+16]
//  315   ep->Buffer.IO_Buffer.offset     = 0;
        MOVS     R1,#+0
        STR      R1,[R5, #+12]
//  316   ep->InHandler                   = onInDone;
        STR      R3,[R5, #+28]
//  317   ep->EP_State                    = USB_EP_IN;
        MOVS     R1,#+2
        STRB     R1,[R5, #+0]
//  318 
//  319   /* Send first data portion */
//  320   USB_EP_sendInDataPortion(EPx, StartInStage);
        MOV      R1,R4
        BL       USB_EP_sendInDataPortion
//  321 
//  322   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  323 }
//  324 
//  325 /**
//  326   * @brief  Indicates that we are willing to receive Length or more bytes of data
//  327   *         from the host to this EndPoint with OUT transaction(s).
//  328   *
//  329   * @param  EPx: USB EndPoint number.
//  330   *         This parameter can be one of the following values:
//  331   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  332   *
//  333   * @param  Buffer: Pointer to the user's buffer to place received data to.
//  334   *                 The total buffer size should be equal or greater then
//  335   *                 ((Length / MAX_PACKET_LENGTH) + 1) * MAX_PACKET_LENGTH)
//  336   *
//  337   * @param  Length: The minimal data length to receive before the transfer is
//  338   *                 treated as complete.
//  339   *
//  340   * @param  onOutDone: User's handler to be called after Length or more bytes of
//  341   *                    data is successfully received (may be 0).
//  342   *
//  343   * @retval USB_Result.
//  344   */
//  345 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 USB_Result USB_EP_doDataOut(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length, USB_EP_IO_Handler onOutDone)
//  347 {
USB_EP_doDataOut:
        PUSH     {R3-R5,LR}
//  348   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        MOVS     R4,#+44
        LDR.W    R5,??DataTable13
        MLA      R4,R4,R0,R5
//  349 
//  350   /* Set EndPoint context */
//  351   ep->Buffer.IO_Buffer.pBuffer    = Buffer;
        STR      R1,[R4, #+4]
//  352   ep->Buffer.IO_Buffer.length     = Length;
        STR      R2,[R4, #+8]
//  353   ep->Buffer.IO_Buffer.bytesToAck = 0;
        MOVS     R1,#+0
        STR      R1,[R4, #+16]
//  354   ep->Buffer.IO_Buffer.offset     = 0;
        STR      R1,[R4, #+12]
//  355   ep->OutHandler                  = onOutDone;
        STR      R3,[R4, #+32]
//  356   ep->EP_WaitOut                  = SET;
        MOVS     R1,#+1
        STRB     R1,[R4, #+25]
//  357 
//  358   /* Start awaiting for OUT transaction */
//  359   USB_EP_Idle(EPx);
        BL       USB_EP_Idle
//  360 
//  361   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  362 }
//  363 
//  364 /**
//  365   * @brief  Indicates that we are willing to receive (repeatedly) Setup Control
//  366   *         Transactions with this EndPoint.
//  367   *
//  368   * @param  EPx: USB EndPoint number.
//  369   *         This parameter can be one of the following values:
//  370   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  371   *
//  372   * @param  USB_SetupPacket: Pointer to the user's buffer to place
//  373   *         received setup packet.
//  374   *
//  375   * @param  onSetupPacket: User's handler to be called when setup packet
//  376   *         is received.
//  377   *
//  378   * @retval USB_Result.
//  379   */
//  380 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  381 USB_Result USB_EP_setSetupHandler(USB_EP_TypeDef EPx, USB_SetupPacket_TypeDef* USB_SetupPacket, USB_EP_Setup_Handler onSetupPacket)
//  382 {
USB_EP_setSetupHandler:
        PUSH     {R4,LR}
//  383   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        BL       ?Subroutine2
//  384 
//  385   /* Set EndPoint context */
//  386   ep->Buffer.pSetupPacket         = USB_SetupPacket;
??CrossCallReturnLabel_4:
        STR      R1,[R3, #+20]
//  387   ep->Buffer.IO_Buffer.length     = 0;
        MOVS     R1,#+0
        STR      R1,[R3, #+8]
//  388   ep->Buffer.IO_Buffer.bytesToAck = 0;
        STR      R1,[R3, #+16]
//  389   ep->Buffer.IO_Buffer.offset     = 0;
        STR      R1,[R3, #+12]
//  390   ep->SetupHandler                = onSetupPacket;
        STR      R2,[R3, #+36]
//  391   ep->EP_WaitSetup                = onSetupPacket ? SET : RESET;
        CBZ.N    R2,??USB_EP_setSetupHandler_0
        MOVS     R1,#+1
??USB_EP_setSetupHandler_0:
        STRB     R1,[R3, #+26]
//  392 
//  393   /* Start awaiting for SETUP transaction */
//  394   USB_EP_Idle(EPx);
        BL       USB_EP_Idle
//  395 
//  396   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  397 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine2:
        MOVS     R3,#+44
        LDR.W    R4,??DataTable13
        MLA      R3,R3,R0,R4
        BX       LR
//  398 
//  399 /**
//  400   * @brief  EndPoint state machine implementation.
//  401   *
//  402   * @param  EPx: USB EndPoint number.
//  403   *         This parameter can be one of the following values:
//  404   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  405   *
//  406   * @param  USB_IT: SLAVE controller interrupt flags (USB_SIS register value).
//  407   *
//  408   * @retval USB_Result.
//  409   *
//  410   * @note   This function should be called at appropriate rate to handle possible
//  411   *         EndPoint events.
//  412   */
//  413 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  414 USB_Result USB_EP_dispatchEvent(USB_EP_TypeDef EPx, uint32_t USB_IT)
//  415 {
USB_EP_dispatchEvent:
        PUSH     {R3-R11,LR}
        MOV      R8,R0
        MOV      R7,R1
//  416   FlagStatus nextIteration = RESET;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  417   USB_Result result = USB_SUCCESS;
        MOVS     R6,#+0
//  418   uint32_t tmpSTS, tmpTS, tmpCTRL;
//  419   uint32_t i, count;
//  420   USB_EPContext_TypeDef *ep;
//  421 
//  422   tmpSTS = USB_GetSEPxSTS(EPx);
        MOV      R0,R8
        BL       USB_GetSEPxSTS
        MOV      R9,R0
//  423   tmpTS  = (USB_GetSEPxTS(EPx) & USB_SEPx_TS_SCTTYPE_Msk);
        MOV      R0,R8
        BL       USB_GetSEPxTS
        AND      R10,R0,#0x3
//  424   tmpCTRL = USB_GetSEPxCTRL(EPx);
        MOV      R0,R8
        BL       USB_GetSEPxCTRL
        MOV      R4,R0
//  425 
//  426   ep = USB_EPContext + EPx;
        MOVS     R0,#+44
        LDR.W    R1,??DataTable13
        MLA      R5,R0,R8,R1
//  427 
//  428   /* Remember SCDONE event in the EndPoint context */
//  429   if (USB_IT & USB_SIS_SCTDONE)
        LSLS     R0,R7,#+31
        ITT      MI 
        MOVMI    R0,#+1
        STRBMI   R0,[R5, #+24]
//  430   {
//  431     ep->EP_WasScdone = SET;
//  432   }
//  433 
//  434   do
//  435   {
//  436     switch (ep->EP_State)
??USB_EP_dispatchEvent_1:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+5
        BHI.N    ??USB_EP_dispatchEvent_2
        TBB      [PC, R0]
        DATA
??USB_EP_dispatchEvent_0:
        DC8      0x3,0x5,0x1F,0x5D
        DC8      0x91,0xB9
        THUMB
//  437     {
//  438       /* USB_EP_NAK */
//  439       case USB_EP_NAK:
//  440       {
//  441         /* Fast return if EndPoint in the NAK state */
//  442         return USB_SUCCESS;
??USB_EP_dispatchEvent_3:
        MOVS     R0,#+0
        B.N      ??USB_EP_dispatchEvent_4
//  443       }
//  444 
//  445       /* USB_EP_IDLE */
//  446       case USB_EP_IDLE:
//  447       {
//  448         if (!(tmpCTRL & USB_SEP_CTRL_EPRDY) && ep->EP_WasScdone)
??USB_EP_dispatchEvent_5:
        LSLS     R0,R4,#+30
        BMI.N    ??USB_EP_dispatchEvent_6
        LDRB     R0,[R5, #+24]
        CMP      R0,#+0
        BEQ.N    ??USB_EP_dispatchEvent_6
//  449         {
//  450           /* EPRDY dropped - event for this End Point */
//  451           if ((tmpTS == USB_SEPx_TS_SCTTYPE_Outdata) && ep->EP_WaitOut)
        CMP      R10,#+2
        BNE.N    ??USB_EP_dispatchEvent_7
        LDRB     R0,[R5, #+25]
        CBZ.N    R0,??USB_EP_dispatchEvent_8
//  452           {
//  453             /* OUT transaction started: switch into the OUT state and continue processing there */
//  454             ep->EP_State = USB_EP_OUT;
        MOVS     R0,#+3
        STRB     R0,[R5, #+0]
//  455             ep->EP_WaitOut = RESET;
        MOVS     R0,#+0
        STRB     R0,[R5, #+25]
//  456             nextIteration = SET;
        B.N      ??USB_EP_dispatchEvent_9
//  457           }
//  458           else if ((tmpTS == USB_SEPx_TS_SCTTYPE_Setup) && ep->EP_WaitSetup)
??USB_EP_dispatchEvent_7:
        CMP      R10,#+0
        BNE.N    ??USB_EP_dispatchEvent_8
        LDRB     R0,[R5, #+26]
        CBZ.N    R0,??USB_EP_dispatchEvent_8
//  459           {
//  460             /* SETUP transaction started: switch into the SETUP state and continue processing there */
//  461             ep->EP_State = USB_EP_SETUP;
        MOVS     R0,#+4
        STRB     R0,[R5, #+0]
//  462             nextIteration = SET;
        B.N      ??USB_EP_dispatchEvent_10
//  463           }
//  464           else
//  465           {
//  466             /* Unexpected transaction: switch into STALL/NAK state and return error */
//  467             result = USB_ERROR;
??USB_EP_dispatchEvent_8:
        MOVS     R6,#+1
//  468             USB_EP_Stall(EPx, USB_STALL_PROTO);
//  469           }
//  470         }
//  471         break;
//  472       }
//  473 
//  474       /* USB_EP_IN */
//  475       case USB_EP_IN:
//  476       {
//  477         /* Analyze event type */
//  478         if ((!(tmpCTRL & USB_SEP_CTRL_EPRDY)) && ep->EP_WasScdone &&
//  479             (tmpTS == USB_SEPx_TS_SCTTYPE_In) && (tmpSTS & USB_SEP_STS_SCACKRXED))
//  480         {
//  481           /* 1. ACK event */
//  482           ep->Buffer.IO_Buffer.offset += ep->Buffer.IO_Buffer.bytesToAck;
//  483           if (ep->Buffer.IO_Buffer.offset >= ep->Buffer.IO_Buffer.length)
//  484           {
//  485             /* If offset >= length (transfer is over), indicate it with NAK state
//  486              * and call handler (if present) */
//  487             ep->EP_State = USB_EP_NAK;
//  488             if (ep->InHandler != 0)
//  489             {
//  490               result = ep->InHandler(EPx, ep->Buffer.IO_Buffer.pBuffer, ep->Buffer.IO_Buffer.length);
//  491             }
//  492 
//  493             if (result == USB_SUCCESS)
//  494             {
//  495               /* If no other transaction is ordered by user or no data stage of SETUP
//  496                * packet (state isn't changed), go to NAK/IDLE state */
//  497               if (ep->EP_State == USB_EP_NAK)
//  498               {
//  499                 USB_EP_Idle(EPx);
//  500               }
//  501             }
//  502             else
//  503             {
//  504               /* If user's handler indicated error, go to STALL/NAK state */
//  505               USB_EP_Stall(EPx, USB_STALL_PROTO);
//  506             }
//  507           }
//  508           else
//  509           {
//  510             /* If there is any data to send remaining, send next portion */
//  511             USB_EP_sendInDataPortion(EPx, USB_DATA_BIT_TOGGLE);
//  512           }
//  513         }
//  514         else if (tmpSTS & (USB_SEP_STS_SCRXOF
//  515                          | USB_SEP_STS_SCCRCERR
//  516                          | USB_SEP_STS_SCBSERR
//  517                          | USB_SEP_STS_SCRXTO))
//  518         {
//  519           /* 2. Error events - call error handler (if present). Switch temporarily to NAK
//  520            * to check if user orders another transaction */
//  521           ep->EP_State = USB_EP_NAK;
//  522           if (ep->ErrorHandler != 0)
//  523           {
//  524             result = ep->ErrorHandler(EPx, tmpSTS, tmpTS, tmpCTRL);
//  525           }
//  526           if (result == USB_SUCCESS)
//  527           {
//  528             if (ep->EP_State == USB_EP_NAK)
//  529             {
//  530               /* If there is no user's handler or USB_SUCCESS returned and no other transaction
//  531                * is started, retry with current data portion */
//  532               ep->EP_State = USB_EP_IN;
//  533               USB_EP_sendInDataPortion(EPx, USB_DATA_BIT_KEEP);
//  534             }
//  535           }
//  536           else
//  537           {
//  538             /* If user's handler indicated error, go to STALL/NAK state */
//  539             USB_EP_Stall(EPx, USB_STALL_PROTO);
//  540           }
//  541         }
//  542         break;
//  543       }
//  544 
//  545       /* USB_EP_OUT */
//  546       case USB_EP_OUT:
//  547       {
//  548         /* Check for event */
//  549         if (!(tmpCTRL & USB_SEP_CTRL_EPRDY) && ep->EP_WasScdone)
//  550         {
//  551           nextIteration = RESET;
//  552 
//  553           /* Read data packet */
//  554           count = USB_GetSEPxRXFDC(EPx);
//  555           for (i = 0; i < count; i++)
//  556           {
//  557             ep->Buffer.IO_Buffer.pBuffer[ep->Buffer.IO_Buffer.offset + i] = EPx_RX_FIFO_DATA(EPx);
//  558           }
//  559           RX_FIFO_FORCE_EMPTY(EPx);
//  560           ep->Buffer.IO_Buffer.offset += count;
//  561 
//  562           /* If offset >= length (transfer is over), indicate it with NAK state
//  563            * and call handler (if present) */
//  564           if (ep->Buffer.IO_Buffer.offset >= ep->Buffer.IO_Buffer.length)
//  565           {
//  566             ep->EP_State = USB_EP_NAK;
//  567             if (ep->OutHandler != 0)
//  568             {
//  569               result = ep->OutHandler(EPx, ep->Buffer.IO_Buffer.pBuffer, ep->Buffer.IO_Buffer.offset);
//  570             }
//  571 
//  572             if (result == USB_SUCCESS)
//  573             {
//  574               /* If no other transaction is ordered by user or no data stage of SETUP
//  575                * packet (state isn't changed), go to NAK/IDLE state */
//  576               if (ep->EP_State == USB_EP_NAK)
//  577               {
//  578                 USB_EP_Idle(EPx);
//  579               }
//  580             }
//  581             else
//  582             {
//  583               /* If user's handler indicated error, go to STALL/NAK state */
//  584               USB_EP_Stall(EPx, USB_STALL_PROTO);
??USB_EP_dispatchEvent_11:
        MOVS     R1,#+0
        B.N      ??USB_EP_dispatchEvent_12
//  585             }
??USB_EP_dispatchEvent_13:
        LSLS     R0,R4,#+30
        BMI.N    ??USB_EP_dispatchEvent_14
        LDRB     R0,[R5, #+24]
        CBZ.N    R0,??USB_EP_dispatchEvent_14
        CMP      R10,#+1
        BNE.N    ??USB_EP_dispatchEvent_14
        LSLS     R0,R9,#+25
        BPL.N    ??USB_EP_dispatchEvent_14
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+16]
        ADDS     R0,R1,R0
        STR      R0,[R5, #+12]
        LDR      R2,[R5, #+8]
        CMP      R0,R2
        BCC.N    ??USB_EP_dispatchEvent_15
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
        LDR      R3,[R5, #+28]
        MOVS     R0,R3
        BEQ.N    ??USB_EP_dispatchEvent_16
        LDR      R1,[R5, #+4]
        MOV      R0,R8
        BLX      R3
        MOV      R6,R0
??USB_EP_dispatchEvent_16:
        CMP      R6,#+0
        BNE.N    ??USB_EP_dispatchEvent_11
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??USB_EP_dispatchEvent_2
        B.N      ??USB_EP_dispatchEvent_17
??USB_EP_dispatchEvent_15:
        MOVS     R1,#+1
        B.N      ??USB_EP_dispatchEvent_18
??USB_EP_dispatchEvent_14:
        TST      R9,#0xF
        BEQ.N    ??USB_EP_dispatchEvent_6
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
        LDR      R12,[R5, #+40]
        MOVS     R0,R12
        BEQ.N    ??USB_EP_dispatchEvent_19
        MOV      R3,R4
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R8
        BLX      R12
        MOV      R6,R0
??USB_EP_dispatchEvent_19:
        CMP      R6,#+0
        BNE.N    ??USB_EP_dispatchEvent_11
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
??USB_EP_dispatchEvent_2:
        BNE.N    ??USB_EP_dispatchEvent_20
        MOVS     R0,#+2
        STRB     R0,[R5, #+0]
        MOVS     R1,#+0
??USB_EP_dispatchEvent_18:
        MOV      R0,R8
        BL       USB_EP_sendInDataPortion
??USB_EP_dispatchEvent_6:
        B.N      ??USB_EP_dispatchEvent_20
??USB_EP_dispatchEvent_21:
        LSLS     R0,R4,#+30
        BMI.N    ??USB_EP_dispatchEvent_20
        LDRB     R0,[R5, #+24]
        CMP      R0,#+0
        BEQ.N    ??USB_EP_dispatchEvent_20
??USB_EP_dispatchEvent_9:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        MOV      R0,R8
        BL       USB_GetSEPxRXFDC
        MOV      R11,R0
        MOVS     R7,#+0
        B.N      ??USB_EP_dispatchEvent_22
??USB_EP_dispatchEvent_23:
        MOV      R0,R8
        BL       USB_GetSEPxRXFD
        LDR      R1,[R5, #+12]
        ADDS     R1,R7,R1
        LDR      R2,[R5, #+4]
        STRB     R0,[R1, R2]
        ADDS     R7,R7,#+1
??USB_EP_dispatchEvent_22:
        CMP      R7,R11
        BCC.N    ??USB_EP_dispatchEvent_23
        BL       ?Subroutine1
??CrossCallReturnLabel_2:
        LDR      R0,[R5, #+12]
        ADD      R2,R11,R0
        STR      R2,[R5, #+12]
        LDR      R0,[R5, #+8]
        CMP      R2,R0
        BCC.N    ??USB_EP_dispatchEvent_24
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
        LDR      R3,[R5, #+32]
        MOVS     R0,R3
        BEQ.N    ??USB_EP_dispatchEvent_25
        LDR      R1,[R5, #+4]
        MOV      R0,R8
        BLX      R3
        MOV      R6,R0
??USB_EP_dispatchEvent_25:
        CMP      R6,#+0
        BNE.N    ??USB_EP_dispatchEvent_11
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        B.N      ??USB_EP_dispatchEvent_26
//  586           }
//  587           else
//  588           {
//  589             /* If offset < length, wait for another portion */
//  590             USB_EP_SetReady(EPx, USB_SEPx_CTRL_EPRDY_Ready);
??USB_EP_dispatchEvent_24:
        MOVS     R1,#+2
        MOV      R0,R8
        BL       USB_EP_SetReady
        B.N      ??USB_EP_dispatchEvent_27
//  591           }
//  592         }
//  593         break;
//  594       }
//  595 
//  596       /* USB_EP_SETUP */
//  597       case USB_EP_SETUP:
//  598       {
//  599         /* Check for event */
//  600         if (ep->EP_WasScdone)
??USB_EP_dispatchEvent_28:
        LDRB     R0,[R5, #+24]
        CMP      R0,#+0
        BEQ.N    ??USB_EP_dispatchEvent_27
//  601         {
//  602           assert_param(ep->SetupHandler);
//  603 
//  604           /* Read setup packet and check for correct size (8 bytes) */
//  605           count = USB_GetSEPxRXFDC(EPx);
//  606           if (count == 8)
??USB_EP_dispatchEvent_10:
        MOV      R0,R8
        BL       USB_GetSEPxRXFDC
        CMP      R0,#+8
        BNE.N    ??USB_EP_dispatchEvent_29
//  607           {
//  608             for (i = 0; i < count; i++)
        MOVS     R7,#+0
//  609             {
//  610               ((uint8_t*)ep->Buffer.pSetupPacket)[i] = EPx_RX_FIFO_DATA(EPx);
??USB_EP_dispatchEvent_30:
        MOV      R0,R8
        BL       USB_GetSEPxRXFD
        LDR      R1,[R5, #+20]
        STRB     R0,[R7, R1]
//  611             }
        ADDS     R7,R7,#+1
        CMP      R7,#+8
        BCC.N    ??USB_EP_dispatchEvent_30
//  612             RX_FIFO_FORCE_EMPTY(EPx);
        BL       ?Subroutine1
//  613 
//  614             /* Call the handler */
//  615             result = ep->SetupHandler(EPx, ep->Buffer.pSetupPacket);
??CrossCallReturnLabel_1:
        LDR      R1,[R5, #+20]
        MOV      R0,R8
        LDR      R2,[R5, #+36]
        BLX      R2
        MOVS     R6,R0
//  616 
//  617             if (result == USB_SUCCESS)
        BNE.N    ??USB_EP_dispatchEvent_31
//  618             {
//  619               /* If no other transaction is ordered by user or no data stage of SETUP
//  620                * packet (state isn't changed), go to NAK/IDLE state */
//  621               if (ep->EP_State == USB_EP_SETUP)
        LDRB     R0,[R5, #+0]
        CMP      R0,#+4
??USB_EP_dispatchEvent_26:
        BNE.N    ??USB_EP_dispatchEvent_27
//  622               {
//  623                 USB_EP_Idle(EPx);
        MOV      R0,R8
        BL       USB_EP_Idle
        B.N      ??USB_EP_dispatchEvent_27
//  624               }
//  625             }
//  626             else
//  627             {
//  628               /* If user's handler indicated error, go to STALL/NAK state */
//  629               USB_EP_Stall(EPx, USB_STALL_PROTO);
//  630             }
//  631           }
//  632           else /* Incorrect packet size */
//  633           {
//  634             RX_FIFO_FORCE_EMPTY(EPx);
??USB_EP_dispatchEvent_29:
        BL       ?Subroutine1
//  635             result = USB_ERROR;
??CrossCallReturnLabel_0:
        MOVS     R6,#+1
//  636             /* Switch into STALL state */
//  637             USB_EP_Stall(EPx, USB_STALL_PROTO);
??USB_EP_dispatchEvent_31:
        MOVS     R1,#+0
        MOV      R0,R8
        BL       USB_EP_Stall
        B.N      ??USB_EP_dispatchEvent_27
//  638           }
//  639         }
//  640         nextIteration = RESET;
//  641         break;
//  642       }
//  643 
//  644       /* USB_EP_STALL */
//  645       case USB_EP_STALL:
//  646       {
//  647         if (!(tmpCTRL & USB_SEP_CTRL_EPRDY))
??USB_EP_dispatchEvent_32:
        LSLS     R0,R4,#+30
        BMI.N    ??USB_EP_dispatchEvent_20
//  648         {
//  649           /* EPRDY dropped - event for this End Point */
//  650           if (ep->EP_Halt == USB_STALL_HALT)
        LDRB     R0,[R5, #+1]
        CMP      R0,#+1
        BNE.N    ??USB_EP_dispatchEvent_17
//  651           {
//  652             USB_EP_Stall(EPx, USB_STALL_HALT);
        MOVS     R1,#+1
??USB_EP_dispatchEvent_12:
        MOV      R0,R8
        BL       USB_EP_Stall
        B.N      ??USB_EP_dispatchEvent_20
//  653           }
//  654           else
//  655           {
//  656             USB_EP_Idle(EPx);
??USB_EP_dispatchEvent_17:
        MOV      R0,R8
        BL       USB_EP_Idle
//  657           }
//  658         }
//  659         break;
//  660       }
//  661     }
//  662   } while (nextIteration);
??USB_EP_dispatchEvent_20:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??USB_EP_dispatchEvent_1
//  663 
//  664   return result;
??USB_EP_dispatchEvent_27:
        MOV      R0,R6
??USB_EP_dispatchEvent_4:
        POP      {R1,R4-R11,PC}   ;; return
//  665 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine1:
        MOVS     R1,#+1
        MOV      R0,R8
        B.W      USB_SetSEPxRXFC
//  666 
//  667 /**
//  668   * @brief  Prepares EndPoint for IN transaction accepting (service function).
//  669   *
//  670   * @param  EPx: USB EndPoint number.
//  671   *         This parameter can be one of the following values:
//  672   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  673   *
//  674   * @param  DataBitChange: DATA bit handling.
//  675   *         This parameter can be one of the following values:
//  676   *           @arg USB_DATA_BIT_KEEP: Don't change DATA bit.
//  677   *           @arg USB_DATA_BIT_TOGGLE: Toggle DATA0/DATA1.
//  678   *           @arg USB_DATA_BIT_DATA1: Set DATA1.
//  679   *
//  680   * @retval USB_Result.
//  681   */
//  682 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  683 static void USB_EP_sendInDataPortion(USB_EP_TypeDef EPx, USB_EPData_Bit_TypeDef DataBitChange)
//  684 {
USB_EP_sendInDataPortion:
        PUSH     {R3-R7,LR}
        MOV      R4,R0
        MOV      R5,R1
//  685   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
        MOVS     R0,#+44
        LDR.N    R1,??DataTable13
        MLA      R6,R0,R4,R1
//  686   uint32_t i, total;
//  687 
//  688   assert_param(ep->EP_State == USB_EP_IN);
//  689 
//  690   /* Clean TX FIFO buffer */
//  691   TX_FIFO_FORCE_EMPTY(EPx);
        MOVS     R1,#+1
        MOV      R0,R4
        BL       USB_SetSEPxTXFDC
//  692 
//  693   /* Adjust DATA bit */
//  694   switch (DataBitChange)
        CMP      R5,#+1
        BEQ.N    ??USB_EP_sendInDataPortion_0
        CMP      R5,#+2
        ITTT     EQ 
        MOVEQ    R1,#+4
        MOVEQ    R0,R4
        BLEQ     USB_SetSEPxCTRL
        B.N      ??USB_EP_sendInDataPortion_1
//  695   {
//  696     case USB_DATA_BIT_KEEP:
//  697       break;
//  698     case USB_DATA_BIT_TOGGLE:
//  699       USB_SEPxToggleEPDATASEQ(EPx);
??USB_EP_sendInDataPortion_0:
        MOV      R0,R4
        BL       USB_SEPxToggleEPDATASEQ
//  700       break;
//  701     case USB_DATA_BIT_DATA1:
//  702       USB_SetSEPxCTRL(EPx, USB_SEPx_CTRL_EPDATASEQ_Data1);
//  703       break;
//  704   }
//  705 
//  706   /* Copy data portion into TX FIFO buffer */
//  707   total = (ep->Buffer.IO_Buffer.offset + ep->Buffer.IO_Buffer.bytesToAck < ep->Buffer.IO_Buffer.length ?
//  708             ep->Buffer.IO_Buffer.offset + ep->Buffer.IO_Buffer.bytesToAck : ep->Buffer.IO_Buffer.length);
??USB_EP_sendInDataPortion_1:
        LDR      R5,[R6, #+12]
        LDR      R0,[R6, #+16]
        ADDS     R7,R0,R5
        LDR      R0,[R6, #+8]
        CMP      R7,R0
        BLS.N    ??USB_EP_sendInDataPortion_2
        MOV      R7,R0
//  709   for (i = ep->Buffer.IO_Buffer.offset; i < total; i++)
        B.N      ??USB_EP_sendInDataPortion_2
//  710   {
//  711     USB_SetSEPxTXFD(EPx, ep->Buffer.IO_Buffer.pBuffer[i]);
??USB_EP_sendInDataPortion_3:
        LDR      R0,[R6, #+4]
        LDRB     R1,[R5, R0]
        MOV      R0,R4
        BL       USB_SetSEPxTXFD
//  712   };
        ADDS     R5,R5,#+1
??USB_EP_sendInDataPortion_2:
        CMP      R5,R7
        BCC.N    ??USB_EP_sendInDataPortion_3
//  713 
//  714   /* Set EPRDY bit */
//  715   USB_EP_SetReady(EPx, USB_SEPx_CTRL_EPRDY_Ready);
        MOVS     R1,#+2
        MOV      R0,R4
        POP      {R2,R4-R7,LR}
        REQUIRE USB_EP_SetReady
        ;; // Fall through to label USB_EP_SetReady
//  716 }
//  717 
//  718 
//  719 /**
//  720   * @brief  Sets EPRDY and STALL bits (service function).
//  721   *
//  722   * @param  EPx: USB EndPoint number.
//  723   *         This parameter can be one of the following values:
//  724   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  725   *
//  726   * @param  val: Value for SEPxCTRL register.
//  727   *
//  728   * @retval USB_Result.
//  729   *
//  730   * @note   Before setting EPRDY, the function clears pending
//  731   *         bits (especially SCTDONE), to indicate that previous
//  732   *         transaction is complete.
//  733   */
//  734 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  735 static void USB_EP_SetReady(USB_EP_TypeDef EPx, uint32_t val)
//  736 {
USB_EP_SetReady:
        PUSH     {R3-R5,LR}
        MOV      R4,R0
        MOV      R5,R1
//  737   USB_EPContext_TypeDef *ep = USB_EPContext + EPx;
//  738 
//  739   /* Clear pending bits */
//  740   USB_SetSIS(USB_SIS_Msk);
        MOVS     R0,#+31
        BL       USB_SetSIS
//  741 
//  742   ep->EP_WasScdone = RESET;
        MOVS     R0,#+44
        LDR.N    R1,??DataTable13
        MLA      R0,R0,R4,R1
        MOVS     R1,#+0
        STRB     R1,[R0, #+24]
//  743 
//  744   /* Set CTRL bits */
//  745   USB_SetSEPxCTRL(EPx, val);
        MOV      R1,R5
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
        B.W      USB_SetSEPxCTRL
//  746 }
//  747 
//  748 /** @} */ /* End of group USB_EndPoint_Private_Functions */
//  749 
//  750 /** @} */ /* End of group USB_EndPoint */
//  751 
//  752 /** @defgroup USB_Device USB Device
//  753   * @{
//  754   */
//  755 
//  756 /** @defgroup USB_Device_Private_Types USB Device Private Types
//  757   * @{
//  758   */
//  759 
//  760 /** @} */ /* End of group USB_Device_Private_Types */
//  761 
//  762 /** @defgroup USB_Device_Private_Constants USB Device Private Constants
//  763   * @{
//  764   */
//  765 
//  766 /** @} */ /* End of group USB_Device_Private_Constants */
//  767 
//  768 /** @defgroup USB_Device_Private_Variables USB Device Private Variables
//  769   * @{
//  770   */
//  771 
//  772 USB_SetupPacket_TypeDef USB_CurrentSetupPacket;
//  773 USB_DeviceContext_TypeDef USB_DeviceContext;
//  774 static uint8_t SetupPacketData[2];
//  775 
//  776 /** @} */ /* End of group USB_Device_Private_Variables */
//  777 
//  778 /** @defgroup USB_Device_Private_Macros USB Device Private Macros
//  779   * @{
//  780   */
//  781 
//  782 /** @} */ /* End of group USB_Device_Private_Macros */
//  783 
//  784 /** @defgroup USB_Device_Private_FunctionPrototypes USB Device Private Function Prototypes
//  785   * @{
//  786   */
//  787 
//  788 static USB_Result USB_Device_setAddressWork(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);
//  789 
//  790 /** @} */ /* End of group USB_Device_Private_FunctionPrototypes */
//  791 
//  792 /** @defgroup USB_Device_Private_Functions USB Device Private Functions
//  793   * @{
//  794   */
//  795 
//  796 /**
//  797   * @brief  Initializes the USB peripheral according to the specified
//  798   *         parameters in the USB_Clock_InitStruct.
//  799   * @param  USB_Clock_InitStruct: pointer to a USB_Clock_TypeDef structure
//  800   *         that contains the configuration information for the USB Clock.
//  801   *
//  802   * @param  USB_DeviceBUSParam: pointer to a USB_DeviceBUSParam_TypeDef structure
//  803   *         that contains the configuration information for the USB BUS
//  804   *
//  805   * @retval USB_Result.
//  806   */
//  807 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  808 USB_Result USB_DeviceInit(const USB_Clock_TypeDef* USB_Clock_InitStruct, USB_DeviceBUSParam_TypeDef* USB_DeviceBUSParam)
//  809 {
USB_DeviceInit:
        PUSH     {R4,LR}
        MOV      R4,R1
//  810   /* Check the parameters */
//  811   assert_param(IS_USB_PULL(USB_DeviceBUSParam->PULL));
//  812   assert_param(IS_USB_SPEED(USB_DeviceBUSParam->SPEED));
//  813   assert_param(IS_USB_MODE(USB_DeviceBUSParam->MODE));
//  814 
//  815   /* Set USB clocks perform controller reset */
//  816   USB_BRGInit(USB_Clock_InitStruct);
        BL       USB_BRGInit
//  817   USB_Reset();
        BL       USB_Reset
//  818   /* Set pulls and Device mode */
//  819   USB_SetHSCR(USB_HSCR_HOST_MODE_Device);
        MOV      R0,#+65536
        BL       USB_SetHSCR
//  820   USB_SetHSCR(USB_DeviceBUSParam->PULL);
        LDR      R0,[R4, #+0]
        BL       USB_SetHSCR
//  821   /* Set speed, polarity and enable end points */
//  822   USB_SetSC(USB_DeviceBUSParam->SPEED | USB_DeviceBUSParam->MODE | USB_SC_SCGEN_Set);
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        ORR      R0,R0,#0x1
        BL       USB_SetSC
//  823   /* Setup EP0 */
//  824   USB_EP_Init(USB_EP0, USB_SEPx_CTRL_EPEN_Enable | USB_SEPx_CTRL_EPDATASEQ_Data1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       USB_EP_Init
//  825   USB_EP_setSetupHandler(USB_EP0, &USB_CurrentSetupPacket, USB_DEVICE_HANDLE_SETUP);
        LDR.N    R4,??DataTable13_3
        ADR.W    R2,USB_DeviceSetupPacket
        ADD      R1,R4,#+20
        MOVS     R0,#+0
        BL       USB_EP_setSetupHandler
//  826 
//  827   USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_UNKNOWN;
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
//  828   USB_DeviceContext.Address = 0;
        STR      R0,[R4, #+12]
//  829 
//  830   return USB_SUCCESS;
        POP      {R4,PC}          ;; return
//  831 }
//  832 
//  833 /**
//  834   * @brief  Enables the USB peripheral.
//  835   *
//  836   * @param  None
//  837   *
//  838   * @retval USB_Result.
//  839   */
//  840 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  841 USB_Result USB_DevicePowerOn(void)
//  842 {
USB_DevicePowerOn:
        PUSH     {R7,LR}
//  843   USB_SetHSCR(USB_HSCR_EN_RX_Set | USB_HSCR_EN_TX_Set);
        MOVS     R0,#+12
        BL       USB_SetHSCR
//  844   USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_POWERED;
        LDR.N    R0,??DataTable13_3
        MOVS     R1,#+2
        B.N      ?Subroutine0
//  845 
//  846   return USB_SUCCESS;
//  847 }
//  848 
//  849 /**
//  850   * @brief  Disables the USB peripheral.
//  851   *
//  852   * @param  None
//  853   *
//  854   * @retval USB_Result.
//  855   */
//  856 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  857 USB_Result USB_DevicePowerOff(void)
//  858 {
USB_DevicePowerOff:
        PUSH     {R7,LR}
//  859   USB_SetHSCR(USB_HSCR_EN_RX_Reset);
        MOV      R0,#+524288
        BL       USB_SetHSCR
//  860   USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_UNKNOWN;
        LDR.N    R0,??DataTable13_3
        MOVS     R1,#+0
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  861 
//  862   return USB_SUCCESS;
//  863 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        STRB     R1,[R0, #+4]
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  864 
//  865 #ifdef USB_REMOTE_WAKEUP_SUPPORTED
//  866 /**
//  867   * @brief  Initiates host remote wakeup
//  868   *
//  869   * @param  None
//  870   *
//  871   * @retval USB_Result.
//  872   */
//  873 
//  874 USB_Result USB_DeviceRemoteWakeUp(void)
//  875 {
//  876   return USB_SUCCESS;
//  877 }
//  878 #endif /* USB_REMOTE_WAKEUP_SUPPORTED */
//  879 
//  880 /** @defgroup USB_Device_Private_Handlers USB Device Handlers implementation
//  881   * @{
//  882   */
//  883 
//  884 /**
//  885   * @brief  Reset bus handler
//  886   *
//  887   * @param  None
//  888   *
//  889   * @retval USB_Result.
//  890   */
//  891 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  892 USB_Result USB_DeviceReset(void)
//  893 {
//  894   USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_DEFAULT;
USB_DeviceReset:
        LDR.N    R0,??DataTable13_3
        MOVS     R1,#+3
        STRB     R1,[R0, #+4]
//  895   return USB_SUCCESS;
        MOVS     R0,#+0
        BX       LR               ;; return
//  896 }
//  897 
//  898 /**
//  899   * @brief  Performs all necessary actions on entering to SUSPENDED state
//  900   *
//  901   * @param  None
//  902   *
//  903   * @retval USB_Result.
//  904   */
//  905 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  906 USB_Result USB_DeviceSuspend(void)
//  907 {
//  908   return USB_SUCCESS;
USB_DeviceSuspend:
        MOVS     R0,#+0
        BX       LR               ;; return
//  909 }
//  910 
//  911 /**
//  912   * @brief  Performs all necessary actions on exit from SUSPENDED state
//  913   *
//  914   * @param  None
//  915   *
//  916   * @retval USB_Result.
//  917   */
//  918 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  919 USB_Result USB_DeviceResume(void)
//  920 {
//  921   return USB_SUCCESS;
USB_DeviceResume:
        MOVS     R0,#+0
        BX       LR               ;; return
//  922 }
//  923 
//  924 /**
//  925   * @brief  Control Setup Packet processing dispatcher (set as EP0 setup
//  926   *         packet handler).
//  927   *
//  928   * @param  EPx: USB Control EndPoint (EP0) number.
//  929   *
//  930   * @param  USB_SetupPacket: Pointer to a USB_SetupPacket_TypeDef structure
//  931   *         that contains received setup packet contents (on success)
//  932   *
//  933   * @retval USB_Result.
//  934   *
//  935   * @note   This function interface reflects EndPoint setup packet handler
//  936   *         requirements. Request setup packet data is placed into
//  937   *         USB_CurrentSetupPacket variable to be accessible from the
//  938   *         specific request type handlers.
//  939   */
//  940 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  941 USB_Result USB_DeviceSetupPacket(USB_EP_TypeDef EPx, const USB_SetupPacket_TypeDef* USB_SetupPacket)
//  942 {
USB_DeviceSetupPacket:
        PUSH     {R3-R9,LR}
        MOV      R9,R0
        MOV      R6,R1
//  943   USB_RequestType_TypeDef requestType;
//  944   USB_RequestTypeDT_TypeDef requestDirection;
//  945 
//  946   USB_Result result = USB_SUCCESS;
        MOVS     R0,#+0
//  947   uint16_t wValue, wIndex, wLength;
//  948 
//  949   /* Check the parameters */
//  950   assert_param(IS_USB_ENDPOINT(EPx));
//  951 
//  952   /* Determine request type */
//  953   requestType = (USB_RequestType_TypeDef)(USB_SetupPacket->mRequestTypeData & USB_REQUEST_TYPE_Msk);
//  954   requestDirection = (USB_RequestTypeDT_TypeDef)(USB_SetupPacket->mRequestTypeData & USB_REQUEST_DT_Msk);
        LDRB     R1,[R6, #+0]
        AND      LR,R1,#0x80
//  955 
//  956   /* Process request */
//  957   switch (requestType)
        ANDS     R2,R1,#0x60
        BEQ.N    ??USB_DeviceSetupPacket_1
        CMP      R2,#+32
        BEQ.W    ??USB_DeviceSetupPacket_2
        CMP      R2,#+64
        BEQ.N    ??USB_DeviceSetupPacket_3
??USB_DeviceSetupPacket_4:
        B.N      ??USB_DeviceSetupPacket_5
//  958   {
//  959     /* Standard request */
//  960     case USB_TYPE_STANDARD: {
//  961       USB_RequestRecipient_TypeDef recipient;
//  962       USB_EP_IO_Handler statusAckHandler = 0;
??USB_DeviceSetupPacket_1:
        MOVS     R7,#+0
//  963 
//  964       wValue = USB_SetupPacket->wValue;
        LDRH     R4,[R6, #+2]
//  965       wIndex = USB_SetupPacket->wIndex;
        LDRH     R12,[R6, #+4]
//  966       wLength = USB_SetupPacket->wLength;
        LDRH     R8,[R6, #+6]
//  967 
//  968       /* Recipient check */
//  969       recipient = (USB_RequestRecipient_TypeDef)(USB_SetupPacket->mRequestTypeData & USB_RECIPIENT_TYPE_Msk);
        AND      R3,R1,#0x1F
//  970       if (!IS_VALID_USB_RECIPIENT(recipient)) {
        CMP      R3,#+4
        BCS.N    ??USB_DeviceSetupPacket_4
//  971         result = USB_ERR_INV_REQ;
//  972         break;
//  973       }
//  974       /* Specific requests */
//  975       switch (USB_SetupPacket->bRequest)
        LDR.N    R1,??DataTable13_3
        LDRB     R5,[R6, #+1]
        CMP      R5,#+12
        BHI.N    ??USB_DeviceSetupPacket_4
        TBB      [PC, R5]
        DATA
??USB_DeviceSetupPacket_0:
        DC8      0x7,0x36,0x8C,0x46
        DC8      0x8C,0x56,0x5A,0x8A
        DC8      0x60,0x69,0x71,0x76
        DC8      0x8A,0x0
        THUMB
//  976       {
//  977         /* GET_STATUS */
//  978         case USB_GET_STATUS:
//  979           if (requestDirection != USB_DEVICE_TO_HOST ||
//  980              (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS && (recipient == USB_RECIPIENT_INTERFACE ||
//  981               recipient == USB_RECIPIENT_ENDPOINT && wIndex >= Num_USB_EndPoints)))
??USB_DeviceSetupPacket_6:
        CMP      LR,#+128
        BNE.N    ??USB_DeviceSetupPacket_7
        LDRB     R0,[R1, #+4]
        CMP      R0,#+4
        BNE.N    ??USB_DeviceSetupPacket_8
        CMP      R3,#+1
??USB_DeviceSetupPacket_3:
        BEQ.N    ??USB_DeviceSetupPacket_9
        CMP      R3,#+2
        BNE.N    ??USB_DeviceSetupPacket_8
        CMP      R12,#+4
        BGE.N    ??USB_DeviceSetupPacket_9
//  982           {
//  983             result = USB_ERROR;
//  984           }
//  985           else
//  986           {
//  987             /* Give user a chance to set flags in the device context */
//  988             result = USB_DEVICE_HANDLE_GET_STATUS(recipient, wIndex);
//  989             if (result == USB_SUCCESS)
//  990             {
//  991               switch (recipient)
??USB_DeviceSetupPacket_8:
        CBZ.N    R3,??USB_DeviceSetupPacket_10
        CMP      R3,#+2
        BEQ.N    ??USB_DeviceSetupPacket_11
        BCS.N    ??USB_DeviceSetupPacket_12
//  992               {
//  993                 /* Device - return Self Powered and Remote Wakeup status */
//  994                 case USB_RECIPIENT_DEVICE:
//  995                   SetupPacketData[0] = 0
//  996 #ifdef USB_SELF_POWERED_SUPPORTED
//  997                     | USB_DeviceContext.USB_DeviceStatus.SelfPowered
//  998 #endif /* USB_SELF_POWERED_SUPPORTED */
//  999 #ifdef USB_REMOTE_WAKEUP_SUPPORTED
// 1000                     | (USB_DeviceContext.USB_DeviceStatus.RemoteWakeupEnabled << 1)
// 1001 #endif /* USB_REMOTE_WAKEUP_SUPPORTED */
// 1002                     ;
// 1003                   break;
// 1004                 /* Interface - return 0 */
// 1005                 case USB_RECIPIENT_INTERFACE:
// 1006                   SetupPacketData[0] = 0;
??USB_DeviceSetupPacket_10:
        STRB     R7,[R1, #+0]
// 1007                   break;
        B.N      ??USB_DeviceSetupPacket_12
// 1008                 /* Endpoint - return Halt status */
// 1009                 case USB_RECIPIENT_ENDPOINT:
// 1010                   SetupPacketData[0] = USB_EPContext[wIndex].EP_Halt;
??USB_DeviceSetupPacket_11:
        MOVS     R0,#+44
        LDR.N    R2,??DataTable13
        MLA      R0,R0,R12,R2
        LDRB     R0,[R0, #+1]
        STRB     R0,[R1, #+0]
// 1011                   break;
// 1012               }
// 1013               SetupPacketData[1] = 0;
??USB_DeviceSetupPacket_12:
        STRB     R7,[R1, #+1]
// 1014               result = USB_EP_doDataIn(EPx, SetupPacketData, 2, 0);
        MOVS     R3,#+0
        MOVS     R2,#+2
??USB_DeviceSetupPacket_13:
        MOV      R0,R9
        BL       USB_EP_doDataIn
// 1015             }
// 1016           }
// 1017           break;
// 1018         /* CLEAR_FEATURE */
// 1019         case USB_CLEAR_FEATURE:
// 1020           if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS && (recipient == USB_RECIPIENT_INTERFACE ||
// 1021               (recipient == USB_RECIPIENT_ENDPOINT && wIndex >= Num_USB_EndPoints)))
// 1022           {
// 1023             result = USB_ERROR;
// 1024           }
// 1025           else
// 1026           {
// 1027             result = USB_DEVICE_HANDLE_CLEAR_FEATURE(recipient, wValue, wIndex);
// 1028           }
// 1029           break;
// 1030         /* SET_FEATURE */
// 1031         case USB_SET_FEATURE:
// 1032           if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS && (recipient == USB_RECIPIENT_INTERFACE ||
// 1033               (recipient == USB_RECIPIENT_ENDPOINT && wIndex >= Num_USB_EndPoints)))
// 1034           {
// 1035             result = USB_ERROR;
// 1036           }
// 1037           else
// 1038           {
// 1039             result = USB_DEVICE_HANDLE_SET_FEATURE(recipient, wValue, wIndex);
// 1040           }
// 1041           break;
// 1042         /* SET_ADDRESS */
// 1043         case USB_SET_ADDRESS:
// 1044           result = USB_DEVICE_HANDLE_SET_ADDRESS(wValue);
// 1045           /* Set special Status Stage handler that will actually change the address */
// 1046           USB_DeviceContext.Address = wValue;
// 1047           statusAckHandler = USB_Device_setAddressWork;
// 1048           break;
// 1049         /* GET_DESCRIPTOR */
// 1050         case USB_GET_DESCRIPTOR:
// 1051           result = USB_DEVICE_HANDLE_GET_DESCRIPTOR(wValue, wIndex, wLength);
// 1052           break;
// 1053         /* SET_DESCRIPTOR */
// 1054         case USB_SET_DESCRIPTOR:
// 1055           result = USB_DEVICE_HANDLE_SET_DESCRIPTOR(wValue, wIndex, wLength);
// 1056           break;
// 1057         /* GET_CONFIGURATION */
// 1058         case USB_GET_CONFIGURATION:
// 1059           if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
// 1060           {
// 1061             SetupPacketData[0] = 0;
// 1062           }
// 1063           else
// 1064           {
// 1065             SetupPacketData[0] = (uint8_t)USB_DEVICE_HANDLE_GET_CONFIGURATION;
// 1066           }
// 1067           result = USB_EP_doDataIn(EPx, SetupPacketData, 1, 0);
// 1068           break;
// 1069         /* SET_CONFIGURATION */
// 1070         case USB_SET_CONFIGURATION:
// 1071           if (wValue == 0)
// 1072           {
// 1073             USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_ADDRESS;
// 1074           }
// 1075           else
// 1076           {
// 1077             result = USB_DEVICE_HANDLE_SET_CONFIGURATION(wValue);
// 1078             if (result == USB_SUCCESS)
// 1079             {
// 1080               USB_DeviceContext.USB_DeviceState = USB_DEV_STATE_CONFIGURED;
// 1081             }
// 1082           }
// 1083           break;
// 1084         /* GET_INTERFACE */
// 1085         case USB_GET_INTERFACE:
// 1086           if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
// 1087           {
// 1088             result = USB_ERROR;
// 1089           }
// 1090           else
// 1091           {
// 1092             SetupPacketData[0] = (uint8_t)USB_DEVICE_HANDLE_GET_INTERFACE(wIndex);
// 1093             result = USB_EP_doDataIn(EPx, SetupPacketData, 1, 0);
// 1094           }
// 1095           break;
// 1096         /* SET_INTERFACE */
// 1097         case USB_SET_INTERFACE:
// 1098           if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
// 1099           {
// 1100             result = USB_ERROR;
// 1101           }
// 1102           else
// 1103           {
// 1104             result = USB_DEVICE_HANDLE_SET_INTERFACE(wValue, wIndex);
// 1105           }
// 1106           break;
// 1107         /* SYNCH_FRAME */
// 1108         case USB_SYNCH_FRAME:
// 1109           if (USB_DeviceContext.USB_DeviceState == USB_DEV_STATE_ADDRESS)
// 1110           {
// 1111             result = USB_ERROR;
// 1112           }
// 1113           else
// 1114           {
// 1115             result = USB_DEVICE_HANDLE_SYNC_FRAME(wIndex, SetupPacketData);
// 1116             if (result == USB_SUCCESS)
// 1117             {
// 1118               result = USB_EP_doDataIn(EPx, SetupPacketData, 2, 0);
// 1119             }
// 1120           }
// 1121           break;
// 1122         default:
// 1123           result = USB_ERR_INV_REQ;
// 1124       }
// 1125       /* If there were no DATA stage, initiate Status Stage (IN ACK) */
// 1126       if (result == USB_SUCCESS && wLength == 0)
??USB_DeviceSetupPacket_14:
        CMP      R0,#+0
        BNE.N    ??USB_DeviceSetupPacket_15
??USB_DeviceSetupPacket_16:
        CMP      R8,#+0
        BNE.N    ??USB_DeviceSetupPacket_15
// 1127       {
// 1128         result = (USB_SetupPacket->mRequestTypeData & 0x80) == USB_DEVICE_TO_HOST ?
// 1129                         USB_EP_doDataOut(EPx, 0, 0, statusAckHandler) :
// 1130                         USB_EP_doDataIn(EPx, 0, 0, statusAckHandler);
        LDRB     R0,[R6, #+0]
        LSLS     R0,R0,#+24
        MOV      R3,R7
        BPL.N    ??USB_DeviceSetupPacket_17
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOV      R0,R9
        ADD      SP,SP,#+4
        POP      {R4-R9,LR}
        B.N      USB_EP_doDataOut
// 1131       }
??USB_DeviceSetupPacket_18:
        LDRB     R0,[R1, #+4]
        CMP      R0,#+4
        BNE.N    ??USB_DeviceSetupPacket_19
        CMP      R3,#+1
        BEQ.N    ??USB_DeviceSetupPacket_9
        CMP      R3,#+2
        BNE.N    ??USB_DeviceSetupPacket_19
        CMP      R12,#+4
        BGE.N    ??USB_DeviceSetupPacket_9
??USB_DeviceSetupPacket_19:
        MOV      R2,R12
        MOV      R1,R4
        MOV      R0,R3
        BL       USB_DeviceClearFeature
        B.N      ??USB_DeviceSetupPacket_14
??USB_DeviceSetupPacket_20:
        LDRB     R0,[R1, #+4]
        CMP      R0,#+4
        BNE.N    ??USB_DeviceSetupPacket_21
        CMP      R3,#+1
        BEQ.N    ??USB_DeviceSetupPacket_9
        CMP      R3,#+2
        BNE.N    ??USB_DeviceSetupPacket_21
        CMP      R12,#+4
        BGE.N    ??USB_DeviceSetupPacket_9
??USB_DeviceSetupPacket_21:
        MOV      R2,R12
        MOV      R1,R4
        MOV      R0,R3
        BL       USB_DeviceSetFeature
        B.N      ??USB_DeviceSetupPacket_14
??USB_DeviceSetupPacket_22:
        STR      R4,[R1, #+12]
        ADR.W    R7,USB_Device_setAddressWork
        B.N      ??USB_DeviceSetupPacket_16
??USB_DeviceSetupPacket_23:
        MOV      R2,R8
        MOV      R1,R12
        MOV      R0,R4
        BL       USB_CDC_GetDescriptor
        B.N      ??USB_DeviceSetupPacket_14
??USB_DeviceSetupPacket_24:
        LDRB     R0,[R1, #+4]
        CMP      R0,#+4
        ITEE     EQ 
        STRBEQ   R7,[R1, #+0]
        MOVNE    R0,#+1
        STRBNE   R0,[R1, #+0]
??USB_DeviceSetupPacket_25:
        MOVS     R3,#+0
        MOVS     R2,#+1
        B.N      ??USB_DeviceSetupPacket_13
??USB_DeviceSetupPacket_26:
        CBNZ.N   R4,??USB_DeviceSetupPacket_27
        MOVS     R2,#+4
??USB_DeviceSetupPacket_28:
        STRB     R2,[R1, #+4]
        B.N      ??USB_DeviceSetupPacket_16
??USB_DeviceSetupPacket_27:
        CMP      R4,#+1
??USB_DeviceSetupPacket_7:
        BNE.N    ??USB_DeviceSetupPacket_9
        MOVS     R2,#+5
        B.N      ??USB_DeviceSetupPacket_28
??USB_DeviceSetupPacket_29:
        LDRB     R0,[R1, #+4]
        CMP      R0,#+4
        BEQ.N    ??USB_DeviceSetupPacket_9
        STRB     R7,[R1, #+0]
        B.N      ??USB_DeviceSetupPacket_25
??USB_DeviceSetupPacket_30:
        LDRB     R1,[R1, #+4]
        CMP      R1,#+4
        BEQ.N    ??USB_DeviceSetupPacket_9
        CMP      R12,#+0
        BNE.N    ??USB_DeviceSetupPacket_9
        CMP      R4,#+0
        BEQ.N    ??USB_DeviceSetupPacket_16
        B.N      ??USB_DeviceSetupPacket_9
// 1132       break;
// 1133     }
??USB_DeviceSetupPacket_17:
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOV      R0,R9
        ADD      SP,SP,#+4
        POP      {R4-R9,LR}
        B.N      USB_EP_doDataIn
// 1134     /* Class-specific request */
// 1135     case USB_TYPE_CLASS:
// 1136       result = USB_DEVICE_HANDLE_CLASS_REQUEST;
??USB_DeviceSetupPacket_2:
        POP      {R0,R4-R9,LR}
        B.W      USB_CDC_ClassRequest
// 1137       break;
// 1138     /* Vendor-specific request */
// 1139     case USB_TYPE_VENDOR:
// 1140       result = USB_DEVICE_HANDLE_VENDOR_REQUEST;
??USB_DeviceSetupPacket_9:
        MOVS     R0,#+1
// 1141       break;
        B.N      ??USB_DeviceSetupPacket_15
// 1142     default:
// 1143       result = USB_ERR_INV_REQ;
??USB_DeviceSetupPacket_5:
        MOVS     R0,#+2
// 1144   }
// 1145   return result;
??USB_DeviceSetupPacket_15:
        POP      {R1,R4-R9,PC}    ;; return
// 1146 }
// 1147 
// 1148 /** @} */ /* End of group USB_Device_Private_Handlers */
// 1149 
// 1150 /** @defgroup USB_Device_deviceSetupPacket_Handlers USB Device Standard Request specific handlers
// 1151   * @{
// 1152   */
// 1153 
// 1154 /**
// 1155   * @brief  Called on CLEAR_FEATURE request (9.4.1).
// 1156   *
// 1157   * @param  Recipient: Recipient type (from setup packet header).
// 1158   *         This parameter can be one of the following values:
// 1159   *         USB_RECIPIENT_DEVICE, USB_RECIPIENT_INTERFACE,
// 1160   *         USB_RECIPIENT_ENDPOINT, USB_RECIPIENT_OTHER.
// 1161   *
// 1162   * @param  wVALUE: Feature selector.
// 1163   *
// 1164   * @param  wINDEX: Interface or EndPoint number, if Recipient has
// 1165   *         appropriate value.
// 1166   *
// 1167   * @retval USB_Result.
// 1168   *
// 1169   * @note   This handler is called in correct state only. This implementation
// 1170   *         process ENDPOINT_HALT (calling USB_EP_Ready) and DEVICE_REMOTE_WAKEUP
// 1171   *         (clearing RemoteWakeupEnabled context flag) standard features only.
// 1172   */
// 1173 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1174 USB_Result USB_DeviceClearFeature(USB_RequestRecipient_TypeDef Recipient, uint16_t wVALUE, uint16_t wINDEX)
// 1175 {
// 1176   if ((Recipient == USB_RECIPIENT_ENDPOINT) && (wVALUE == USB_ENDPOINT_HALT))
USB_DeviceClearFeature:
        CMP      R0,#+2
        BNE.N    ??USB_DeviceClearFeature_0
        CMP      R1,#+0
        ITT      EQ 
        UXTBEQ   R0,R2
        BEQ.W    USB_EP_Idle
// 1177   {
// 1178     return USB_EP_Idle((USB_EP_TypeDef)wINDEX);
// 1179   }
// 1180   else
// 1181   {
// 1182     return USB_ERROR;
??USB_DeviceClearFeature_0:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1183   }
// 1184 }
// 1185 
// 1186 /**
// 1187   * @brief  Called on SET_FEATURE request (9.4.9).
// 1188   *
// 1189   * @param  Recipient: Recipient type (from setup packet header).
// 1190   *         This parameter can be one of the following values:
// 1191   *         USB_RECIPIENT_DEVICE, USB_RECIPIENT_INTERFACE,
// 1192   *         USB_RECIPIENT_ENDPOINT, USB_RECIPIENT_OTHER.
// 1193   *
// 1194   * @param  wVALUE: Feature selector.
// 1195   *
// 1196   * @param  wINDEX: Interface or EndPoint number, if Recipient has
// 1197   *         appropriate value.
// 1198   *
// 1199   * @retval USB_Result.
// 1200   *
// 1201   * @note   This handler is called in correct state only. This implementation
// 1202   *         process ENDPOINT_HALT (calling USB_EP_Stall) and DEVICE_REMOTE_WAKEUP
// 1203   *         (setting RemoteWakeupEnabled context flag) standard features only.
// 1204   */
// 1205 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1206 USB_Result USB_DeviceSetFeature(USB_RequestRecipient_TypeDef Recipient, uint16_t wVALUE, uint16_t wINDEX)
// 1207 {
// 1208   if ((Recipient == USB_RECIPIENT_ENDPOINT) && (wVALUE == USB_ENDPOINT_HALT))
USB_DeviceSetFeature:
        CMP      R0,#+2
        IT       EQ 
        CMPEQ    R1,#+0
        BNE.N    ??USB_DeviceSetFeature_0
// 1209   {
// 1210     return USB_EP_Stall((USB_EP_TypeDef)wINDEX, USB_STALL_HALT);
        MOVS     R1,#+1
        UXTB     R0,R2
        B.N      USB_EP_Stall
// 1211   }
// 1212   else
// 1213   {
// 1214     return USB_ERROR;
??USB_DeviceSetFeature_0:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1215   }
// 1216 }
// 1217 
// 1218 /** @} */ /* End of group USB_Device_deviceSetupPacket_Handlers */
// 1219 
// 1220 /** @defgroup USB_Device_Status_Stage_Handlers USB Device Service Functions
// 1221   * @{
// 1222   */
// 1223 
// 1224 /**
// 1225   * @brief Implements Status stage of Setup transaction with OUT data stage
// 1226   *        or without data stage. To be used as EndPoint transaction handler.
// 1227   *
// 1228   * @param  EPx: USB EndPoint number.
// 1229   *         This parameter can be one of the following values:
// 1230   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
// 1231   *
// 1232   * @param  Buffer: Pointer to the user's buffer with portion of data
// 1233   *                 to be sent
// 1234   *
// 1235   * @param  Length: Length of data portion
// 1236   *
// 1237   * @retval USB_Result.
// 1238   *
// 1239   * @note   This function interface reflects EndPoint data transmitting handler
// 1240   *         requirements.
// 1241   */
// 1242 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1243 USB_Result USB_DeviceDoStatusInAck(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
// 1244 {
// 1245   return USB_SUCCESS;
USB_DeviceDoStatusInAck:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1246 }
// 1247 
// 1248 /**
// 1249   * @brief Implements Status stage of Setup transaction with IN data stage.
// 1250   *        To be used as EndPoint transaction handler.
// 1251   *
// 1252   * @param  EPx: USB EndPoint number.
// 1253   *         This parameter can be one of the following values:
// 1254   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
// 1255   *
// 1256   * @param  Buffer: Pointer to the user's buffer for next portion of data
// 1257   *
// 1258   * @param  Length: Length of data portion
// 1259   *
// 1260   * @retval USB_Result.
// 1261   *
// 1262   * @note   This function interface reflects EndPoint data transmitting handler
// 1263   *         requirements.
// 1264   */
// 1265 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1266 USB_Result USB_DeviceDoStatusOutAck(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
// 1267 {
// 1268   return USB_EP_doDataOut(EPx, 0, 0, 0);
USB_DeviceDoStatusOutAck:
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOV      R1,R2
        B.N      USB_EP_doDataOut
// 1269 }
// 1270 
// 1271 /**
// 1272   * @brief Implements Status stage of Setup SET_ADDRESS transaction.
// 1273   *        Actually changes the device address. To be used as EndPoint
// 1274   *        transaction handler.
// 1275   *
// 1276   * @param  EPx: USB EndPoint number.
// 1277   *         This parameter can be one of the following values:
// 1278   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
// 1279   *
// 1280   * @param  Buffer: Pointer to the user's buffer with portion of data
// 1281   *                 to be sent
// 1282   *
// 1283   * @param  Length: Length of data portion
// 1284   *
// 1285   * @retval USB_Result.
// 1286   *
// 1287   * @note   This function interface reflects EndPoint data transmitting handler
// 1288   *         requirements.
// 1289   */
// 1290 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1291 static USB_Result USB_Device_setAddressWork(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
// 1292 {
USB_Device_setAddressWork:
        PUSH     {R4,LR}
// 1293   /* Set address */
// 1294   USB_SetSA(USB_DeviceContext.Address);
        LDR.N    R4,??DataTable13_3
        LDR      R0,[R4, #+12]
        BL       USB_SetSA
// 1295   /* Adjust device state */
// 1296   USB_DeviceContext.USB_DeviceState = (USB_DeviceContext.Address ? USB_DEV_STATE_ADDRESS : USB_DEV_STATE_DEFAULT);
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        ITE      NE 
        MOVNE    R0,#+4
        MOVEQ    R0,#+3
        STRB     R0,[R4, #+4]
// 1297 
// 1298   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
// 1299 }
// 1300 
// 1301 /** @} */ /* End of group USB_Device_Status stage _Handlers */
// 1302 
// 1303 /**
// 1304   * @brief  USB interrupt dispatcher, called from interrupt handler
// 1305   *
// 1306   * @param  None
// 1307   *
// 1308   * @retval USB_Result.
// 1309   *
// 1310   * @note   Handles common events (such as Reset) and calls USB_EP_setSetupHandler
// 1311   *         for each EndPoint in use.
// 1312   */
// 1313 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1314 USB_Result USB_DeviceDispatchEvent(void)
// 1315 {
USB_DeviceDispatchEvent:
        PUSH     {R4-R6,LR}
// 1316   uint32_t i;
// 1317   uint32_t USB_IT;
// 1318   USB_Result result = USB_SUCCESS;
// 1319   static volatile uint32_t bHandling = RESET;
// 1320 
// 1321   /* Disable USB interrupts */
// 1322 #ifdef USB_INT_HANDLE_REQUIRED
// 1323   NVIC_DisableIRQ(USB_IRQn);
        LDR.N    R0,??DataTable13_4  ;; 0xe000e180
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
// 1324 #endif /* USB_INT_HANDLE_REQUIRED */
// 1325 
// 1326   if (!bHandling) {
        LDR.N    R4,??DataTable13_3
        LDR      R0,[R4, #+16]
        CBNZ.N   R0,??USB_DeviceDispatchEvent_0
// 1327     bHandling = SET;
        MOVS     R0,#+1
        STR      R0,[R4, #+16]
// 1328 
// 1329     /* Get masked interrupt flags */
// 1330     USB_IT = USB_GetSIS();
        BL       USB_GetSIS
        MOV      R5,R0
// 1331     /* Handle reset */
// 1332     if (USB_IT & USB_SIS_SCRESETEV)
        LSLS     R0,R5,#+29
        ITT      MI 
        MOVMI    R0,#+3
        STRBMI   R0,[R4, #+4]
// 1333     {
// 1334       result = USB_DeviceReset();
// 1335     }
// 1336 
// 1337     /* Invoke End Point dispatchers */
// 1338     for (i = USB_EP0; i < Num_USB_EndPoints; i++)
        MOVS     R6,#+0
// 1339     {
// 1340       USB_EP_dispatchEvent((USB_EP_TypeDef)i, USB_IT);
??USB_DeviceDispatchEvent_1:
        MOV      R1,R5
        UXTB     R0,R6
        BL       USB_EP_dispatchEvent
// 1341     }
        ADDS     R6,R6,#+1
        CMP      R6,#+4
        BCC.N    ??USB_DeviceDispatchEvent_1
// 1342 
// 1343     /* Clear pending bits, except for SCTDONE */
// 1344     USB_SetSIS(USB_IT & (~USB_SIS_SCTDONE_Set));
        LSRS     R0,R5,#+1
        LSLS     R0,R0,#+1
        BL       USB_SetSIS
// 1345 
// 1346     bHandling = RESET;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
// 1347 
// 1348     /* Enable USB interrupts (only after the actual work is done) */
// 1349 #ifdef USB_INT_HANDLE_REQUIRED
// 1350     NVIC_EnableIRQ(USB_IRQn);
        LDR.N    R0,??DataTable13_5  ;; 0xe000e100
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
// 1351 #endif /* USB_INT_HANDLE_REQUIRED */
// 1352   }
// 1353   return result;
??USB_DeviceDispatchEvent_0:
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
// 1354 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     USB_EPContext

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x120001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x80002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     SetupPacketData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0xe000e100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
SetupPacketData:
        DS8 2
        DS8 2
USB_DeviceContext:
        DS8 12
        DS8 4
USB_CurrentSetupPacket:
        DS8 8
// 1355 
// 1356 #ifdef USB_INT_HANDLE_REQUIRED
// 1357 /**
// 1358   * @brief  Default implementation of USB interrupt handler
// 1359   *
// 1360   * @param  None
// 1361   *
// 1362   * @retval None
// 1363   *
// 1364   * @note   To be overwritten, USB_INT_HANDLE_REQUIRED definition should be
// 1365   *         undefined.
// 1366   *
// 1367   */
// 1368 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1369 void USB_IRQHandler(void)
// 1370 {
// 1371   USB_DeviceDispatchEvent();
USB_IRQHandler:
        B.N      USB_DeviceDispatchEvent
// 1372 }
// 1373 #endif /* USB_INT_HANDLE_REQUIRED */
// 1374 
// 1375 
// 1376 /** @defgroup USB_Device_Private_Dummy_Functions USB Device Private Handler Samples
// 1377   * @{
// 1378   */
// 1379 
// 1380 /**
// 1381   * @brief  GET_STATUS standard request handler sample (9.4.5).
// 1382   *
// 1383   * @param  Recipient: Recipient type (from setup packet header).
// 1384   *         This parameter can be one of the following values:
// 1385   *         USB_RECIPIENT_DEVICE, USB_RECIPIENT_INTERFACE,
// 1386   *         USB_RECIPIENT_ENDPOINT, USB_RECIPIENT_OTHER.
// 1387   *
// 1388   * @param  wINDEX: Interface or EndPoint number, if Recipient has
// 1389   *         appropriate value.
// 1390   *
// 1391   * @retval USB_Result.
// 1392   *
// 1393   * @note   Intended to update USB_DeviceStatus field of the device context
// 1394   *         before the status to be sent to host. Data stage begins if USB_SUCCESS
// 1395   *         is returned.
// 1396   */
// 1397 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1398 USB_Result USB_DeviceDummyGetStatus(USB_RequestRecipient_TypeDef Recipient, uint16_t wINDEX)
// 1399 {
// 1400   return USB_SUCCESS;
USB_DeviceDummyGetStatus:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1401 }
// 1402 
// 1403 /**
// 1404   * @brief  SET_ADDRESS standard request handler (preparation) sample (9.4.6).
// 1405   *
// 1406   * @param  wVALUE: New device address
// 1407   *
// 1408   * @retval USB_Result.
// 1409   *
// 1410   * @note   Intended to do perform actions while still in setup transaction
// 1411   *         (actual address change to be performed after status stage completes).
// 1412   *         If value returned is not USB_SUCCESS, transaction is aborted.
// 1413   */
// 1414 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1415 USB_Result USB_DeviceDummySetAddress(uint16_t wVALUE)
// 1416 {
// 1417   return USB_SUCCESS;
USB_DeviceDummySetAddress:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1418 }
// 1419 
// 1420 /**
// 1421   * @brief  GET_DESCRIPTOR standard request handler sample (9.4.3).
// 1422   *
// 1423   * @param  wVALUE: Descriptor Type and Descriptor Index
// 1424   *
// 1425   * @param  wINDEX: Zero or Language ID (see 9.6.7)
// 1426   *
// 1427   * @param  wLENGTH: Amount of data host is willing to receive.
// 1428   *
// 1429   * @retval USB_Result.
// 1430   *
// 1431   * @note   This handler is called in correct state only. It's to be implemented
// 1432   *         in any device class. It is expected to either perform data transfer
// 1433   *         and status stages on its own (calling USB_EP_doDataIn), or return
// 1434   *         value that is not USB_SUCCESS.
// 1435   */
// 1436 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1437 USB_Result USB_DeviceDummyGetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH)
// 1438 {
// 1439   return USB_ERROR;
USB_DeviceDummyGetDescriptor:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1440 }
// 1441 
// 1442 /**
// 1443   * @brief  SET_DESCRIPTOR standard request handler sample (9.4.8).
// 1444   *
// 1445   * @param  wVALUE: Descriptor Type and Descriptor Index
// 1446   *
// 1447   * @param  wINDEX: Zero or Language ID (see 9.6.7)
// 1448   *
// 1449   * @param  wLENGTH: Amount of data to be sent by host.
// 1450   *
// 1451   * @retval USB_Result.
// 1452   *
// 1453   * @note   This handler is called in correct state only. It's to be implemented
// 1454   *         only if the device supports descriptor update by host. It is expected
// 1455   *         to either perform data transfer and status stages on its own (calling
// 1456   *         USB_EP_doDataOut), or return value that is not USB_SUCCESS.
// 1457   */
// 1458 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1459 USB_Result USB_DeviceDummySetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH)
// 1460 {
// 1461   return USB_ERROR;
USB_DeviceDummySetDescriptor:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1462 }
// 1463 
// 1464 /**
// 1465   * @brief  GET_CONFIGURATION standard request handler sample (9.4.2).
// 1466   *
// 1467   * @param  None
// 1468   *
// 1469   * @retval Currently selected configuration number or 0 on error.
// 1470   *
// 1471   * @note   This handler is called in correct state only. It's to be implemented
// 1472   *         if the device supports more than one configuration.
// 1473   */
// 1474 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1475 uint8_t USB_DeviceDummyGetConfiguration(void)
// 1476 {
// 1477   return 1;
USB_DeviceDummyGetConfiguration:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1478 }
// 1479 
// 1480 /**
// 1481   * @brief  SET_CONFIGURATION standard request handler sample (9.4.7).
// 1482   *
// 1483   * @param  wVALUE: Configuration number
// 1484   *
// 1485   * @retval USB_Result.
// 1486   *
// 1487   * @note   This handler is called in correct state only. It's to be implemented
// 1488   *         if the device supports more than one configuration.
// 1489   */
// 1490 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1491 USB_Result USB_DeviceDummySetConfiguration(uint16_t wVALUE)
// 1492 {
// 1493   return USB_ERROR;
USB_DeviceDummySetConfiguration:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1494 }
// 1495 
// 1496 /**
// 1497   * @brief  GET_INTERFACE standard request handler sample (9.4.4).
// 1498   *
// 1499   * @param  wINDEX: Interface number.
// 1500   *
// 1501   * @retval Currently selected alternate setting for the specified interface
// 1502   *         or 0 in case of error.
// 1503   *
// 1504   * @note   This handler is called in correct state only. It's to be implemented
// 1505   *         if the device supports interfaces with alternate settings.
// 1506   */
// 1507 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1508 uint8_t USB_DeviceDummyGetInterface(uint16_t wINDEX)
// 1509 {
// 1510   return 0;
USB_DeviceDummyGetInterface:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1511 }
// 1512 
// 1513 /**
// 1514   * @brief  SET_INTERFACE standard request handler sample (9.4.10).
// 1515   *
// 1516   * @param  wVALUE: Alternate setting to be set.
// 1517   *
// 1518   * @param  wINDEX: Interface number.
// 1519   *
// 1520   * @retval USB_Result.
// 1521   *
// 1522   * @note   This handler is called in correct state only. It's to be implemented
// 1523   *         if the device supports interfaces with alternate settings.
// 1524   */
// 1525 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1526 USB_Result USB_DeviceDummySetInterface(uint16_t wVALUE, uint16_t wINDEX)
// 1527 {
// 1528   return USB_SUCCESS;
USB_DeviceDummySetInterface:
        MOVS     R0,#+0
        BX       LR               ;; return
// 1529 }
// 1530 
// 1531 /**
// 1532   * @brief  SYNC_FRAME standard request handler sample (9.4.11).
// 1533   *
// 1534   * @param  wINDEX: EndPoint number.
// 1535   *
// 1536   * @param  DATA: Pointer for frame number.
// 1537   *
// 1538   * @retval USB_Result.
// 1539   *
// 1540   * @note   This handler is called in correct state only. It's to be implemented
// 1541   *         if some of the device EndPoints support isochronous transfers. It is
// 1542   *         expected to place EndPoint synchronization frame number into DATA pointed
// 1543   *         location or return value that is not USB_SUCCESS.
// 1544   */
// 1545 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1546 USB_Result USB_DeviceDummySyncFrame(uint16_t wINDEX, uint8_t* DATA)
// 1547 {
// 1548   return USB_ERROR;
USB_DeviceDummySyncFrame:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1549 }
// 1550 
// 1551 /**
// 1552   * @brief  Class-type setup request handler sample.
// 1553   *
// 1554   * @param  None
// 1555   *
// 1556   * @retval USB_Result.
// 1557   *
// 1558   * @note   This handler is called in correct state only. It's to be implemented
// 1559   *         the device supports any class-type requests. Request setup packet data
// 1560   *         is accessible by USB_CurrentSetupPacket variable. The overwritten method
// 1561   *         should implement both data (if present) and status transfer stages.
// 1562   */
// 1563 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1564 USB_Result USB_DeviceDummyClassRequest(void)
// 1565 {
// 1566   return USB_ERROR;
USB_DeviceDummyClassRequest:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1567 }
// 1568 
// 1569 /**
// 1570   * @brief  Vendor-type setup request handler sample.
// 1571   *
// 1572   * @param  None
// 1573   *
// 1574   * @retval USB_Result.
// 1575   *
// 1576   * @note   This handler is called in correct state only. It's to be implemented
// 1577   *         the device supports any vendor-type requests. Request setup packet data
// 1578   *         is accessible by USB_CurrentSetupPacket variable. The overwritten method
// 1579   *         should implement both data (if present) and status transfer stages.
// 1580   */
// 1581 
// 1582 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1583 USB_Result USB_DeviceDummyVendorRequest(void)
// 1584 {
// 1585   return USB_ERROR;
USB_DeviceDummyVendorRequest:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1586 }
// 1587 
// 1588 
// 1589 /**
// 1590   * @brief  EndPoint error handler sample.
// 1591   *
// 1592   * @param  EPx: USB EndPoint number.
// 1593   *         This parameter can be one of the following values:
// 1594   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
// 1595   *
// 1596   * @param  STS: USB_SEPx.STS register value.
// 1597   *
// 1598   * @param  TS: USB_SEPx.TS register value.
// 1599   *
// 1600   * @param  CTRL: USB_SEPx.CTRL register value.
// 1601   *
// 1602   * @retval USB_Result.
// 1603   *
// 1604   * @note   This function interface reflects EndPoint error handler
// 1605   *         requirements. When called on IN transaction error:
// 1606   *          - if it hasn't start another transaction and returns USB_SUCCESS,
// 1607   *            then retry of data transmission would occur;
// 1608   *          - if it returns error code, EndPoint would be switched to
// 1609   *            NAK/STALL state.
// 1610   */
// 1611 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1612 USB_Result USB_DeviceDummyDataError(USB_EP_TypeDef EPx, uint32_t STS, uint32_t TS, uint32_t CTRL)
// 1613 {
// 1614   return USB_ERROR;
USB_DeviceDummyDataError:
        MOVS     R0,#+1
        BX       LR               ;; return
// 1615 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1616 
// 1617 /** @} */ /* End of group USB_Device_Private_Dummy_Functions */
// 1618 
// 1619 
// 1620 /** @} */ /* End of group USB_Device_Private_Functions */
// 1621 
// 1622 /** @} */ /* End of group USB_Device */
// 1623 
// 1624 /** @} */ /* End of group USB_DEVICE_AND_CDC */
// 1625 
// 1626 /** @} */ /* End of group MDR32F9Qx_StdPeriph_Driver */
// 1627 
// 1628 /******************* (C) COPYRIGHT 2011 Phyton *********
// 1629 *
// 1630 * END OF FILE MDR32F9Qx_usb_device.c */
// 1631 
// 
//   204 bytes in section .bss
// 1 600 bytes in section .text
// 
// 1 600 bytes of CODE memory
//   204 bytes of DATA memory
//
//Errors: none
//Warnings: 1
