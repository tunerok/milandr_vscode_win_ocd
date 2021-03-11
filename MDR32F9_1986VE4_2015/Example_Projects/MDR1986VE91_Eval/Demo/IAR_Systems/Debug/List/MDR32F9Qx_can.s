///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:56 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_can.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_can.c --preprocess        /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_can. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_can

        #define SHT_PROGBITS 0x1

        PUBLIC CAN_BRGInit
        PUBLIC CAN_BufferRelease
        PUBLIC CAN_Cmd
        PUBLIC CAN_DeInit
        PUBLIC CAN_FilterInit
        PUBLIC CAN_GetBufferStatus
        PUBLIC CAN_GetDisabledBuffer
        PUBLIC CAN_GetEmptyTransferBuffer
        PUBLIC CAN_GetITState
        PUBLIC CAN_GetRawReceivedData
        PUBLIC CAN_GetReceivedData
        PUBLIC CAN_GetRx
        PUBLIC CAN_GetRxITStatus
        PUBLIC CAN_GetStatus
        PUBLIC CAN_GetTxITStatus
        PUBLIC CAN_ITClearErrorPendingBit
        PUBLIC CAN_ITClearRxTxPendingBit
        PUBLIC CAN_ITConfig
        PUBLIC CAN_Init
        PUBLIC CAN_RTRReply
        PUBLIC CAN_Receive
        PUBLIC CAN_RxITConfig
        PUBLIC CAN_SendRTR
        PUBLIC CAN_StructInit
        PUBLIC CAN_Transmit
        PUBLIC CAN_TxITConfig

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_can.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_can.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    21/07/2011
//    7   * @brief   This file contains all the CAN firmware functions.
//    8   ******************************************************************************
//    9   * <br><br>
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, PHYTON SHALL NOT BE HELD LIABLE FOR ANY DIRECT, INDIRECT
//   14   * OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_can.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_can.h"
//   26 
//   27 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_CAN_C
//   28 
//   29 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   30   * @{
//   31   */
//   32 
//   33 /** @defgroup CAN CAN
//   34   * @{
//   35   */
//   36 
//   37 /** @defgroup CAN_Private_Constants CAN Private Constants
//   38   * @{
//   39   */
//   40 
//   41 /* CANx_BUF_xx_DLC Register masks to determine packet format */
//   42 #define CAN_BUF_DLC_STD   ((uint32_t)0x00000A00)    /* Standard format */
//   43 #define CAN_BUF_DLC_EXT   ((uint32_t)0x00001A00)    /* Extended format */
//   44 
//   45 /** @} */ /* End of group CAN_Private_Constants */
//   46 
//   47 /** @defgroup CAN_Private_Variables CAN Private Variables
//   48   * @{
//   49   */
//   50 
//   51 /** @} */ /* End of group CAN_Private_Variables */
//   52 
//   53 /** @defgroup CAN_Private_FunctionPrototypes CAN Private Function Prototypes
//   54   * @{
//   55   */
//   56 static uint32_t CAN_ReadBufferSFR(__IO uint32_t* SFR);
//   57 
//   58 /** @} */ /* End of group CAN_Private_FunctionPrototypes */
//   59 
//   60 /** @defgroup CAN_Private_Functions CAN Private Functions
//   61   * @{
//   62   */
//   63 
//   64 /**
//   65   * @brief  Deinitializes the CANx peripheral registers to their default reset values.
//   66   * @param  CANx: Select the CAN peripheral.
//   67   *         This parameter can be one of the following values: CAN1, CAN2.
//   68   * @retval None
//   69   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void CAN_DeInit(MDR_CAN_TypeDef* CANx)
//   71 {
//   72   uint32_t i;
//   73 
//   74   /* Check the parameters */
//   75   assert_param(IS_CAN_ALL_PERIPH(CANx));
//   76 
//   77   CANx->CONTROL = 0;
CAN_DeInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   78   CANx->STATUS = 0;
        STR      R1,[R0, #+4]
//   79   CANx->BITTMNG = 0;
        STR      R1,[R0, #+8]
//   80   CANx->INT_EN = 0;
        STR      R1,[R0, #+16]
//   81   CANx->OVER = 0;
        STR      R1,[R0, #+28]
//   82   CANx->INT_RX = 0;
        STR      R1,[R0, #+192]
//   83   CANx->INT_TX = 0;
        STR      R1,[R0, #+200]
//   84 
//   85   for (i = 0; i < 32; i++)
        MOVS     R3,#+0
//   86   {
//   87     CANx->BUF_CON[i] = 0;
??CAN_DeInit_0:
        ADD      R2,R0,R1, LSL #+2
        STR      R3,[R2, #+64]
//   88   }
        ADDS     R1,R1,#+1
        CMP      R1,#+32
        BCC.N    ??CAN_DeInit_0
//   89 }
        BX       LR               ;; return
//   90 
//   91 /**
//   92   * @brief  Initializes the CANx peripheral according to the specified
//   93   *         parameters in the CAN_InitStruct.
//   94   * @param  CANx: Select the CAN peripheral.
//   95   *         This parameter can be one of the following values:
//   96   *         CAN1, CAN2.
//   97   * @param  CAN_InitStruct: pointer to a CAN_InitTypeDef structure
//   98   *         that contains the configuration information for the specified CAN peripheral.
//   99   * @retval None
//  100   *
//  101   * @note   This function may be called only if appropriate CANx controller is in the
//  102   *         disabled state.
//  103   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  104 void CAN_Init(MDR_CAN_TypeDef* CANx, const CAN_InitTypeDef* CAN_InitStruct)
//  105 {
CAN_Init:
        PUSH     {R4,LR}
//  106   uint32_t tmpreg_CONTROL = 0;
        MOVS     R2,#+0
//  107   uint32_t tmpreg_BITTMNG;
//  108   uint32_t i;
//  109 
//  110   /* Check the parameters */
//  111   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  112   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_ROP));
//  113   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_SAP));
//  114   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_STM));
//  115   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_ROM));
//  116   assert_param(IS_CAN_PSEG_VALUE(CAN_InitStruct->CAN_PSEG));
//  117   assert_param(IS_CAN_SEG1_VALUE(CAN_InitStruct->CAN_SEG1));
//  118   assert_param(IS_CAN_SEG2_VALUE(CAN_InitStruct->CAN_SEG2));
//  119   assert_param(IS_CAN_SJW_VALUE(CAN_InitStruct->CAN_SJW));
//  120   assert_param(IS_CAN_SAMPLING_MODE(CAN_InitStruct->CAN_SB));
//  121 
//  122   /* Configure CONTROL register*/
//  123   if (CAN_InitStruct->CAN_ROP != DISABLE)
        LDRB     R3,[R1, #+0]
        CBZ.N    R3,??CAN_Init_0
//  124   {
//  125     tmpreg_CONTROL |= CAN_CONTROL_ROP;
        MOVS     R2,#+16
//  126   }
//  127   if (CAN_InitStruct->CAN_SAP != DISABLE)
??CAN_Init_0:
        LDRB     R3,[R1, #+1]
        CBZ.N    R3,??CAN_Init_1
//  128   {
//  129     tmpreg_CONTROL |= CAN_CONTROL_SAP;
        ORR      R2,R2,#0x8
//  130   }
//  131   if (CAN_InitStruct->CAN_STM != DISABLE)
??CAN_Init_1:
        LDRB     R3,[R1, #+2]
        CBZ.N    R3,??CAN_Init_2
//  132   {
//  133     tmpreg_CONTROL |= CAN_CONTROL_STM;
        ORR      R2,R2,#0x4
//  134   }
//  135   if (CAN_InitStruct->CAN_ROM != DISABLE)
??CAN_Init_2:
        LDRB     R3,[R1, #+3]
        CBZ.N    R3,??CAN_Init_3
//  136   {
//  137     tmpreg_CONTROL |= CAN_CONTROL_ROM;
        ORR      R2,R2,#0x2
//  138   }
//  139   CANx->CONTROL = tmpreg_CONTROL;
??CAN_Init_3:
        STR      R2,[R0, #+0]
//  140 
//  141   /* Configure BITTMNG register*/
//  142   tmpreg_BITTMNG = CAN_InitStruct->CAN_PSEG + CAN_InitStruct->CAN_SEG1 +
//  143                    CAN_InitStruct->CAN_SEG2 + CAN_InitStruct->CAN_SJW +
//  144                    (uint32_t)(CAN_InitStruct->CAN_BRP);
//  145   tmpreg_BITTMNG |= CAN_InitStruct->CAN_SB;
//  146   CANx->BITTMNG = tmpreg_BITTMNG;
        LDR      R2,[R1, #+4]
        LDR      R3,[R1, #+8]
        ADDS     R2,R3,R2
        LDR      R3,[R1, #+12]
        ADDS     R2,R3,R2
        LDR      R3,[R1, #+16]
        ADDS     R2,R3,R2
        LDRH     R3,[R1, #+24]
        ADDS     R2,R3,R2
        LDR      R3,[R1, #+20]
        ORRS     R2,R3,R2
        STR      R2,[R0, #+8]
//  147 
//  148   /* Initialize Filters */
//  149   for (i = 0; i < 32; i++)
        MOVS     R2,#+0
        MOVS     R4,#+0
//  150   {
//  151     CANx->CAN_BUF_FILTER[i].FILTER = 0;
??CAN_Init_4:
        ADD      R3,R0,R2, LSL #+3
        STR      R4,[R3, #+1284]
//  152     CANx->CAN_BUF_FILTER[i].MASK = 0;
        STR      R4,[R3, #+1280]
//  153   }
        ADDS     R2,R2,#+1
        CMP      R2,#+32
        BCC.N    ??CAN_Init_4
//  154 
//  155   /* Configure OVER register*/
//  156   CANx->OVER = (uint32_t)(CAN_InitStruct->CAN_OVER_ERROR_MAX);
        LDRB     R1,[R1, #+26]
        STR      R1,[R0, #+28]
//  157 }
        POP      {R4,PC}          ;; return
//  158 
//  159 /**
//  160   * @brief  Fills each CAN_InitStruct member with its default value.
//  161   * @param  CAN_InitStruct: pointer to a CAN_InitTypeDef structure
//  162   *         that is to be initialized.
//  163   * @retval None
//  164   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct)
//  166 {
//  167   /* Reset CAN init structure parameters values */
//  168   /* Own packet reception: disabled */
//  169   CAN_InitStruct->CAN_ROP = DISABLE;
CAN_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  170   /* Sending ACK on own packets: disabled */
//  171   CAN_InitStruct->CAN_SAP = DISABLE;
        STRB     R1,[R0, #+1]
//  172   /* Self Test mode: disabled */
//  173   CAN_InitStruct->CAN_STM = DISABLE;
        STRB     R1,[R0, #+2]
//  174   /* Read Only mode: disabled */
//  175   CAN_InitStruct->CAN_ROM = DISABLE;
        STRB     R1,[R0, #+3]
//  176   /* CAN_PSEG member */
//  177   CAN_InitStruct->CAN_PSEG = CAN_PSEG_Mul_1TQ;
        STR      R1,[R0, #+4]
//  178   /* CAN_SEG1 member */
//  179   CAN_InitStruct->CAN_SEG1 = CAN_SEG1_Mul_2TQ;
        MOV      R1,#+524288
        STR      R1,[R0, #+8]
//  180   /* CAN_SEG2 member */
//  181   CAN_InitStruct->CAN_SEG2 = CAN_SEG2_Mul_6TQ;
        MOV      R1,#+20971520
        STR      R1,[R0, #+12]
//  182   /* CAN_SEG2 member */
//  183   CAN_InitStruct->CAN_SJW = CAN_SJW_Mul_1TQ;
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  184   /* Sampling mode member */
//  185   CAN_InitStruct->CAN_SB = CAN_SB_1_SAMPLE;
        STR      R1,[R0, #+20]
//  186   /* CAN_BRP member */
//  187   CAN_InitStruct->CAN_BRP = 0;
        STRH     R1,[R0, #+24]
//  188   /* CAN_OVER_ERROR_MAX member */
//  189   CAN_InitStruct->CAN_OVER_ERROR_MAX = 255;
        MOVS     R1,#+255
        STRB     R1,[R0, #+26]
//  190 }
        BX       LR               ;; return
//  191 
//  192 /**
//  193   * @brief  Initializes the CANx Buffer filter and mask according to the specified
//  194   *         parameters in the CAN_FilterInitStruct.
//  195   * @param  CANx: Select the CAN peripheral.
//  196   *         This parameter can be one of the following values: CAN1, CAN2.
//  197   * @param  BufferNumber: the number of the buffer that is used for reception.
//  198   * @param  CAN_FilterInitStruct: pointer to a CAN_FilterInitTypeDef
//  199   *         structure that contains the configuration information.
//  200   * @retval None.
//  201   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 void CAN_FilterInit(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, CAN_FilterInitTypeDef* CAN_FilterInitStruct)
//  203 {
//  204   /* Check the parameters */
//  205   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  206   assert_param(IS_CAN_BUFFER(BufferNumber));
//  207   assert_param(IS_CAN_ID(CAN_FilterInitStruct->Filter_ID));
//  208   assert_param(IS_CAN_ID(CAN_FilterInitStruct->Mask_ID));
//  209 
//  210   CANx->CAN_BUF_FILTER[BufferNumber].FILTER  = CAN_FilterInitStruct->Filter_ID;
CAN_FilterInit:
        ADD      R0,R0,R1, LSL #+3
        LDR      R1,[R2, #+0]
        STR      R1,[R0, #+1284]
//  211   CANx->CAN_BUF_FILTER[BufferNumber].MASK    = CAN_FilterInitStruct->Mask_ID;
        LDR      R1,[R2, #+4]
        STR      R1,[R0, #+1280]
//  212 }
        BX       LR               ;; return
//  213 
//  214 /**
//  215   * @brief  Enables or disables the specified CAN interrupts.
//  216   * @param  CANx: Select the CAN peripheral.
//  217   *         This parameter can be one of the following values:
//  218   *         CAN1, CAN2.
//  219   * @param  CAN_IT: specifies the CAN interrupt sources to be enabled or disabled.
//  220   *         This parameter can be: CAN_IT_GLBINTEN, CAN_IT_RXINTEN, CAN_IT_TXINTEN,
//  221   *         CAN_IT_ERRINTEN or CAN_IT_ERROVERINTEN.
//  222   * @param  NewState: new state of the CAN interrupts.
//  223   *         This parameter can be: ENABLE or DISABLE.
//  224   * @retval None.
//  225   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  226 void CAN_ITConfig(MDR_CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState)
//  227 {
//  228   /* Check the parameters */
//  229   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  230   assert_param(IS_CAN_ITConfig(CAN_IT));
//  231   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  232 
//  233   if (NewState != DISABLE)
CAN_ITConfig:
        CMP      R2,#+0
        LDR      R2,[R0, #+16]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
//  234   {
//  235     CANx->INT_EN |= CAN_IT;
//  236   }
//  237   else
//  238   {
//  239     CANx->INT_EN &= ~CAN_IT;
        STR      R1,[R0, #+16]
//  240   }
//  241 }
        BX       LR               ;; return
//  242 
//  243 /**
//  244   * @brief  Searches for disabled (i.e., not currently used for reception
//  245   *         or transmission) buffer.
//  246   * @param  CANx: Select the CAN peripheral.
//  247   *         This parameter can be one of the following values:
//  248   *         CAN1, CAN2.
//  249   * @retval Number of the first found (with lesser number) disabled buffer
//  250   *         or CAN_BUFFER_NUMBER if there is no such a buffer.
//  251   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  252 uint32_t CAN_GetDisabledBuffer(MDR_CAN_TypeDef* CANx)
//  253 {
//  254   uint32_t buffer_number;
//  255 
//  256   /* Check the parameters */
//  257   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  258 
//  259   for (buffer_number = 0;
CAN_GetDisabledBuffer:
        MOVS     R1,#+0
??CAN_GetDisabledBuffer_0:
        ADD      R2,R0,R1, LSL #+2
        LDR      R2,[R2, #+64]
        LSLS     R2,R2,#+31
        BPL.N    ??CAN_GetDisabledBuffer_1
//  260 	  ((buffer_number < CAN_BUFFER_NUMBER) &&  ((CANx->BUF_CON[buffer_number] & CAN_STATUS_EN) != 0));
//  261        buffer_number++)
        ADDS     R1,R1,#+1
        CMP      R1,#+32
        BCC.N    ??CAN_GetDisabledBuffer_0
//  262   {
//  263   }
//  264 
//  265   return buffer_number;
??CAN_GetDisabledBuffer_1:
        MOV      R0,R1
        BX       LR               ;; return
//  266 }
//  267 
//  268 /**
//  269   * @brief  Searches for an empty transfer buffer.
//  270   * @param  CANx: Select the CAN peripheral.
//  271   *         This parameter can be one of the following values:
//  272   *         CAN1, CAN2.
//  273   * @retval Number of the first found (with lesser number) empty buffer
//  274   *         or CAN_BUFFER_NUMBER if there is no such a buffer.
//  275   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  276 uint32_t CAN_GetEmptyTransferBuffer(MDR_CAN_TypeDef* CANx)
//  277 {
//  278   uint32_t buffer_number;
//  279 
//  280   /* Check the parameters */
//  281   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  282 
//  283   for (buffer_number = 0; (buffer_number < CAN_BUFFER_NUMBER) &&
CAN_GetEmptyTransferBuffer:
        MOVS     R1,#+0
??CAN_GetEmptyTransferBuffer_0:
        ADD      R2,R0,R1, LSL #+2
        LDR      R2,[R2, #+64]
        AND      R2,R2,#0x23
        CMP      R2,#+1
        BEQ.N    ??CAN_GetEmptyTransferBuffer_1
//  284         ((CANx->BUF_CON[buffer_number] & (CAN_STATUS_EN | CAN_STATUS_TX_REQ | CAN_STATUS_RX_TXn)) != CAN_STATUS_EN);
//  285         buffer_number++)
        ADDS     R1,R1,#+1
        CMP      R1,#+32
        BCC.N    ??CAN_GetEmptyTransferBuffer_0
//  286   {
//  287   }
//  288   return buffer_number;
??CAN_GetEmptyTransferBuffer_1:
        MOV      R0,R1
        BX       LR               ;; return
//  289 }
//  290 
//  291 /**
//  292   * @brief  Initiates the transmission of a message.
//  293   * @param  CANx: Select the CAN peripheral.
//  294   *         This parameter can be one of the following values:
//  295   *         CAN1, CAN2.
//  296   * @param  BufferNumber: the number of the buffer that is used for transmission.
//  297   * @param  TxMessage: pointer to a CAN_TxMsgTypeDef structure.
//  298   * @retval None
//  299   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  300 void CAN_Transmit(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, CAN_TxMsgTypeDef* TxMessage)
//  301 {
CAN_Transmit:
        PUSH     {R4,R5,LR}
//  302   uint32_t tmpreg;
//  303 
//  304   /* Check the parameters */
//  305   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  306   assert_param(IS_CAN_BUFFER(BufferNumber));
//  307   assert_param(IS_CAN_IDTYPE(TxMessage->IDE));
//  308   assert_param(IS_CAN_DLC(TxMessage->DLC));
//  309   assert_param(IS_FUNCTIONAL_STATE(TxMessage->PRIOR_0));
//  310   assert_param(IS_CAN_ID(TxMessage->ID));
//  311 
//  312   /* Configure CAN_BUF_ID and CAN_BUF_DLC registers */
//  313   /* Packet format */
//  314   if (TxMessage->IDE == CAN_ID_STD)
        LDRB     R3,[R2, #+6]
        LDRB     R4,[R2, #+5]
        CMP      R4,#+0
        ITE      EQ 
        ADDEQ    R3,R3,#+2560
        ADDNE    R3,R3,#+6656
//  315   {
//  316     /* Standard */
//  317     tmpreg = CAN_BUF_DLC_STD + TxMessage->DLC;
//  318   }
//  319   else
//  320   {
//  321     /* Extended */
//  322     tmpreg = CAN_BUF_DLC_EXT + TxMessage->DLC;
//  323   }
//  324   CANx->CAN_BUF[BufferNumber].DLC = tmpreg;
        ADD      R4,R0,R1, LSL #+4
        ADD      R5,R4,#+512
        STR      R3,[R5, #+4]
//  325   CANx->CAN_BUF[BufferNumber].ID  = TxMessage->ID;
        LDR      R3,[R2, #+0]
        STR      R3,[R4, #+512]
//  326 
//  327   /* Buffer data unit */
//  328   CANx->CAN_BUF[BufferNumber].DATAL = TxMessage->Data[0];
        LDR      R3,[R2, #+8]
        STR      R3,[R5, #+8]
//  329   CANx->CAN_BUF[BufferNumber].DATAH = TxMessage->Data[1];
        LDR      R3,[R2, #+12]
        STR      R3,[R5, #+12]
//  330 
//  331   /* Configure CAN_BUF_CON register */
//  332   tmpreg = 0;
        MOVS     R3,#+0
//  333   /* Transmission priority */
//  334   if (TxMessage->PRIOR_0 != DISABLE)
        LDRB     R2,[R2, #+4]
        CBZ.N    R2,??CAN_Transmit_0
//  335   {
//  336     tmpreg |= CAN_BUF_CON_PRIOR_0;
        MOVS     R3,#+16
//  337   }
//  338   /* Set transmission request bit */
//  339   tmpreg |= CAN_BUF_CON_TX_REQ;
//  340   /* Enable buffer */
//  341   tmpreg |= CAN_BUF_CON_EN;
//  342 
//  343   CANx->BUF_CON[BufferNumber] = tmpreg;
??CAN_Transmit_0:
        ADD      R0,R0,R1, LSL #+2
        ORR      R1,R3,#0x21
        STR      R1,[R0, #+64]
//  344 }
        POP      {R4,R5,PC}       ;; return
//  345 
//  346 /**
//  347   * @brief  Initiates the Remote Transfer Request.
//  348   * @param  CANx: Select the CAN peripheral.
//  349   *         This parameter can be one of the following values:
//  350   *         CAN1, CAN2.
//  351   * @param  BufferNumber: the number of the buffer that is used for transmission.
//  352   * @param  RTRMessage: pointer to a CAN_RTRMessageTypeDef structure.
//  353   * @retval None
//  354   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  355 void CAN_SendRTR(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, CAN_RTRMessageTypeDef* RTRMessage)
//  356 {
CAN_SendRTR:
        PUSH     {R4,LR}
//  357   uint32_t tmpreg;
//  358 
//  359   /* Check the parameters */
//  360   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  361   assert_param(IS_CAN_BUFFER(BufferNumber));
//  362   assert_param(IS_CAN_IDTYPE(RTRMessage->IDE));
//  363   assert_param(IS_FUNCTIONAL_STATE(RTRMessage->PRIOR_0));
//  364   assert_param(IS_CAN_ID(RTRMessage->ID));
//  365 
//  366   /* Configure CAN_BUF_ID and CAN_BUF_DLC registers */
//  367   /* Packet format */
//  368   if (RTRMessage->IDE == CAN_ID_STD)
        LDRB     R3,[R2, #+5]
        CMP      R3,#+0
        ITE      EQ 
        MOVEQ    R3,#+2560
        MOVNE    R3,#+6656
//  369   {
//  370     /* Standard */
//  371     tmpreg = CAN_BUF_DLC_STD;
//  372   }
//  373   else
//  374   {
//  375     /* Extended */
//  376     tmpreg = CAN_BUF_DLC_EXT;
//  377   }
//  378   CANx->CAN_BUF[BufferNumber].DLC = tmpreg + CAN_RTR_REMOTE;
        ADD      R4,R0,R1, LSL #+4
        ADD      R3,R3,#+256
        STR      R3,[R4, #+516]
//  379   CANx->CAN_BUF[BufferNumber].ID  = RTRMessage->ID;
        LDR      R3,[R2, #+0]
        STR      R3,[R4, #+512]
//  380 
//  381   /* Configure CAN_BUF_CON register */
//  382   tmpreg = 0;
        MOVS     R3,#+0
//  383   /* Transmission priority */
//  384   if (RTRMessage->PRIOR_0 != DISABLE)
        LDRB     R2,[R2, #+4]
        CBZ.N    R2,??CAN_SendRTR_0
//  385   {
//  386     tmpreg |= CAN_BUF_CON_PRIOR_0;
        MOVS     R3,#+16
//  387   }
//  388   /* Set transmission request bit */
//  389   tmpreg |= CAN_BUF_CON_TX_REQ;
//  390   /* Enable buffer */
//  391   tmpreg |= CAN_BUF_CON_EN;
//  392 
//  393   CANx->BUF_CON[BufferNumber] = tmpreg;
??CAN_SendRTR_0:
        ADD      R0,R0,R1, LSL #+2
        ORR      R1,R3,#0x21
        STR      R1,[R0, #+64]
//  394 }
        POP      {R4,PC}          ;; return
//  395 
//  396 /**
//  397   * @brief  Initiates the Remote Transfer Request reply.
//  398   * @param  CANx: Select the CAN peripheral.
//  399   *         This parameter can be one of the following values:
//  400   *         CAN1, CAN2.
//  401   * @param  BufferNumber: the number of the buffer that is used for transmission.
//  402   * @param  RTRReplyMessage: pointer to a CAN_RTRReplyTypeDef structure.
//  403   * @retval None
//  404   */
//  405 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  406 void CAN_RTRReply(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, CAN_RTRReplyTypeDef* RTRReplyMessage)
//  407 {
CAN_RTRReply:
        PUSH     {R4,R5,LR}
//  408   uint32_t tmpreg;
//  409 
//  410   /* Check the parameters */
//  411   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  412   assert_param(IS_CAN_BUFFER(BufferNumber));
//  413   assert_param(IS_CAN_IDTYPE(RTRReplyMessage->IDE));
//  414   assert_param(IS_CAN_ID(RTRReplyMessage->ID));
//  415   assert_param(IS_CAN_DLC(RTRReplyMessage->DLC));
//  416 
//  417   /* Configure CAN_BUF_ID and CAN_BUF_DLC registers */
//  418   /* Configure CAN_BUF_ID and CAN_BUF_DLC registers */
//  419   /* Packet format */
//  420   if (RTRReplyMessage->IDE == CAN_ID_STD)
        LDRB     R3,[R2, #+5]
        LDRB     R4,[R2, #+4]
        CMP      R4,#+0
        ITE      EQ 
        ADDEQ    R3,R3,#+2560
        ADDNE    R3,R3,#+6656
//  421   {
//  422     /* Standard */
//  423     tmpreg = CAN_BUF_DLC_STD + RTRReplyMessage->DLC;
//  424   }
//  425   else
//  426   {
//  427     /* Extended */
//  428     tmpreg = CAN_BUF_DLC_EXT + RTRReplyMessage->DLC;
//  429   }
//  430   CANx->CAN_BUF[BufferNumber].DLC = tmpreg;
        ADD      R4,R0,R1, LSL #+4
        ADD      R5,R4,#+512
        STR      R3,[R5, #+4]
//  431   CANx->CAN_BUF[BufferNumber].ID  = RTRReplyMessage->ID;
        LDR      R3,[R2, #+0]
        STR      R3,[R4, #+512]
//  432 
//  433   /* Buffer data unit */
//  434   CANx->CAN_BUF[BufferNumber].DATAL = RTRReplyMessage->Data[0];
        LDR      R3,[R2, #+8]
        STR      R3,[R5, #+8]
//  435   CANx->CAN_BUF[BufferNumber].DATAH = RTRReplyMessage->Data[1];
        LDR      R2,[R2, #+12]
        STR      R2,[R5, #+12]
//  436 
//  437   /* Configure CAN_BUF_CON register */
//  438   /* Set RTR_EN bit */
//  439   tmpreg = CAN_STATUS_RTR_EN;
//  440   /* Enable buffer */
//  441   tmpreg |= CAN_BUF_CON_EN;
//  442 
//  443   CANx->BUF_CON[BufferNumber] = tmpreg;
        ADD      R0,R0,R1, LSL #+2
        MOVS     R1,#+9
        STR      R1,[R0, #+64]
//  444 }
        POP      {R4,R5,PC}       ;; return
//  445 
//  446 /**
//  447   * @brief  Starts the waiting for the receiving of a message.
//  448   * @param  CANx: Select the CAN peripheral.
//  449   *         This parameter can be one of the following values:
//  450   *         CAN1, CAN2.
//  451   * @param  BufferNumber: the number of the buffer that is used for reception.
//  452   * @param  OverWrite: Enables or disables overwrite mode.
//  453   *         This parameter can be one of the following values:
//  454   *         ENABLE, DISABLE.
//  455   * @retval None
//  456   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  457 void CAN_Receive(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, FunctionalState OverWrite)
//  458 {
//  459   uint32_t tmpreg = 0;
CAN_Receive:
        MOVS     R3,#+0
//  460 
//  461   /* Check the parameters */
//  462   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  463   assert_param(IS_CAN_BUFFER(BufferNumber));
//  464   assert_param(IS_FUNCTIONAL_STATE(OverWrite));
//  465 
//  466   /* Configure CAN_BUF_CON register */
//  467   /* Overwrite mode */
//  468   if (OverWrite != DISABLE)
        CBZ.N    R2,??CAN_Receive_0
//  469   {
//  470     tmpreg = CAN_BUF_CON_OVER_EN;
        MOVS     R3,#+4
//  471   }
//  472   /* Configure buffer for receiving and enable it */
//  473   tmpreg |= CAN_BUF_CON_RX_TXN | CAN_BUF_CON_EN;
//  474 
//  475   CANx->BUF_CON[BufferNumber] = tmpreg;
??CAN_Receive_0:
        ADD      R0,R0,R1, LSL #+2
        ORR      R1,R3,#0x3
        STR      R1,[R0, #+64]
//  476 }
        BX       LR               ;; return
//  477 
//  478 /**
//  479   * @brief  Reads the received data from buffer.
//  480   * @param  CANx: Select the CAN peripheral.
//  481   *         This parameter can be one of the following values:
//  482   *         CAN1, CAN2.
//  483   * @param  BufferNumber: the number of the buffer that is used for reception.
//  484   * @param  RxBuffer: CAN_DataTypeDef array to place received data to.
//  485   * @retval None
//  486   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  487 void CAN_GetReceivedData(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, CAN_DataTypeDef RxBuffer)
//  488 {
CAN_GetReceivedData:
        PUSH     {R3-R5,LR}
        MOV      R4,R2
//  489   /* Check the parameters */
//  490   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  491   assert_param(IS_CAN_BUFFER(BufferNumber));
//  492 
//  493   RxBuffer[0] = CAN_ReadBufferSFR(&(CANx->CAN_BUF[BufferNumber].DATAL));
        ADD      R5,R0,R1, LSL #+4
        ADD      R0,R5,#+520
        BL       CAN_ReadBufferSFR
        STR      R0,[R4, #+0]
//  494   RxBuffer[1] = CAN_ReadBufferSFR(&(CANx->CAN_BUF[BufferNumber].DATAH));
        ADD      R0,R5,#+524
        BL       CAN_ReadBufferSFR
        STR      R0,[R4, #+4]
//  495 }
        POP      {R0,R4,R5,PC}    ;; return
//  496 
//  497 /**
//  498   * @brief  Reads received message (containing both header and data) from buffer.
//  499   * @param  CANx: Select the CAN peripheral.
//  500   *         This parameter can be one of the following values:
//  501   *         CAN1, CAN2.
//  502   * @param  BufferNumber: the number of the buffer that is used for reception.
//  503   * @param  RxMessage: pointer to a CAN_RxMsgTypeDef.
//  504   * @retval None
//  505   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  506 void CAN_GetRawReceivedData(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, CAN_RxMsgTypeDef* RxMessage)
//  507 {
CAN_GetRawReceivedData:
        PUSH     {R3-R7,LR}
        MOV      R6,R0
        MOV      R7,R1
        MOV      R4,R2
//  508   uint32_t tmpreg;
//  509 
//  510   /* Check the parameters */
//  511   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  512   assert_param(IS_CAN_BUFFER(BufferNumber));
//  513 
//  514   /* Get the DLC */
//  515   tmpreg = CAN_ReadBufferSFR(&(CANx->CAN_BUF[BufferNumber].DLC));
        ADD      R5,R6,R7, LSL #+4
        ADD      R0,R5,#+516
        BL       CAN_ReadBufferSFR
//  516 
//  517   RxMessage->Rx_Header.DLC = (uint8_t)(tmpreg & CAN_DLC_DATA_LENGTH);
        AND      R1,R0,#0xF
        STRB     R1,[R4, #+6]
//  518   /* Get the IDE */
//  519   RxMessage->Rx_Header.IDE = CAN_ID_STD;
        MOVS     R1,#+0
//  520   if ((tmpreg & CAN_DLC_IDE) != 0)
        LSLS     R0,R0,#+19
        IT       MI 
        MOVMI    R1,#+1
//  521   {
//  522     RxMessage->Rx_Header.IDE = CAN_ID_EXT;
        STRB     R1,[R4, #+5]
//  523   }
//  524   /* Get the OVER_EN */
//  525   RxMessage->Rx_Header.OVER_EN = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
//  526   tmpreg = CAN_ReadBufferSFR(&(CANx->BUF_CON[BufferNumber]));
//  527   if ((tmpreg & CAN_BUF_CON_OVER_EN) != 0)
        ADD      R0,R6,R7, LSL #+2
        ADDS     R0,R0,#+64
        BL       CAN_ReadBufferSFR
        LSLS     R0,R0,#+29
        ITT      MI 
        MOVMI    R0,#+1
        STRBMI   R0,[R4, #+4]
//  528   {
//  529     RxMessage->Rx_Header.OVER_EN = ENABLE;
//  530   }
//  531   /* Get the Id */
//  532   RxMessage->Rx_Header.ID = CAN_ReadBufferSFR(&(CANx->CAN_BUF[BufferNumber].ID));
        ADD      R0,R5,#+512
        BL       CAN_ReadBufferSFR
        STR      R0,[R4, #+0]
//  533 
//  534   /* Get the data field */
//  535   RxMessage->Data[0] = CAN_ReadBufferSFR(&(CANx->CAN_BUF[BufferNumber].DATAL));
        ADD      R0,R5,#+520
        BL       CAN_ReadBufferSFR
        STR      R0,[R4, #+8]
//  536   RxMessage->Data[1] = CAN_ReadBufferSFR(&(CANx->CAN_BUF[BufferNumber].DATAH));
        ADD      R0,R5,#+524
        BL       CAN_ReadBufferSFR
        STR      R0,[R4, #+12]
//  537 }
        POP      {R0,R4-R7,PC}    ;; return
//  538 
//  539 /**
//  540   * @brief  Releases the buffer.
//  541   * @param  CANx: Select the CAN peripheral.
//  542   *         This parameter can be one of the following values:
//  543   *         CAN1, CAN2.
//  544   * @param  BufferNumber: the number of the buffer to be released.
//  545   * @retval None.
//  546   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  547 void CAN_BufferRelease(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber)
//  548 {
//  549   uint32_t tmpreg;
//  550 
//  551   /* Check the parameters */
//  552   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  553   assert_param(IS_CAN_BUFFER(BufferNumber));
//  554 
//  555   tmpreg = CANx->BUF_CON[BufferNumber];
//  556   tmpreg &= ~CAN_STATUS_EN;
//  557   CANx->BUF_CON[BufferNumber] = tmpreg;
CAN_BufferRelease:
        ADD      R0,R0,R1, LSL #+2
        LDR      R1,[R0, #+64]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+64]
//  558 }
        BX       LR               ;; return
//  559 
//  560 /**
//  561   * @brief  Enables or disables the specified CAN peripheral.
//  562   * @param  CANx: Select the CAN peripheral.
//  563   *         This parameter can be one of the following values:
//  564   *         CAN1, CAN2.
//  565   * @param  NewState: new state of the CANx peripheral.
//  566   *         This parameter can be: ENABLE or DISABLE.
//  567   * @retval None
//  568   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  569 void CAN_Cmd(MDR_CAN_TypeDef* CANx, FunctionalState NewState)
//  570 {
//  571   uint32_t tmpreg_CONTROL;
//  572 
//  573   /* Check the parameters */
//  574   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  575   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  576 
//  577   tmpreg_CONTROL = CANx->CONTROL;
CAN_Cmd:
        LDR      R2,[R0, #+0]
//  578 
//  579   /* Form new value */
//  580   if (NewState != DISABLE)
        CMP      R1,#+0
        ITEE     NE 
        ORRNE    R1,R2,#0x1
        LSREQ    R1,R2,#+1
        LSLEQ    R1,R1,#+1
//  581   {
//  582     /* Enable CANx by setting the CAN_EN bit in the CONTROL register */
//  583     tmpreg_CONTROL |= CAN_CONTROL_CAN_EN;
//  584   }
//  585   else
//  586   {
//  587     /* Disable CANx by resetting the CAN_EN bit in the CONTROL register */
//  588     tmpreg_CONTROL &= ~CAN_CONTROL_CAN_EN;
//  589   }
//  590 
//  591   /* Configure CONTROL register with new value */
//  592   CANx->CONTROL = tmpreg_CONTROL;
        STR      R1,[R0, #+0]
//  593 }
        BX       LR               ;; return
//  594 
//  595 /**
//  596   * @brief  Returns the CANx Status Register value.
//  597   * @param  CANx: Select the CAN peripheral.
//  598   *         This parameter can be one of the following values:
//  599   *         CAN1, CAN2.
//  600   * @retval The CANx_STATUS Register value.
//  601   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  602 uint32_t CAN_GetStatus(MDR_CAN_TypeDef* CANx)
//  603 {
//  604   /* Check the parameters */
//  605   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  606 
//  607   return CANx->STATUS;
CAN_GetStatus:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//  608 }
//  609 
//  610 /**
//  611   * @brief  Returns the CANx_BUF_xx_CON Register value.
//  612   * @param  CANx: Select the CAN peripheral.
//  613   *         This parameter can be one of the following values:
//  614   *         CAN1, CAN2.
//  615   * @param  BufferNumber: The number of the buffer.
//  616   * @retval The CANx_BUF_xx_CON Register value.
//  617   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  618 uint32_t CAN_GetBufferStatus(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber)
//  619 {
//  620   /* Check the parameters */
//  621   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  622   assert_param(IS_CAN_BUFFER(BufferNumber));
//  623 
//  624   return CANx->BUF_CON[BufferNumber];
CAN_GetBufferStatus:
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+64]
        BX       LR               ;; return
//  625 }
//  626 
//  627 /**
//  628   * @brief  Checks whether the specified CAN interrupt enable or disable.
//  629   * @param  CANx: Select the CAN peripheral.
//  630   *         This parameter can be one of the following values:
//  631   *         CAN1, CAN2.
//  632   * @param  CAN_IT: specifies the CAN interrupt sources to be enabled or disabled.
//  633   *         This parameter can be: CAN_IT_GLBINTEN, CAN_IT_RXINTEN, CAN_IT_TXINTEN,
//  634   *         CAN_IT_ERRINTEN or CAN_IT_ERROVERINTEN.
//  635   * @retval The state of CAN_IT (SET or RESET).
//  636   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  637 ITStatus CAN_GetITState(MDR_CAN_TypeDef* CANx, uint32_t CAN_IT)
//  638 {
//  639   ITStatus bitstatus;
//  640 
//  641   /* Check the parameters */
//  642   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  643   assert_param(IS_CAN_ITConfig(CAN_IT));
//  644 
//  645   if ((CANx->INT_EN & CAN_IT) == 0)
CAN_GetITState:
        LDR      R0,[R0, #+16]
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
//  646   {
//  647     bitstatus = RESET;
//  648   }
//  649   else
//  650   {
//  651     bitstatus = SET;
//  652   }
//  653 
//  654   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  655 }
//  656 
//  657 /**
//  658   * @brief  Clears the CANx interrupt errors pending bits.
//  659   * @param  CANx: Select the CAN peripheral.
//  660   *         This parameter can be any combination of the following values:
//  661   *         CAN1, CAN2.
//  662   * @param  Status_Flag: specifies the interrupt pending bit to clear.
//  663   *         This parameter can be one of the following values:
//  664             CAN_STATUS_ERROR_OVER:    Flag indicating that TEC or REC exceeds ERROR_MAX value
//  665             CAN_STATUS_BIT_ERR:       Transmitting frame bits error flag
//  666             CAN_STATUS_BIT_STUFF_ERR: Staff frame bits error flag
//  667             CAN_STATUS_CRC_ERR:       Frame CRC error flag
//  668             CAN_STATUS_FRAME_ERR:     Frame format error flag
//  669             CAN_STATUS_ACK_ERR:       Reception acknowledge error flag
//  670   * @retval None.
//  671   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  672 void CAN_ITClearErrorPendingBit(MDR_CAN_TypeDef* CANx, uint32_t Status_Flag)
//  673 {
//  674   /* Check the parameters */
//  675   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  676   assert_param(IS_CAN_IT_ERROR_FLAG(Status_Flag));
//  677 
//  678   CANx->STATUS &= ~Status_Flag;
CAN_ITClearErrorPendingBit:
        LDR      R2,[R0, #+4]
        BIC      R1,R2,R1
        STR      R1,[R0, #+4]
//  679 }
        BX       LR               ;; return
//  680 
//  681 /**
//  682   * @brief  Enables or disables interrupts from the reception buffers.
//  683   * @param  CANx: Select the CAN peripheral.
//  684   *         This parameter can be one of the following values:
//  685   *         CAN1, CAN2.
//  686   * @param  Buffer_IT: specifies the reception buffers to enable or disable interrupts of.
//  687   *         Each buffer is designated by bit number in the mask. See @CAN_Buffer_Interrupts
//  688   *         group.
//  689   * @param  NewState: new state of the reception buffer interrupts.
//  690   *         This parameter can be: ENABLE or DISABLE.
//  691   * @retval None.
//  692   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  693 void CAN_RxITConfig(MDR_CAN_TypeDef* CANx, uint32_t Buffer_IT, FunctionalState NewState)
//  694 {
//  695   uint32_t tmpreg;
//  696 
//  697   /* Check the parameters */
//  698   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  699   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  700 
//  701   tmpreg = CANx->INT_RX;
CAN_RxITConfig:
        LDR      R3,[R0, #+192]
//  702 
//  703   if (NewState != DISABLE)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,R3
        BICEQ    R1,R3,R1
//  704   {
//  705     tmpreg |= Buffer_IT;
//  706   }
//  707   else
//  708   {
//  709     tmpreg &= ~Buffer_IT;
//  710   }
//  711 
//  712   CANx->INT_RX = tmpreg;
        STR      R1,[R0, #+192]
//  713 }
        BX       LR               ;; return
//  714 
//  715 /**
//  716   * @brief  Checks whether the specified reception buffer interrupt has occurred or not.
//  717   * @param  CANx: Select the CAN peripheral.
//  718   *         This parameter can be one of the following values:
//  719   *         CAN1, CAN2.
//  720   * @param  BufferNumber: The number of the buffer
//  721   * @retval The new state of RX_FULL[BufferNumber] flag (SET or RESET).
//  722   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  723 ITStatus CAN_GetRxITStatus(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber)
//  724 {
//  725   FlagStatus bitstatus;
//  726 
//  727   /* Check the parameters */
//  728   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  729   assert_param(IS_CAN_BUFFER(BufferNumber));
//  730 
//  731   if ((CANx->RX & CANx->INT_RX & (((uint32_t)0x1) << BufferNumber)) == 0)
CAN_GetRxITStatus:
        LDR      R2,[R0, #+196]
        LDR      R0,[R0, #+192]
        ANDS     R0,R0,R2
        MOVS     R2,#+1
        LSL      R1,R2,R1
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
//  732   {
//  733     bitstatus = RESET;
//  734   }
//  735   else
//  736   {
//  737     bitstatus = SET;
//  738   }
//  739 
//  740   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  741 }
//  742 
//  743 /**
//  744   * @brief  Returns the CANx_Rx Register value.
//  745   * @param  CANx: Select the CAN peripheral.
//  746   *         This parameter can be one of the following values:
//  747   *         CAN1, CAN2.
//  748   * @retval The CANx_Rx Register value.
//  749   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  750 uint32_t CAN_GetRx(MDR_CAN_TypeDef* CANx)
//  751 {
//  752   /* Check the parameters */
//  753   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  754 
//  755   return CANx->RX;
CAN_GetRx:
        LDR      R0,[R0, #+196]
        BX       LR               ;; return
//  756 }
//  757 
//  758 /**
//  759   * @brief  Enables or disables interrupts from the transmission buffers.
//  760   * @param  CANx: Select the CAN peripheral.
//  761   *         This parameter can be one of the following values:
//  762   *         CAN1, CAN2.
//  763   * @param  Buffer_IT: specifies the transmission buffers to enable or disable interrupts of.
//  764   *         Each buffer is designated by bit number in the mask. See @CAN_Buffer_Interrupts
//  765   *         group.
//  766   * @param  NewState: new state of the reception buffer interrupts.
//  767   *         This parameter can be: ENABLE or DISABLE.
//  768   * @retval None.
//  769   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  770 void CAN_TxITConfig(MDR_CAN_TypeDef* CANx, uint32_t Buffer_IT, FunctionalState NewState)
//  771 {
//  772   uint32_t tmpreg;
//  773 
//  774   /* Check the parameters */
//  775   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  776   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  777 
//  778   tmpreg = CANx->INT_TX;
CAN_TxITConfig:
        LDR      R3,[R0, #+200]
//  779 
//  780   if (NewState != DISABLE)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,R3
        BICEQ    R1,R3,R1
//  781   {
//  782     tmpreg |= Buffer_IT;
//  783   }
//  784   else
//  785   {
//  786     tmpreg &= ~Buffer_IT;
//  787   }
//  788 
//  789   CANx->INT_TX = tmpreg;
        STR      R1,[R0, #+200]
//  790 }
        BX       LR               ;; return
//  791 
//  792 /**
//  793   * @brief  Checks whether the specified transmission buffer interrupt has occurred or not.
//  794   * @param  CANx: Select the CAN peripheral.
//  795   *         This parameter can be one of the following values:
//  796   *         CAN1, CAN2.
//  797   * @param  BufferNumber: The number of the buffer
//  798   * @retval The new state of ~TX_REQ[BufferNumber] flag (SET or RESET).
//  799   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  800 ITStatus CAN_GetTxITStatus(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber)
//  801 {
//  802   FlagStatus bitstatus;
//  803 
//  804   /* Check the parameters */
//  805   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  806   assert_param(IS_CAN_BUFFER(BufferNumber));
//  807 
//  808   if ((CANx->TX & CANx->INT_TX & (((uint32_t)0x1) << BufferNumber)) == 0)
CAN_GetTxITStatus:
        LDR      R2,[R0, #+204]
        LDR      R0,[R0, #+200]
        ANDS     R0,R0,R2
        MOVS     R2,#+1
        LSL      R1,R2,R1
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
//  809   {
//  810     bitstatus = RESET;
//  811   }
//  812   else
//  813   {
//  814     bitstatus = SET;
//  815   }
//  816 
//  817   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  818 }
//  819 
//  820 /**
//  821   * @brief  Clears the CANx transmission or reception buffer interrupt
//  822   *         pending bits.
//  823   * @param  CANx: Select the CAN peripheral.
//  824   *         This parameter can be one of the following values:
//  825   *         CAN1, CAN2.
//  826   * @param  BufferNumber: The number of the buffer
//  827   * @param  Status_Flag: specifies the interrupt pending bit to clear.
//  828   *         This parameter can be of the following values:
//  829             CAN_STATUS_RX_READY:    Flag indicating that there are messages received
//  830             CAN_STATUS_TX_READY:    Flag indicating that there are buffers for transmitting
//  831   * @retval None.
//  832   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  833 void CAN_ITClearRxTxPendingBit(MDR_CAN_TypeDef* CANx, uint32_t BufferNumber, uint32_t Status_Flag)
//  834 {
//  835   uint32_t tmpreg;
//  836 
//  837   /* Check the parameters */
//  838   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  839   assert_param(IS_CAN_BUFFER(BufferNumber));
//  840   assert_param(IS_CAN_IT_RXTX_FLAG(Status_Flag));
//  841 
//  842   tmpreg = CANx->BUF_CON[BufferNumber];
CAN_ITClearRxTxPendingBit:
        ADD      R0,R0,R1, LSL #+2
        LDR      R1,[R0, #+64]
//  843 
//  844   if (Status_Flag == CAN_STATUS_RX_READY)
        CMP      R2,#+1
        IT       EQ 
        BICEQ    R1,R1,#0x40
//  845   {
//  846     tmpreg &= ~CAN_STATUS_RX_FULL;
        BEQ.N    ??CAN_ITClearRxTxPendingBit_0
//  847   }
//  848   else if (Status_Flag == CAN_STATUS_TX_READY)
        CMP      R2,#+2
        IT       EQ 
        ORREQ    R1,R1,#0x20
//  849   {
//  850     tmpreg |= CAN_STATUS_TX_REQ;
//  851   }
//  852 
//  853   CANx->BUF_CON[BufferNumber] = tmpreg;
??CAN_ITClearRxTxPendingBit_0:
        STR      R1,[R0, #+64]
//  854 }
        BX       LR               ;; return
//  855 
//  856 /**
//  857   * @brief  Initializes the CANx peripheral Clock according to the
//  858   *         specified parameters.
//  859   * @param  CANx: Select the CAN peripheral.
//  860   *         This parameter can be one of the following values:
//  861   *         CAN1, CAN2.
//  862   * @param  CAN_BRG: specifies the HCLK division factor.
//  863   *         This parameter can be one of the following values:
//  864   *           @arg CAN_HCLKdiv1
//  865   *           @arg CAN_HCLKdiv2
//  866   *           @arg CAN_HCLKdiv4
//  867   *           @arg CAN_HCLKdiv8
//  868   *           @arg CAN_HCLKdiv16
//  869   *           @arg CAN_HCLKdiv32
//  870   *           @arg CAN_HCLKdiv64
//  871   *           @arg CAN_HCLKdiv128
//  872   * @retval None
//  873   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  874 void CAN_BRGInit(MDR_CAN_TypeDef* CANx, uint32_t CAN_BRG)
//  875 {
CAN_BRGInit:
        PUSH     {R4,LR}
//  876   uint32_t tmpreg;
//  877 
//  878   /* Check the parameters */
//  879   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  880   assert_param(IS_CAN_CLOCK_BRG(CAN_BRG));
//  881 
//  882   tmpreg = MDR_RST_CLK->CAN_CLOCK;
        LDR.N    R2,??DataTable0  ;; 0x40020020
        LDR      R3,[R2, #+0]
//  883 
//  884   if (CANx == MDR_CAN1)
        CMP      R0,#+1073741824
        BNE.N    ??CAN_BRGInit_0
//  885   {
//  886     tmpreg |= RST_CLK_CAN_CLOCK_CAN1_CLK_EN;
//  887     tmpreg &= ~RST_CLK_CAN_CLOCK_CAN1_BRG_Msk;
//  888     tmpreg |= CAN_BRG;
        LSRS     R0,R3,#+8
        ORRS     R0,R1,R0, LSL #+8
        ORR      R3,R0,#0x1000000
        B.N      ??CAN_BRGInit_1
//  889   }
//  890   else if (CANx == MDR_CAN2)
??CAN_BRGInit_0:
        LDR.N    R4,??DataTable0_1  ;; 0x40008000
        CMP      R0,R4
        BNE.N    ??CAN_BRGInit_1
//  891   {
//  892     tmpreg |= RST_CLK_CAN_CLOCK_CAN2_CLK_EN;
//  893     tmpreg &= ~RST_CLK_CAN_CLOCK_CAN2_BRG_Msk;
//  894     tmpreg |= (CAN_BRG << 8);
        BIC      R0,R3,#0xFF00
        ORR      R0,R0,R1, LSL #+8
        ORR      R3,R0,#0x2000000
//  895   }
//  896 
//  897   MDR_RST_CLK->CAN_CLOCK = tmpreg;
??CAN_BRGInit_1:
        STR      R3,[R2, #+0]
//  898 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40020020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40008000
//  899 
//  900 /**
//  901   * @brief  Service function for some SFRs reading
//  902   *         supporting MDR32F9Qx Series Errata Notice,
//  903   *         Error 0002 workaround.
//  904   * @param  SFR: specifies SFR address
//  905   * @retval SFR value
//  906   * @note   If WORKAROUND_MDR32F9QX_ERROR_0002 is defined
//  907   *         the function performs corrective actions (IMPORTANT:
//  908   *         after SFR reading it enables IRQs in this mode),
//  909   *         otherwise, just reads SFR.
//  910   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  911 static __INLINE uint32_t CAN_ReadBufferSFR(__IO uint32_t* SFR)
//  912 {
//  913 #ifdef WORKAROUND_MDR32F9QX_ERROR_0002
//  914   /*
//  915    * MDR32F9Qx Series Errata Notice, Error 0002:
//  916    * The registers CAN_BUFxx_ID, CAN_BUFxx_DLC, CAN_BUFxx_DATAL,
//  917    * CAN_BUFxx_DATAH, CAN_BUFxx_MASK or CAN_BUFxx_FILTER value
//  918    * may be incorrectly read as 0 if CAN controller accessed any
//  919    * of that registers at the moment of reading.
//  920    * In such case, another read should be performed in a time less
//  921    * than minimum CAN package.
//  922    */
//  923   uint32_t tmpreg;
//  924 
//  925   __disable_irq();
CAN_ReadBufferSFR:
        CPSID    I
//  926   tmpreg = *SFR;
        LDR      R1,[R0, #+0]
//  927   if (tmpreg == 0)
        CBNZ.N   R1,??CAN_ReadBufferSFR_0
//  928   {
//  929     tmpreg = *SFR;
        LDR      R1,[R0, #+0]
//  930   }
//  931   __enable_irq();
??CAN_ReadBufferSFR_0:
        CPSIE    I
//  932   return tmpreg;
        MOV      R0,R1
        BX       LR               ;; return
//  933 #else
//  934   return *SFR;
//  935 #endif  /* WORKAROUND_MDR32F9QX_ERROR_0002 */
//  936 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  937 
//  938 /** @} */ /* End of group CAN_Private_Functions */
//  939 
//  940 /** @} */ /* End of group CAN */
//  941 
//  942 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  943 
//  944 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  945 *
//  946 * END OF FILE MDR32F9Qx_can.c */
//  947 
//  948 
// 
// 810 bytes in section .text
// 
// 810 bytes of CODE memory
//
//Errors: none
//Warnings: 2
