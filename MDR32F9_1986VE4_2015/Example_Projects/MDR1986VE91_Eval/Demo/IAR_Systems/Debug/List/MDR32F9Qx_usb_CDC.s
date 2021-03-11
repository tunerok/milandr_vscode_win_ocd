///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:58 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\USB_Library\MDR32F9Qx_usb_CDC.c     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\USB_Library\MDR32F9Qx_usb_CDC.c     /
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
//                    CDC.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_usb_CDC

        #define SHT_PROGBITS 0x1

        EXTERN USB_CDC_GetLineCoding
        EXTERN USB_CDC_RecieveData
        EXTERN USB_CDC_SetLineCoding
        EXTERN USB_CurrentSetupPacket
        EXTERN USB_DeviceDoStatusOutAck
        EXTERN USB_DeviceReset
        EXTERN USB_EP_Init
        EXTERN USB_EP_Stall
        EXTERN USB_EP_doDataIn
        EXTERN USB_EP_doDataOut

        PUBLIC USB_CDC_ClassRequest
        PUBLIC USB_CDC_DummyDataReceive
        PUBLIC USB_CDC_DummyDataSent
        PUBLIC USB_CDC_DummyGetLineCoding
        PUBLIC USB_CDC_DummySetLineCoding
        PUBLIC USB_CDC_GetDescriptor
        PUBLIC USB_CDC_Init
        PUBLIC USB_CDC_ReceiveStart
        PUBLIC USB_CDC_ReceiveStop
        PUBLIC USB_CDC_Reset
        PUBLIC USB_CDC_SendData
        PUBLIC USB_CDC_SetReceiveBuffer

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\USB_Library\MDR32F9Qx_usb_CDC.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    USB_Library\MDR32F9Qx_usb_CDC.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    02/03/2011
//    7   * @brief   This file contains the implementation of the Communication Device
//    8   *          Class driver as of:
//    9   *          [1] Communication Device Class driver as of USB Class Definitions
//   10   *              for Communications Devices Rev.1.2 (Errata 1);
//   11   *          [2] USB Communication Class Subclass Specification for PSTN
//   12   *              Devices Rev.1.2.
//   13   ******************************************************************************
//   14   * <br><br>
//   15   *
//   16   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   17   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   18   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   19   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   20   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   21   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   22   *
//   23   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   24   ******************************************************************************
//   25   * FILE MDR32F9Qx_usb_device.c
//   26   */
//   27 
//   28 /* Includes ------------------------------------------------------------------*/
//   29 /* Includes ------------------------------------------------------------------*/
//   30 #include "MDR32F9Qx_config.h"
//   31 #include "MDR32F9Qx_usb_handlers.h"
//   32 
//   33 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_USB_CDC_C
//   34 
//   35 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   36   * @{
//   37   */
//   38 
//   39 /** @addtogroup USB_DEVICE_AND_CDC USB DEVICE AND CDC
//   40   * @{
//   41   */
//   42 
//   43 /** @defgroup USB_CDC USB Communication Device Class
//   44   * @{
//   45   */
//   46 
//   47 /** @defgroup USB_CDC_Private_Types USB CDC Private Types
//   48   * @{
//   49   */
//   50 
//   51 /**
//   52   * @brief CDC internal context type
//   53   */
//   54 
//   55 typedef struct {
//   56     uint8_t* CDC_ReceiveBuffer;
//   57     uint32_t CDC_DataPortionLength;
//   58     volatile USB_Result CDC_SendDataStatus,
//   59                         CDC_ReceiveDataStatus;
//   60 }USB_CDCContext_TypeDef;
//   61 
//   62 
//   63 /** @} */ /* End of group USB_CDC_Private_Types */
//   64 
//   65 /** @defgroup USB_CDC_Private_Constants USB CDC Private Constants
//   66   * @{
//   67   */
//   68 
//   69 #ifdef USB_REMOTE_WAKEUP_SUPPORTED
//   70 #define USB_REMOTE_WAKEUP                    0x20
//   71 #else
//   72 #define USB_REMOTE_WAKEUP                    0
//   73 #endif /* USB_REMOTE_WAKEUP_SUPPORTED */
//   74 #ifdef USB_SELF_POWERED_SUPPORTED
//   75 #define USB_SELF_POWERED                     0x40
//   76 #else
//   77 #define USB_SELF_POWERED                     0
//   78 #endif /* USB_SELF_POWERED_SUPPORTED */
//   79 #define USB_POWER_ATTIBUTES                  0x80 | USB_REMOTE_WAKEUP | USB_SELF_POWERED
//   80 
//   81 /** @} */ /* End of group USB_CDC_Private_Constants */
//   82 
//   83 /** @defgroup USB_CDC_Private_Variables USB CDC Private Variables
//   84   * @{
//   85   */
//   86 
//   87 /**
//   88   * @brief CDC internal context
//   89   */
//   90 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   91 static USB_CDCContext_TypeDef USB_CDCContext;
USB_CDCContext:
        DS8 12
//   92 
//   93 /**
//   94   * @brief Standard Device Descriptor
//   95   */
//   96 
//   97 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   98 static uint8_t Usb_CDC_Device_Descriptor[0x12] =
Usb_CDC_Device_Descriptor:
        DATA
        DC8 18, 1, 16, 1, 2, 0, 0, 32, 131, 4, 37, 241, 0, 0, 0, 0, 0, 1, 0, 0
        DC8 9, 2, 67, 0, 2, 1, 0, 128, 50, 9, 4, 0, 0, 1, 2, 2, 1, 0, 5, 36, 0
        DC8 16, 1, 5, 36, 1, 0, 1, 4, 36, 2, 6, 5, 36, 6, 0, 1, 7, 5, 130, 3
        DC8 32, 0, 2, 9, 4, 1, 0, 2, 10, 0, 0, 0, 7, 5, 129, 2, 32, 0, 0, 7, 5
        DC8 3, 2, 32, 0, 0, 0
//   99 {
//  100     0x12,            /* bLength                  */
//  101     0x01,            /* bDescriptorType (Device) */
//  102     0x10, 0x01,      /* bcdUSB                   */
//  103     0x02,            /* bDeviceClass (CDC)       */
//  104     0x00,            /* bDeviceSubClass          */
//  105     0x00,            /* bDeviceProtocol          */
//  106     MAX_PACKET_SIZE, /* bMaxPacketSize0          */
//  107     0x83, 0x04,      /* idVendor                 */
//  108     0x25, 0xF1,      /* idProduct                */
//  109     0x00, 0x00,      /* bcdDevice                */
//  110     0x00,            /* iManufacturer            */
//  111     0x00,            /* iProduct                 */
//  112     0x00,            /* iSerialNumber            */
//  113     0x01             /* bNumConfigurations       */
//  114 };
//  115 
//  116 /**
//  117   * @brief Standard Configuration Descriptor
//  118   */
//  119 
//  120 #define USB_CDC_CONFIG_DESCR_LENGTH   0x43
//  121 
//  122 static uint8_t Usb_CDC_Configuration_Descriptor[0x43] =
//  123 {
//  124     /* Configuration Descriptor */
//  125     0x09,                /* bLength                         */
//  126     0x02,                /* bDescriptorType (Configuration) */
//  127     0x43, 0x00,          /* wTotalLength                    */
//  128     0x02,                /* bNumInterfaces                  */
//  129     0x01,                /* bConfigurationValue             */
//  130     0x00,                /* iConfiguration                  */
//  131     USB_POWER_ATTIBUTES, /* bmAttributes                    */
//  132     0x32,                /* bMaxPower (100 mA)              */
//  133 
//  134     /* Interface Descriptor */
//  135     0x09, /* bLength                                         */
//  136     0x04, /* bDescriptorType (Interface)                     */
//  137     0x00, /* bInterfaceNumber                                */
//  138     0x00, /* bAlternateSetting                               */
//  139     0x01, /* bNumEndpoints                                   */
//  140     0x02, /* bInterfaceClass (Communication Interface Class) */
//  141     0x02, /* bInterfaceSubClass (Abstract Control Model)     */
//  142     0x01, /* bInterfaceProtocol (Common AT commands)         */
//  143     0x00, /* iInterface                                      */
//  144     /* Header Functional Descriptor */
//  145     0x05,       /* bLength (Endpoint Descriptor size)        */
//  146     0x24,       /* bDescriptorType (CS_INTERFACE)            */
//  147     0x00,       /* bDescriptorSubtype (Header Func Desc)     */
//  148     0x10, 0x01, /* bcdCDC (Release Number)                   */
//  149     /* Call Managment Functional Descriptor */
//  150     0x05,       /* bFunctionLength                           */
//  151     0x24,       /* bDescriptorType (CS_INTERFACE)            */
//  152     0x01,       /* bDescriptorSubtype (Call Management)      */
//  153     0x00,       /* bmCapabilities:                           */
//  154     0x01,       /* bDataInterface                            */
//  155     /* ACM Functional Descriptor */
//  156     0x04,       /* bFunctionLength                           */
//  157     0x24,       /* bDescriptorType (CS_INTERFACE)            */
//  158     0x02,       /* bDescriptorSubtype (Abstract Control Management)*/
//  159     0x06,       /* bmCapabilities                            */
//  160     /* Union Functional Descriptor */
//  161     0x05,       /* bFunctionLength                           */
//  162     0x24,       /* bDescriptorType (CS_INTERFACE)            */
//  163     0x06,       /* bDescriptorSubtype (Union func desc)      */
//  164     0x00,       /* bMasterInterface (Communication class interface) */
//  165     0x01,       /* bSlaveInterface0 (Data Class Interface)   */
//  166     /* Endpoint 2 Descriptor */
//  167     0x07,       /* bLength (Endpoint Descriptor size)        */
//  168     0x05,       /* bDescriptorType (Endpoint)                */
//  169     0x82,       /* bEndpointAddress (IN | 2)                 */
//  170     0x03,       /* bmAttributes (Interrupt)                  */
//  171     MAX_PACKET_SIZE, 0x00, /* wMaxPacketSize                 */
//  172     0x02,       /* bInterval                                 */
//  173     /* Data class interface Descriptor */
//  174     0x09,       /* bLength (Endpoint Descriptor size)        */
//  175     0x04,       /* bDescriptorType (Interface)               */
//  176     0x01,       /* bInterfaceNumber                          */
//  177     0x00,       /* bAlternateSetting                         */
//  178     0x02,       /* bNumEndpoints (Two endpoints used)        */
//  179     0x0A,       /* bInterfaceClass (CDC)                     */
//  180     0x00,       /* bInterfaceSubClass                        */
//  181     0x00,       /* bInterfaceProtocol                        */
//  182     0x00,       /* iInterface                                */
//  183     /* Endpoint 1 Descriptor */
//  184     0x07,       /* bLength (Endpoint Descriptor size)        */
//  185     0x05,       /* bDescriptorType (Endpoint)                */
//  186     0x81,       /* bEndpointAddress (IN | 1)                 */
//  187     0x02,       /* bmAttributes (Bulk)                       */
//  188     MAX_PACKET_SIZE, 0x00, /* wMaxPacketSize                 */
//  189     0x00,       /* bInterval                                 */
//  190     /* Endpoint 3 Descriptor */
//  191     0x07,       /* bLength (Endpoint Descriptor size)        */
//  192     0x05,       /* bDescriptorType (Endpoint)                */
//  193     0x03,       /* bEndpointAddress (OUT | 3)                */
//  194     0x02,       /* bmAttributes (Bulk)                       */
//  195     MAX_PACKET_SIZE, 0x00, /* wMaxPacketSize                 */
//  196     0x00,       /* bInterval                                 */
//  197 };
//  198 
//  199 #if (defined(USB_CDC_LINE_CODING_SUPPORTED) || defined(USB_CDC_COMM_FEATURE_SUPPORTED))
//  200 /**
//  201   * @brief Buffer for Line Coding and Communication Feature data stage
//  202   */
//  203 static union
//  204 {
//  205 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//  206   USB_CDC_LineCoding_TypeDef LineCoding;
//  207 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//  208 #ifdef USB_CDC_COMM_FEATURE_SUPPORTED
//  209   uint16_t CommFeature;
//  210 #endif /* USB_CDC_COMM_FEATURE_SUPPORTED */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  211 } CDC_ClassPacketData;
CDC_ClassPacketData:
        DS8 8
//  212 #endif /* USB_CDC_LINE_CODING_SUPPORTED || USB_CDC_COMM_FEATURE_SUPPORTED */
//  213 
//  214 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  215 /**
//  216   * @brief Buffer Line State Report package
//  217   */
//  218 static struct
//  219 {
//  220   USB_SetupPacket_TypeDef SetupPacket;
//  221   uint16_t LineState;
//  222 } CDC_StateReportPacket =
//  223 {
//  224  {
//  225    (USB_DEVICE_TO_HOST | USB_TYPE_CLASS | USB_RECIPIENT_INTERFACE), /* mRequestTypeData */
//  226    USB_CDC_SERIAL_STATE,                                            /* bRequest */
//  227    0,                                                               /* wValue */
//  228    1,                                                               /* wIndex */
//  229    2                                                                /* wLength */
//  230  },
//  231  0                                                                  /* LineState */
//  232 };
//  233 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  234 
//  235 /** @} */ /* End of group USB_CDC_Private_Variables */
//  236 
//  237 /** @defgroup USB_CDC_Private_Macros USB CDC Private Macros
//  238   * @{
//  239   */
//  240 
//  241 /** @} */ /* End of group USB_CDC_Private_Macros */
//  242 
//  243 /** @defgroup USB_CDC_Private_FunctionPrototypes USB CDC Private Function Prototypes
//  244   * @{
//  245   */
//  246 
//  247 static USB_Result USB_CDC_OnDataSent(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);
//  248 static USB_Result USB_CDC_OnDataReceive(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);
//  249 static USB_Result USB_CDC_DoDataOut(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length);
//  250 
//  251 /** @} */ /* End of group USB_CDC_Private_FunctionPrototypes */
//  252 
//  253 /** @defgroup USB_CDC_Private_Functions USB CDC Private Functions
//  254   * @{
//  255   */
//  256 
//  257 
//  258 /**
//  259   * @brief  Initializes CDC context.
//  260   *
//  261   * @param  ReceiveBuffer: Pointer to memory buffer to place incoming
//  262   *         data to. The buffer length should be equal or greater
//  263   *         then MAX_PACKET_LENGTH and DataPortionLength.
//  264   *
//  265   * @param  DataPortionLength: Amount of data received that triggers
//  266   *         USB_CDC_HANDLE_DATA_RECEIVE handler to be called. If any
//  267   *         data should be immediately handled, this parameter should
//  268   *         be set to 1.
//  269   *
//  270   * @param  DataPortionLength: Amount of data received that triggers
//  271   *         USB_CDC_HANDLE_DATA_RECEIVE handler to be called. If any
//  272   *         data should be immediately handled, this parameter should
//  273   *         be set to 1.
//  274   *
//  275   * @param  StartReceiving: Flag indicating whether the device will accept
//  276   *         incoming data immediately after USB_CDC_Reset is called for the
//  277   *         first time.
//  278   *
//  279   * @retval USB_Result.
//  280   */
//  281 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  282 USB_Result USB_CDC_Init(uint8_t* ReceiveBuffer, uint32_t DataPortionLength, FlagStatus StartReceiving)
//  283 {
USB_CDC_Init:
        PUSH     {R4,LR}
        MOV      R4,R2
//  284   USB_CDC_SetReceiveBuffer(ReceiveBuffer, DataPortionLength);
        BL       USB_CDC_SetReceiveBuffer
//  285   USB_CDCContext.CDC_SendDataStatus = USB_SUCCESS;
        LDR.N    R0,??DataTable10
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  286   USB_CDCContext.CDC_ReceiveDataStatus = StartReceiving ? USB_SUCCESS : USB_ERR_BUSY;
        CBNZ.N   R4,??USB_CDC_Init_0
        MOV      R1,#+512
??USB_CDC_Init_0:
        STRH     R1,[R0, #+10]
//  287 
//  288   return USB_SUCCESS;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  289 }
//  290 
//  291 
//  292 /**
//  293   * @brief  Sets the (new) buffer for incoming data.
//  294   *
//  295   * @param  ReceiveBuffer: Pointer to memory buffer to place incoming
//  296   *         data to. The buffer length should be equal or greater
//  297   *         then MAX_PACKET_LENGTH and DataPortionLength.
//  298   *
//  299   * @param  DataPortionLength: Amount of data received that triggers
//  300   *         USB_CDC_HANDLE_DATA_RECEIVE handler to be called. If any
//  301   *         data should be immediately handled, this parameter should
//  302   *         be set to 1.
//  303   *
//  304   * @retval USB_Result.
//  305   */
//  306 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  307 USB_Result USB_CDC_SetReceiveBuffer(uint8_t* ReceiveBuffer, uint32_t DataPortionLength)
//  308 {
//  309   /* Check the parameters */
//  310   assert_param(ReceiveBuffer);
//  311 
//  312   USB_CDCContext.CDC_ReceiveBuffer = ReceiveBuffer;
USB_CDC_SetReceiveBuffer:
        LDR.N    R2,??DataTable10
        STR      R0,[R2, #+0]
//  313   USB_CDCContext.CDC_DataPortionLength = DataPortionLength;
        STR      R1,[R2, #+4]
//  314 
//  315   return USB_SUCCESS;
        MOVS     R0,#+0
        BX       LR               ;; return
//  316 }
//  317 
//  318 /**
//  319   * @brief  Starts (or restarts) incoming data receiving.
//  320   *
//  321   * @retval USB_Result.
//  322   *
//  323   */
//  324 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 USB_Result USB_CDC_ReceiveStart(void)
//  326 {
//  327   USB_CDCContext.CDC_ReceiveDataStatus = USB_SUCCESS;
USB_CDC_ReceiveStart:
        LDR.N    R0,??DataTable10
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
//  328   return USB_EP_doDataOut(USB_CDC_EP_RECEIVE, USB_CDCContext.CDC_ReceiveBuffer,
//  329             USB_CDCContext.CDC_DataPortionLength, USB_CDC_OnDataReceive);
        ADR.W    R3,USB_CDC_OnDataReceive
        LDR      R2,[R0, #+4]
        LDR      R1,[R0, #+0]
        MOVS     R0,#+3
        B.W      USB_EP_doDataOut
//  330 }
//  331 
//  332 /**
//  333   * @brief  Stops (suspends) incoming data receiving.
//  334   *
//  335   * @retval USB_Result.
//  336   *
//  337   */
//  338 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  339 USB_Result USB_CDC_ReceiveStop(void)
//  340 {
//  341   USB_CDCContext.CDC_ReceiveDataStatus = USB_ERR_BUSY;
USB_CDC_ReceiveStop:
        LDR.N    R0,??DataTable10
        MOV      R1,#+512
        STRH     R1,[R0, #+10]
//  342   return USB_EP_Stall(USB_CDC_EP_RECEIVE, USB_STALL_PROTO);
        MOVS     R1,#+0
        MOVS     R0,#+3
        B.W      USB_EP_Stall
//  343 }
//  344 
//  345 /**
//  346   * @brief  Initiates sending of data portion to the host
//  347   *
//  348   * @param  Buffer: Pointer to the user's buffer containing data
//  349   *         to be sent
//  350   *
//  351   * @param  Length: Length of data
//  352   *
//  353   * @retval USB_Result.
//  354   *
//  355   * @note   The function returns immediately.
//  356   */
//  357 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 USB_Result USB_CDC_SendData(uint8_t* Buffer, uint32_t Length)
//  359 {
USB_CDC_SendData:
        PUSH     {R4,LR}
        MOV      R4,R0
//  360   /* Check if previous data sending is complete */
//  361   USB_Result result = USB_CDCContext.CDC_SendDataStatus;
        LDR.N    R2,??DataTable10
        LDRSH    R0,[R2, #+8]
//  362 
//  363   /* If data can be sent, set "busy" flag and initiate data portion transfer */
//  364   if (result == USB_SUCCESS)
        CBNZ.N   R0,??USB_CDC_SendData_0
//  365   {
//  366     USB_CDCContext.CDC_SendDataStatus = USB_ERR_BUSY;
        MOV      R0,#+512
        STRH     R0,[R2, #+8]
//  367     result = USB_EP_doDataIn(USB_CDC_EP_SEND, Buffer, Length, USB_CDC_OnDataSent);
        ADR.W    R3,USB_CDC_OnDataSent
        MOV      R2,R1
        MOV      R1,R4
        MOVS     R0,#+1
        B.N      ?Subroutine0
//  368   }
//  369   return result;
??USB_CDC_SendData_0:
        POP      {R4,PC}          ;; return
//  370 }
//  371 
//  372 #ifdef USB_CDC_STATE_REPORTING_SUPPORTED
//  373 /**
//  374   * @brief  Sends special Line State Report to host
//  375   *
//  376   * @param  LineState: Coded line state.
//  377   *         This parameter can be any combination of the following values:
//  378   *           @arg USB_CDC_bRxCarrier
//  379   *           @arg USB_CDC_bTxCarrier
//  380   *           @arg USB_CDC_bBreak
//  381   *           @arg USB_CDC_bRingSignal
//  382   *           @arg USB_CDC_bFraming
//  383   *           @arg USB_CDC_bParity
//  384   *           @arg USB_CDC_bOverRun
//  385   *
//  386   * @retval USB_Result.
//  387   *
//  388   * @note   The function returns immediately.
//  389   */
//  390 
//  391 USB_Result USB_CDC_ReportState(uint16_t LineState)
//  392 {
//  393   CDC_StateReportPacket.LineState = LineState;
//  394   return USB_EP_doDataIn(USB_CDC_EP_STATE, (uint8_t*)&CDC_StateReportPacket, sizeof(CDC_StateReportPacket), 0);
//  395 }
//  396 #endif /* USB_CDC_STATE_REPORTING_SUPPORTED */
//  397 
//  398 /** @defgroup USB_CDC_Private_Overwritten_Device_Handlers USB CDC Overwritten Device Handlers implementation
//  399   * @{
//  400   */
//  401 
//  402 /**
//  403   * @brief  Initial CDC setup/reset
//  404   *
//  405   * @param  None
//  406   *
//  407   * @retval USB_Result.
//  408   */
//  409 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  410 USB_Result USB_CDC_Reset(void)
//  411 {
USB_CDC_Reset:
        PUSH     {R4,LR}
//  412   USB_Result result;
//  413 
//  414   /* Inherited handler call */
//  415   result = USB_DeviceReset();
        BL       USB_DeviceReset
        MOVS     R4,R0
//  416 
//  417   if (result == USB_SUCCESS)
        BNE.N    ??USB_CDC_Reset_0
//  418   {
//  419     /* EP1, EP2 and EP3 initialization. Note: DATA1 bit would be toggled to DATA0 on the first
//  420      * IN transaction */
//  421     USB_EP_Init(USB_CDC_EP_SEND, USB_SEPx_CTRL_EPEN_Enable | USB_SEPx_CTRL_EPDATASEQ_Data1,
//  422                 USB_CDC_HANDLE_SEND_ERROR);
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       USB_EP_Init
//  423     USB_EP_Init(USB_CDC_EP_STATE, USB_SEPx_CTRL_EPEN_Enable | USB_SEPx_CTRL_EPDATASEQ_Data1,
//  424                 USB_CDC_HANDLE_LINE_STATE_REPORT_SEND_ERROR);
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+2
        BL       USB_EP_Init
//  425     USB_EP_Init(USB_CDC_EP_RECEIVE, USB_SEPx_CTRL_EPEN_Enable, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       USB_EP_Init
//  426 
//  427     /* Start to listen for incoming data, if desired */
//  428     if (USB_CDCContext.CDC_ReceiveDataStatus == USB_SUCCESS)
        LDR.N    R0,??DataTable10
        LDRSH    R1,[R0, #+10]
        CBNZ.N   R1,??USB_CDC_Reset_0
//  429     {
//  430       result = USB_EP_doDataOut(USB_CDC_EP_RECEIVE, USB_CDCContext.CDC_ReceiveBuffer,
//  431                 USB_CDCContext.CDC_DataPortionLength, USB_CDC_OnDataReceive);
        ADR.W    R3,USB_CDC_OnDataReceive
        LDR      R2,[R0, #+4]
        LDR      R1,[R0, #+0]
        MOVS     R0,#+3
        BL       USB_EP_doDataOut
        MOV      R4,R0
//  432     }
//  433   }
//  434   return result;
??USB_CDC_Reset_0:
        MOV      R0,R4
        POP      {R4,PC}          ;; return
//  435 }
//  436 
//  437 /**
//  438   * @brief  GET_DESCRIPTOR standard request handler implementation for CDC.
//  439   *
//  440   * @param  wVALUE: Descriptor Type and Descriptor Index
//  441   *
//  442   * @param  wINDEX: Not used
//  443   *
//  444   * @param  wLENGTH: Amount of data host is willing to receive.
//  445   *
//  446   * @retval USB_Result.
//  447   *
//  448   * @note   This handler transmits to host an appropriate CDC descriptor data.
//  449   */
//  450 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  451 USB_Result USB_CDC_GetDescriptor(uint16_t wVALUE, uint16_t wINDEX, uint16_t wLENGTH)
//  452 {
//  453   uint8_t* pDescr = 0;
//  454   uint32_t length;
//  455   USB_Result result = USB_SUCCESS;
//  456 
//  457   /* Only 0 configuration is supported; for device request this field must be 0 */
//  458   if ((wVALUE & 0xFF) != 0)
USB_CDC_GetDescriptor:
        UXTB     R1,R0
        CBNZ.N   R1,??USB_CDC_GetDescriptor_0
//  459   {
//  460     result = USB_ERROR;
//  461   }
//  462   else
//  463   {
//  464     switch (wVALUE >> 8)      /* Descriptor type */
        LDR.N    R1,??DataTable10_1
        LSRS     R0,R0,#+8
        CMP      R0,#+1
        BEQ.N    ??USB_CDC_GetDescriptor_1
        CMP      R0,#+2
        BEQ.N    ??USB_CDC_GetDescriptor_2
        B.N      ??USB_CDC_GetDescriptor_0
//  465     {
//  466       case USB_DEVICE:
//  467         pDescr = Usb_CDC_Device_Descriptor;
//  468         length = 0x12;
??USB_CDC_GetDescriptor_1:
        MOVS     R0,#+18
//  469         break;
//  470       case USB_CONFIGURATION:
//  471         pDescr = Usb_CDC_Configuration_Descriptor;
//  472         length = 0x43;
//  473         break;
//  474       default:
//  475         result = USB_ERROR;
//  476     }
//  477   }
//  478 
//  479   if (result == USB_SUCCESS)
//  480   {
//  481     if (length > wLENGTH)
??USB_CDC_GetDescriptor_3:
        CMP      R2,R0
        IT       CC 
        MOVCC    R0,R2
//  482     {
//  483       length = wLENGTH;
//  484     }
//  485     result = USB_EP_doDataIn(USB_EP0, pDescr, length, USB_DeviceDoStatusOutAck);
        LDR.N    R3,??DataTable10_2
        MOV      R2,R0
        MOVS     R0,#+0
        B.W      USB_EP_doDataIn
//  486   }
??USB_CDC_GetDescriptor_2:
        ADDS     R1,R1,#+20
        MOVS     R0,#+67
        B.N      ??USB_CDC_GetDescriptor_3
??USB_CDC_GetDescriptor_0:
        MOVS     R0,#+1
        BX       LR
//  487   return result;
//  488 }
//  489 
//  490 /**
//  491   * @brief  Class-type setup request handler for CDC.
//  492   *
//  493   * @param  None
//  494   *
//  495   * @retval USB_Result.
//  496   */
//  497 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  498 USB_Result USB_CDC_ClassRequest(void)
//  499 {
USB_CDC_ClassRequest:
        PUSH     {R3-R5,LR}
//  500   USB_Result result = USB_SUCCESS;
//  501 
//  502   uint16_t wValue = USB_CurrentSetupPacket.wValue,
//  503            wIndex = USB_CurrentSetupPacket.wIndex,
        LDR.N    R1,??DataTable10_3
        LDRH     R0,[R1, #+4]
//  504            wLength = USB_CurrentSetupPacket.wLength;
        LDRH     R4,[R1, #+6]
//  505 
//  506   /* Specific requests */
//  507   switch (USB_CurrentSetupPacket.bRequest)
        LDR.N    R5,??DataTable10_4
        LDRB     R1,[R1, #+1]
        CMP      R1,#+32
        BEQ.N    ??USB_CDC_ClassRequest_0
        CMP      R1,#+33
        BEQ.N    ??USB_CDC_ClassRequest_1
        B.N      ??USB_CDC_ClassRequest_2
//  508   {
//  509 #ifdef USB_CDC_ENCAPSULATION_SUPPORTED
//  510     /* SEND_ENCAPSULATED_COMMAND */
//  511     case USB_CDC_SEND_ENCAPSULATED_COMMAND:
//  512       result = USB_CDC_HANDLE_SEND_ENCAPSULATED_CMD(wIndex, wLength);
//  513       break;
//  514     /* GET_ENCAPSULATED_RESPONSE */
//  515     case USB_CDC_GET_ENCAPSULATED_RESPONSE:
//  516       result = USB_CDC_HANDLE_GET_ENCAPSULATED_RESP(wIndex, wLength);
//  517       break;
//  518 #endif /* USB_CDC_ENCAPSULATION_SUPPORTED */
//  519 
//  520 #ifdef USB_CDC_COMM_FEATURE_SUPPORTED
//  521     /* SET_COMM_FEATURE */
//  522     case USB_CDC_SET_COMM_FEATURE:
//  523       if (wLength == 2)
//  524       {
//  525         result = USB_EP_doDataOut(USB_EP0, (uint8_t*)&CDC_ClassPacketData, wLength, USB_CDC_DoDataOut);
//  526       }
//  527       else
//  528       {
//  529         result = USB_ERR_INV_REQ;
//  530       }
//  531       break;
//  532     /* GET_COMM_FEATURE */
//  533     case USB_CDC_GET_COMM_FEATURE:
//  534       if (wLength == 2)
//  535       {
//  536         result = USB_CDC_HANDLE_GET_COMM_FEATURE(wValue, wIndex, &CDC_ClassPacketData.CommFeature);
//  537         if (result == USB_SUCCESS)
//  538         {
//  539           result = USB_EP_doDataIn(USB_EP0, (uint8_t*)&CDC_ClassPacketData, wLength, USB_DeviceDoStatusOutAck);
//  540         }
//  541       }
//  542       else
//  543       {
//  544         result = USB_ERR_INV_REQ;
//  545       }
//  546       break;
//  547     /* CLEAR_COMM_FEATURE */
//  548     case USB_CDC_CLEAR_COMM_FEATURE:
//  549       result = USB_CDC_HANDLE_CLEAR_COMM_FEATURE(wValue, wIndex);
//  550       break;
//  551 #endif /* USB_CDC_COMM_FEATURE_SUPPORTED */
//  552 
//  553 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//  554     /* SET_LINE_CODING */
//  555     case USB_CDC_SET_LINE_CODING:
//  556       if (wLength == 7)
??USB_CDC_ClassRequest_0:
        CMP      R4,#+7
        BNE.N    ??USB_CDC_ClassRequest_3
//  557       {
//  558         result = USB_EP_doDataOut(USB_EP0, (uint8_t*)&CDC_ClassPacketData, wLength, USB_CDC_DoDataOut);
        ADR.W    R3,USB_CDC_DoDataOut
        MOVS     R2,#+7
        MOV      R1,R5
        MOVS     R0,#+0
        ADD      SP,SP,#+4
        POP      {R4,R5,LR}
        B.W      USB_EP_doDataOut
//  559       }
//  560       else
//  561       {
//  562         result = USB_ERR_INV_REQ;
//  563       }
//  564       break;
//  565     /* GET_LINE_CODING */
//  566     case USB_CDC_GET_LINE_CODING:
//  567       if (wLength == 7)
??USB_CDC_ClassRequest_1:
        CMP      R4,#+7
        BNE.N    ??USB_CDC_ClassRequest_3
//  568       {
//  569         result = USB_CDC_HANDLE_GET_LINE_CODING(wIndex, &CDC_ClassPacketData.LineCoding);
        MOV      R1,R5
        BL       USB_CDC_GetLineCoding
//  570         if (result == USB_SUCCESS)
        CBNZ.N   R0,??USB_CDC_ClassRequest_4
//  571         {
//  572           result = USB_EP_doDataIn(USB_EP0, (uint8_t*)&CDC_ClassPacketData, wLength, USB_DeviceDoStatusOutAck);
        LDR.N    R3,??DataTable10_2
        MOVS     R2,#+7
        MOV      R1,R5
        ADD      SP,SP,#+4
        POP      {R4,R5,LR}
        B.W      USB_EP_doDataIn
//  573         }
//  574       }
//  575       else
//  576       {
//  577         result = USB_ERR_INV_REQ;
??USB_CDC_ClassRequest_3:
        MOVS     R0,#+2
        POP      {R1,R4,R5,PC}
//  578       }
//  579       break;
//  580 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//  581 
//  582 #ifdef USB_CDC_CONTROL_LINE_STATE_SUPPORTED
//  583       /* SET_CONTROL_LINE_STATE */
//  584       case USB_CDC_SET_CONTROL_LINE_STATE:
//  585         result = USB_CDC_HANDLE_CONTROL_LINE_STATE(wValue, wIndex);
//  586         break;
//  587 #endif /* USB_CDC_CONTROL_LINE_STATE_SUPPORTED */
//  588 
//  589 #ifdef USB_CDC_LINE_BREAK_SUPPORTED
//  590       /* SEND_BREAK */
//  591       case USB_CDC_SEND_BREAK:
//  592         result = USB_CDC_HANDLE_BREAK(wValue, wIndex);
//  593         break;
//  594 #endif /* USB_CDC_LINE_BREAK_SUPPORTED */
//  595 
//  596       default:
//  597         result = USB_ERROR;
??USB_CDC_ClassRequest_2:
        MOVS     R0,#+1
//  598   }
//  599   /* If there were no DATA stage, initiate Status Stage (IN ACK) */
//  600   if (result == USB_SUCCESS && wLength == 0)
//  601   {
//  602     result = (USB_CurrentSetupPacket.mRequestTypeData & 0x80) == USB_DEVICE_TO_HOST ?
//  603                     USB_EP_doDataOut(USB_EP0, 0, 0, 0) :
//  604                     USB_EP_doDataIn(USB_EP0, 0, 0, 0);
//  605   }
//  606 
//  607   return result;
??USB_CDC_ClassRequest_4:
        POP      {R1,R4,R5,PC}    ;; return
//  608 }
//  609 
//  610 /** @} */ /* End of group USB_CDC_Private_Overwritten_Device_Handlers */
//  611 
//  612 /**
//  613   * @brief  Handler called when data is sent.
//  614   *
//  615   * @param  EPx: USB EndPoint number.
//  616   *         This parameter can be one of the following values:
//  617   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  618   *
//  619   * @param  Buffer: Pointer to the user's buffer with portion of data
//  620   *                 sent
//  621   *
//  622   * @param  Length: Length of data portion
//  623   *
//  624   * @retval USB_Result.
//  625   *
//  626   * @note   This function interface reflects EndPoint data transmitting handler
//  627   *         requirements.
//  628   */
//  629 
//  630 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  631 static USB_Result USB_CDC_OnDataSent(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
//  632 {
//  633   /* Release "busy" flag and call user's handler */
//  634   USB_CDCContext.CDC_SendDataStatus = USB_SUCCESS;
USB_CDC_OnDataSent:
        LDR.N    R0,??DataTable10
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  635   return USB_CDC_HANDLE_DATA_SENT;
        MOVS     R0,#+0
        BX       LR               ;; return
//  636 }
//  637 
//  638 
//  639 /**
//  640   * @brief  Handler called when some data is received.
//  641   *
//  642   * @param  EPx: USB EndPoint number.
//  643   *         This parameter can be one of the following values:
//  644   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  645   *
//  646   * @param  Buffer: Pointer to the user's buffer with received data
//  647   *
//  648   * @param  Length: Length of data
//  649   *
//  650   * @retval USB_Result.
//  651   *
//  652   * @note   This function interface reflects EndPoint data transmitting handler
//  653   *         requirements.
//  654   */
//  655 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  656 static USB_Result USB_CDC_OnDataReceive(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
//  657 {
USB_CDC_OnDataReceive:
        PUSH     {R4,LR}
        MOV      R0,R1
        MOV      R1,R2
//  658   /* Call user's handler */
//  659   USB_Result result = USB_CDC_HANDLE_DATA_RECEIVE(Buffer, Length);
//  660 
//  661   /* If handler returns USB_SUCCESS, wait for another portion. Otherwise, stop to receive
//  662    * incoming data */
//  663   if (result != USB_SUCCESS)
        LDR.N    R4,??DataTable10
        BL       USB_CDC_RecieveData
        CBZ.N    R0,??USB_CDC_OnDataReceive_0
//  664   {
//  665     USB_CDCContext.CDC_ReceiveDataStatus = USB_ERR_BUSY;
        MOV      R0,#+512
        STRH     R0,[R4, #+10]
//  666   }
//  667   if (USB_CDCContext.CDC_ReceiveDataStatus == USB_SUCCESS)
??USB_CDC_OnDataReceive_0:
        LDRSH    R0,[R4, #+10]
        CBNZ.N   R0,??USB_CDC_OnDataReceive_1
//  668   {
//  669     return USB_EP_doDataOut(USB_CDC_EP_RECEIVE, USB_CDCContext.CDC_ReceiveBuffer,
//  670               USB_CDCContext.CDC_DataPortionLength, USB_CDC_OnDataReceive);
        LDR.N    R3,??DataTable10_5
        LDR      R2,[R4, #+4]
        LDR      R1,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,LR}
        B.W      USB_EP_doDataOut
//  671   }
//  672   else
//  673   {
//  674     return USB_SUCCESS;
??USB_CDC_OnDataReceive_1:
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  675   }
//  676 }
//  677 
//  678 
//  679 /**
//  680   * @brief Implements Data stage of Setup transaction with OUT data stage
//  681   *        for Class-Specific requests with data processing on CDC layer.
//  682   *
//  683   * @param  EPx: USB EndPoint number.
//  684   *         This parameter can be one of the following values:
//  685   *         USB_EP0, USB_EP1, USB_EP2, USB_EP3.
//  686   *
//  687   * @param  Buffer: Pointer to the user's buffer with portion of data
//  688   *                 to be sent
//  689   *
//  690   * @param  Length: Length of data portion
//  691   *
//  692   * @retval USB_Result.
//  693   *
//  694   * @note   This function interface reflects EndPoint data transmitting handler
//  695   *         requirements.
//  696   */
//  697 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  698 static USB_Result USB_CDC_DoDataOut(USB_EP_TypeDef EPx, uint8_t* Buffer, uint32_t Length)
//  699 {
USB_CDC_DoDataOut:
        PUSH     {R4,LR}
        MOV      R4,R0
//  700   USB_Result result;
//  701 
//  702   switch (USB_CurrentSetupPacket.bRequest)
        LDR.N    R0,??DataTable10_3
        LDRB     R2,[R0, #+1]
        CMP      R2,#+32
        BNE.N    ??USB_CDC_DoDataOut_0
//  703   {
//  704 #ifdef USB_CDC_COMM_FEATURE_SUPPORTED
//  705     /* USB_CDC_SET_COMM_FEATURE */
//  706     case USB_CDC_SET_COMM_FEATURE:
//  707       /* Call user's handler */
//  708       result = USB_CDC_HANDLE_SET_COMM_FEATURE(USB_CurrentSetupPacket.wValue,
//  709                                                USB_CurrentSetupPacket.wIndex,
//  710                                                *((uint16_t*)Buffer));
//  711       break;
//  712 #endif /* USB_CDC_COMM_FEATURE_SUPPORTED */
//  713 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//  714     /* USB_CDC_SET_LINE_CODING */
//  715     case USB_CDC_SET_LINE_CODING:
//  716       /* Call user's handler */
//  717       result = USB_CDC_HANDLE_SET_LINE_CODING(USB_CurrentSetupPacket.wIndex,
//  718                                               (const USB_CDC_LineCoding_TypeDef*)Buffer);
        LDRH     R0,[R0, #+4]
        BL       USB_CDC_SetLineCoding
//  719       break;
//  720 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//  721     default:
//  722       result = USB_ERR_INV_REQ;
//  723   }
//  724   /* Initiate Status Stage */
//  725   return result == USB_SUCCESS ? USB_EP_doDataIn(EPx, 0, 0, 0) : result;
        CBNZ.N   R0,??USB_CDC_DoDataOut_1
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOV      R1,R2
        MOV      R0,R4
        B.N      ?Subroutine0
??USB_CDC_DoDataOut_0:
        MOVS     R0,#+2
??USB_CDC_DoDataOut_1:
        POP      {R4,PC}          ;; return
//  726 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     USB_CDCContext

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     Usb_CDC_Device_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     USB_DeviceDoStatusOutAck

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     USB_CurrentSetupPacket

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     CDC_ClassPacketData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     USB_CDC_OnDataReceive

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
?Subroutine0:
        POP      {R4,LR}
        B.W      USB_EP_doDataIn
//  727 
//  728 /** @defgroup USB_CDC_Private_Dummy_Functions USB CDC Handlers implementation
//  729   * @{
//  730   */
//  731 
//  732 /**
//  733   * @brief  The sample of handler called when data is received from host.
//  734   *
//  735   * @param  Buffer: Pointer to buffer containing data (same as ReceiveBuffer)
//  736   *
//  737   * @param  Length: Received data length
//  738   *
//  739   * @retval USB_Result. If USB_SUCCESS is returned, the device continues
//  740   *         to receive incoming data, stops otherwise.
//  741   *
//  742   */
//  743 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  744 USB_Result USB_CDC_DummyDataReceive(uint8_t* Buffer, uint32_t Length)
//  745 {
//  746   return USB_ERROR;
USB_CDC_DummyDataReceive:
        MOVS     R0,#+1
        BX       LR               ;; return
//  747 }
//  748 
//  749 /**
//  750   * @brief  The sample of handler called when data sending is complete
//  751   *         (successfully or with error)
//  752   *
//  753   * @retval USB_Result.
//  754   *
//  755   */
//  756 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  757 USB_Result USB_CDC_DummyDataSent(void)
//  758 {
//  759   return USB_ERROR;
USB_CDC_DummyDataSent:
        MOVS     R0,#+1
        BX       LR               ;; return
//  760 }
//  761 
//  762 #ifdef USB_CDC_ENCAPSULATION_SUPPORTED
//  763 /**
//  764   * @brief  SEND_ENCAPSULATED_COMMAND class-specific packet handler sample ([1], 6.2.1).
//  765   *
//  766   * @param  wINDEX: Interface number
//  767   *
//  768   * @param  wLENGTH: Amount of data
//  769   *
//  770   * @retval USB_Result.
//  771   *
//  772   * @note   The handler is expected to either perform data transfer and status
//  773   *         stages on its own (calling USB_EP_doDataOut), or return value
//  774   *         that is not USB_SUCCESSS.
//  775   */
//  776 
//  777 USB_Result USB_CDC_DummySendEncapsulatedCMD(uint16_t wINDEX, uint16_t wLENGTH)
//  778 {
//  779   return USB_ERROR;
//  780 }
//  781 
//  782 /**
//  783   * @brief  GET_ENCAPSULATED_RESPONSE class-specific packet handler sample ([1], 6.2.2).
//  784   *
//  785   * @param  wINDEX: Interface number
//  786   *
//  787   * @param  wLENGTH: Amount of data
//  788   *
//  789   * @retval USB_Result.
//  790   *
//  791   * @note   The handler is expected to either perform data transfer and status
//  792   *         stages on its own (calling USB_EP_doDataIn), or return value
//  793   *         that is not USB_SUCCESSS.
//  794   */
//  795 
//  796 USB_Result USB_CDC_DummyGetEncapsulatedResp(uint16_t wINDEX, uint16_t wLENGTH)
//  797 {
//  798   return USB_ERROR;
//  799 }
//  800 #endif /* USB_CDC_ENCAPSULATION_SUPPORTED */
//  801 
//  802 #ifdef USB_CDC_COMM_FEATURE_SUPPORTED
//  803 /**
//  804   * @brief  GET_COMM_FEATURE Class-specific packet handler sample ([2], 6.3.2).
//  805   *
//  806   * @param  wVALUE: Feature selector
//  807   *
//  808   * @param  wINDEX: Interface number
//  809   *
//  810   * @param  DATA: Place for the value of current setting.
//  811   *
//  812   * @retval USB_Result.
//  813   */
//  814 
//  815 USB_Result USB_CDC_DummyGetCommFeature(uint16_t wVALUE, uint16_t wINDEX, uint16_t* DATA)
//  816 {
//  817   return USB_ERROR;
//  818 }
//  819 
//  820 /**
//  821   * @brief  SET_COMM_FEATURE Class-specific packet handler sample ([2], 6.3.1).
//  822   *
//  823   * @param  wVALUE: Feature selector
//  824   *
//  825   * @param  wINDEX: Interface number
//  826   *
//  827   * @param  DATA: Value to be set.
//  828   *
//  829   * @retval USB_Result.
//  830   */
//  831 
//  832 USB_Result USB_CDC_DummySetCommFeature(uint16_t wVALUE, uint16_t wINDEX, uint16_t DATA)
//  833 {
//  834   return USB_ERROR;
//  835 }
//  836 
//  837 /**
//  838   * @brief  CLEAR_COMM_FEATURE Class-specific packet handler sample ([2], 6.3.3).
//  839   *
//  840   * @param  wVALUE: Feature selector
//  841   *
//  842   * @param  wINDEX: Interface number
//  843   *
//  844   * @retval USB_Result.
//  845   */
//  846 
//  847 USB_Result USB_CDC_DummyClearCommFeature(uint16_t wVALUE, uint16_t wINDEX)
//  848 {
//  849   return USB_ERROR;
//  850 }
//  851 #endif /* USB_CDC_COMM_FEATURE_SUPPORTED */
//  852 
//  853 #ifdef USB_CDC_LINE_CODING_SUPPORTED
//  854 /**
//  855   * @brief  GET_LINE_CODING Class-specific packet handler sample ([2], 6.3.11).
//  856   *
//  857   * @param  wINDEX: Interface number
//  858   *
//  859   * @param  DATA: Pointer to USB_CDC_LineCoding_TypeDef structure that
//  860   *         should hold current Line Coding information.
//  861   *
//  862   * @retval USB_Result.
//  863   */
//  864 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  865 USB_Result USB_CDC_DummyGetLineCoding(uint16_t wINDEX, USB_CDC_LineCoding_TypeDef* DATA)
//  866 {
//  867   return USB_ERROR;
USB_CDC_DummyGetLineCoding:
        MOVS     R0,#+1
        BX       LR               ;; return
//  868 }
//  869 
//  870 /**
//  871   * @brief  SET_LINE_CODING Class-specific packet handler sample ([2], 6.3.10).
//  872   *
//  873   * @param  wINDEX: Interface number
//  874   *
//  875   * @param  DATA: Pointer to USB_CDC_LineCoding_TypeDef structure
//  876   *         that contains the Line Coding information.
//  877   *
//  878   * @retval USB_Result.
//  879   */
//  880 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  881 USB_Result USB_CDC_DummySetLineCoding(uint16_t wINDEX, const USB_CDC_LineCoding_TypeDef* DATA)
//  882 {
//  883   return USB_ERROR;
USB_CDC_DummySetLineCoding:
        MOVS     R0,#+1
        BX       LR               ;; return
//  884 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  885 #endif /* USB_CDC_LINE_CODING_SUPPORTED */
//  886 
//  887 #ifdef USB_CDC_CONTROL_LINE_STATE_SUPPORTED
//  888 /**
//  889   * @brief  SET_CONTROL_LINE_STATE Class-specific packet handler sample ([2], 6.3.12).
//  890   *
//  891   * @param  wVALUE: Control Signal.
//  892   *         This parameter can be any combination of the following values:
//  893   *           @arg USB_CDC_DTR_PRESENT
//  894   *           @arg USB_CDC_RTS_ACTIVATE_CARRIER
//  895   *
//  896   * @param  wINDEX: Interface number
//  897   *
//  898   * @retval USB_Result.
//  899   */
//  900 
//  901 USB_Result USB_CDC_DummyControlLineState(uint16_t wVALUE, uint16_t wINDEX)
//  902 {
//  903   return USB_ERROR;
//  904 }
//  905 #endif /* USB_CDC_CONTROL_LINE_STATE_SUPPORTED */
//  906 
//  907 #ifdef USB_CDC_LINE_BREAK_SUPPORTED
//  908 /**
//  909   * @brief  SEND_BREAK Class-specific packet handler sample ([2], 6.3.13).
//  910   *
//  911   * @param  wVALUE: Duration of Break.
//  912   *
//  913   * @param  wINDEX: Interface number
//  914   *
//  915   * @retval USB_Result.
//  916   */
//  917 
//  918 USB_Result USB_CDC_DummySendBreak(uint16_t wVALUE, uint16_t wINDEX)
//  919 {
//  920   return USB_ERROR;
//  921 }
//  922 #endif /* USB_CDC_LINE_BREAK_SUPPORTED */
//  923 
//  924 /** @} */ /* End of group USB_CDC_Private_Dummy_Functions */
//  925 
//  926 /** @} */ /* End of group USB_CDC_Private_Functions */
//  927 
//  928 /** @} */ /* End of group USB_CDC */
//  929 
//  930 /** @} */ /* End of group USB_DEVICE_AND_CDC */
//  931 
//  932 /** @} */ /* End of group MDR32F9Qx_StdPeriph_Driver */
//  933 
//  934 /******************* (C) COPYRIGHT 2011 Phyton *********
//  935 *
//  936 * END OF FILE MDR32F9Qx_usb_CDC.c */
//  937 
// 
//  20 bytes in section .bss
//  88 bytes in section .data
// 438 bytes in section .text
// 
// 438 bytes of CODE memory
// 108 bytes of DATA memory
//
//Errors: none
//Warnings: 2
