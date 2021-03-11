///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_port.c                    /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_port.c --preprocess       /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_port /
//                    .s                                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_port

        #define SHT_PROGBITS 0x1

        PUBLIC PORT_DeInit
        PUBLIC PORT_Init
        PUBLIC PORT_ReadInputData
        PUBLIC PORT_ReadInputDataBit
        PUBLIC PORT_ResetBits
        PUBLIC PORT_SetBits
        PUBLIC PORT_StructInit
        PUBLIC PORT_Write
        PUBLIC PORT_WriteBit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_port.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_port.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/06/2010
//    7   * @brief   This file provides all the PORT firmware functions.
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
//   18   * <h2><center>&copy; COPYRIGHT 2010 Phyton</center></h2>
//   19   ******************************************************************************
//   20   * FILE MDR32F9Qx_port.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_config.h"
//   25 #include "MDR32F9Qx_port.h"
//   26 
//   27 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_PORT_C
//   28 
//   29 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   30   * @{
//   31   */
//   32 
//   33 /** @defgroup PORT PORT
//   34   * @{
//   35   */
//   36 
//   37 /** @defgroup PORT_Private_Functions PORT Private Functions
//   38   * @{
//   39   */
//   40 
//   41 /**
//   42   * @brief  Resets the PORTx peripheral registers to their default reset values.
//   43   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//   44   * @retval None
//   45   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void PORT_DeInit(MDR_PORT_TypeDef* PORTx)
//   47 {
//   48   /* Check the parameters */
//   49   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//   50 
//   51   PORTx->ANALOG = 0;
PORT_DeInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   52   PORTx->PULL = 0;
        STR      R1,[R0, #+16]
//   53   PORTx->OE = 0;
        STR      R1,[R0, #+4]
//   54   PORTx->RXTX = 0;
        STR      R1,[R0, #+0]
//   55   PORTx->FUNC = 0;
        STR      R1,[R0, #+8]
//   56   PORTx->PD = 0;
        STR      R1,[R0, #+20]
//   57   PORTx->PWR = 0;
        STR      R1,[R0, #+24]
//   58   PORTx->GFEN = 0;
        STR      R1,[R0, #+28]
//   59 }
        BX       LR               ;; return
//   60 
//   61 
//   62 /**
//   63   * @brief  Initializes the PORTx peripheral according to the specified
//   64   *         parameters in the PORT_InitStruct.
//   65   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//   66   * @param  PORT_InitStruct: pointer to a PORT_InitTypeDef structure that
//   67   *         contains the configuration information for the specified PORT peripheral.
//   68   * @retval None
//   69   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void PORT_Init(MDR_PORT_TypeDef* PORTx, const PORT_InitTypeDef* PORT_InitStruct)
//   71 {
PORT_Init:
        PUSH     {R0,R4-R11,LR}
        SUB      SP,SP,#+8
//   72   uint32_t tmpreg_OE;
//   73   uint32_t tmpreg_FUNC;
//   74   uint32_t tmpreg_ANALOG;
//   75   uint32_t tmpreg_PULL;
//   76   uint32_t tmpreg_PD;
//   77   uint32_t tmpreg_PWR;
//   78   uint32_t tmpreg_GFEN;
//   79   uint32_t portpin, pos, mask_s, mask_l, mask_d;
//   80 
//   81   /* Check the parameters */
//   82   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//   83   assert_param(IS_PORT_PIN(PORT_InitStruct->PORT_Pin));
//   84   assert_param(IS_PORT_OE(PORT_InitStruct->PORT_OE));
//   85   assert_param(IS_PORT_PULL_UP(PORT_InitStruct->PORT_PULL_UP));
//   86   assert_param(IS_PORT_PULL_DOWN(PORT_InitStruct->PORT_PULL_DOWN));
//   87   assert_param(IS_PORT_PD_SHM(PORT_InitStruct->PORT_PD_SHM));
//   88   assert_param(IS_PORT_PD(PORT_InitStruct->PORT_PD));
//   89   assert_param(IS_PORT_GFEN(PORT_InitStruct->PORT_GFEN));
//   90   assert_param(IS_PORT_FUNC(PORT_InitStruct->PORT_FUNC));
//   91   assert_param(IS_PORT_SPEED(PORT_InitStruct->PORT_SPEED));
//   92   assert_param(IS_PORT_MODE(PORT_InitStruct->PORT_MODE));
//   93 
//   94   /* Get current PORT register values */
//   95   tmpreg_OE     = PORTx->OE;
        LDR      R11,[R0, #+4]
//   96   tmpreg_FUNC   = PORTx->FUNC;
        LDR      R12,[R0, #+8]
//   97   tmpreg_ANALOG = PORTx->ANALOG;
        LDR      LR,[R0, #+12]
//   98   tmpreg_PULL   = PORTx->PULL;
        LDR      R4,[R0, #+16]
//   99   tmpreg_PD     = PORTx->PD;
        LDR      R5,[R0, #+20]
//  100   tmpreg_PWR    = PORTx->PWR;
        LDR      R10,[R0, #+24]
//  101   tmpreg_GFEN   = PORTx->GFEN;
        LDR      R0,[R0, #+28]
//  102 
//  103   /* Form new values */
//  104   pos = 0;
        MOVS     R2,#+0
//  105   mask_s = 0x0001;
        MOVS     R3,#+1
//  106   mask_l = 0x00000003;
        MOV      R8,#+3
//  107   mask_d = 0x00010001;
        MOV      R9,#+65537
//  108   for (portpin = PORT_InitStruct->PORT_Pin; portpin; portpin >>= 1)
        LDRH     R6,[R1, #+0]
        CMP      R6,#+0
        B.N      ??PORT_Init_0
//  109   {
//  110     if (portpin & 0x1)
??PORT_Init_1:
        LSLS     R7,R6,#+31
        BPL.N    ??PORT_Init_2
        BIC      R11,R11,R3
        LDRB     R7,[R1, #+2]
        LSLS     R7,R7,R2
        ORR      R11,R7,R11
//  111     {
//  112       tmpreg_OE     = (tmpreg_OE     & ~mask_s) | (PORT_InitStruct->PORT_OE        <<  pos);
//  113       tmpreg_FUNC   = (tmpreg_FUNC   & ~mask_l) | (PORT_InitStruct->PORT_FUNC      << (pos*2));
        LSLS     R7,R2,#+1
        STRB     R7,[SP, #+5]
        BIC      R7,R12,R8
        STR      R7,[SP, #+0]
        LDRB     R7,[R1, #+8]
        LDRSB    R12,[SP, #+5]
        LSL      R12,R7,R12
        LDR      R7,[SP, #+0]
        ORR      R12,R12,R7
//  114       tmpreg_ANALOG = (tmpreg_ANALOG & ~mask_s) | (PORT_InitStruct->PORT_MODE      <<  pos);
        BIC      LR,LR,R3
        LDRB     R7,[R1, #+10]
        LSLS     R7,R7,R2
        ORR      LR,R7,LR
//  115       tmpreg_PULL   = (tmpreg_PULL   & ~mask_d) | (PORT_InitStruct->PORT_PULL_UP   << (pos + 16))
//  116                                                 | (PORT_InitStruct->PORT_PULL_DOWN <<  pos);
        ADD      R7,R2,#+16
        STRB     R7,[SP, #+4]
        BIC      R4,R4,R9
        STR      R4,[SP, #+0]
        LDRB     R7,[R1, #+3]
        LDRSB    R4,[SP, #+4]
        LSL      R4,R7,R4
        LDR      R7,[SP, #+0]
        ORRS     R4,R4,R7
        LDRB     R7,[R1, #+4]
        LSLS     R7,R7,R2
        ORRS     R4,R7,R4
//  117       tmpreg_PD     = (tmpreg_PD     & ~mask_d) | (PORT_InitStruct->PORT_PD_SHM    << (pos + 16))
//  118                                                 | (PORT_InitStruct->PORT_PD        <<  pos);
        BIC      R5,R5,R9
        STR      R5,[SP, #+0]
        LDRB     R7,[R1, #+5]
        LDRSB    R5,[SP, #+4]
        LSL      R5,R7,R5
        LDR      R7,[SP, #+0]
        ORRS     R5,R5,R7
        LDRB     R7,[R1, #+6]
        LSLS     R7,R7,R2
        ORRS     R5,R7,R5
//  119       tmpreg_PWR    = (tmpreg_PWR    & ~mask_l) | (PORT_InitStruct->PORT_SPEED     << (pos*2));
        BIC      R7,R10,R8
        STR      R7,[SP, #+0]
        LDRB     R7,[R1, #+9]
        LDRSB    R10,[SP, #+5]
        LSL      R10,R7,R10
        LDR      R7,[SP, #+0]
        ORR      R10,R10,R7
//  120       tmpreg_GFEN   = (tmpreg_GFEN   & ~mask_s) | (PORT_InitStruct->PORT_GFEN      <<  pos);
        BICS     R0,R0,R3
        LDRB     R7,[R1, #+7]
        LSLS     R7,R7,R2
        ORRS     R0,R7,R0
//  121     }
//  122     mask_s <<= 1;
??PORT_Init_2:
        LSLS     R3,R3,#+1
//  123     mask_l <<= 2;
        LSL      R8,R8,#+2
//  124     mask_d <<= 1;
        LSL      R9,R9,#+1
//  125     pos++;
        ADDS     R2,R2,#+1
//  126   }
        LSRS     R6,R6,#+1
??PORT_Init_0:
        BNE.N    ??PORT_Init_1
//  127 #if defined  (USE_MDR1986VE9x)
//  128   /* Configure PORT registers with new values */
//  129   PORTx->OE     = tmpreg_OE & (~JTAG_PINS(PORTx));
        LDR      R1,[SP, #+8]
        LDR.N    R2,??DataTable4  ;; 0x400b0000
        CMP      R1,R2
        ITE      EQ 
        MOVEQ    R1,#+31
        MOVNE    R1,#+0
        BIC      R2,R11,R1
        LDR      R3,[SP, #+8]
        STR      R2,[R3, #+4]
//  130   PORTx->FUNC   = tmpreg_FUNC & (~JTAG_PINS(PORTx));
        BIC      R2,R12,R1
        LDR      R3,[SP, #+8]
        STR      R2,[R3, #+8]
//  131   PORTx->ANALOG = tmpreg_ANALOG & (~JTAG_PINS(PORTx));
        BIC      R2,LR,R1
        LDR      R3,[SP, #+8]
        STR      R2,[R3, #+12]
//  132   PORTx->PULL   = tmpreg_PULL & (~JTAG_PINS(PORTx));
        BIC      R2,R4,R1
        LDR      R3,[SP, #+8]
        STR      R2,[R3, #+16]
//  133   PORTx->PD     = tmpreg_PD & (~JTAG_PINS(PORTx));
        BIC      R2,R5,R1
        LDR      R3,[SP, #+8]
        STR      R2,[R3, #+20]
//  134   PORTx->PWR    = tmpreg_PWR & (~JTAG_PINS(PORTx));
        BIC      R2,R10,R1
        LDR      R3,[SP, #+8]
        STR      R2,[R3, #+24]
//  135   PORTx->GFEN   = tmpreg_GFEN & (~JTAG_PINS(PORTx));
        BICS     R0,R0,R1
        LDR      R1,[SP, #+8]
        STR      R0,[R1, #+28]
//  136 #elif defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  137   /* Configure PORT registers with new values */
//  138   PORTx->OE     = tmpreg_OE;
//  139   PORTx->FUNC   = tmpreg_FUNC;
//  140   PORTx->ANALOG = tmpreg_ANALOG;
//  141   PORTx->PULL   = tmpreg_PULL;
//  142   PORTx->PD     = tmpreg_PD;
//  143   PORTx->PWR    = tmpreg_PWR;
//  144   PORTx->GFEN   = tmpreg_GFEN;
//  145 
//  146 #endif
//  147 
//  148 }
        POP      {R0-R2,R4-R11,PC}  ;; return
//  149 
//  150 /**
//  151   * @brief  Fills each PORT_InitStruct member with its default value.
//  152   * @param  PORT_InitStruct: pointer to a PORT_InitTypeDef structure which will
//  153   *         be initialized.
//  154   * @retval None
//  155   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 void PORT_StructInit(PORT_InitTypeDef* PORT_InitStruct)
//  157 {
//  158   /* Reset PORT initialization structure parameters values */
//  159   PORT_InitStruct->PORT_Pin        = PORT_Pin_All;
PORT_StructInit:
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
//  160   PORT_InitStruct->PORT_OE         = PORT_OE_IN;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  161   PORT_InitStruct->PORT_PULL_UP    = PORT_PULL_UP_OFF;
        STRB     R1,[R0, #+3]
//  162   PORT_InitStruct->PORT_PULL_DOWN  = PORT_PULL_DOWN_OFF;
        STRB     R1,[R0, #+4]
//  163   PORT_InitStruct->PORT_PD_SHM     = PORT_PD_SHM_OFF;
        STRB     R1,[R0, #+5]
//  164   PORT_InitStruct->PORT_PD         = PORT_PD_DRIVER;
        STRB     R1,[R0, #+6]
//  165   PORT_InitStruct->PORT_GFEN       = PORT_GFEN_OFF;
        STRB     R1,[R0, #+7]
//  166   PORT_InitStruct->PORT_FUNC       = PORT_FUNC_PORT;
        STRB     R1,[R0, #+8]
//  167   PORT_InitStruct->PORT_SPEED      = PORT_OUTPUT_OFF;
        STRB     R1,[R0, #+9]
//  168   PORT_InitStruct->PORT_MODE       = PORT_MODE_ANALOG;
        STRB     R1,[R0, #+10]
//  169 }
        BX       LR               ;; return
//  170 
//  171 /**
//  172   * @brief  Reads the specified input port pin.
//  173   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//  174   * @param  PORT_Pin: specifies the port bit to read.
//  175   *         This parameter can be PORT_Pin_x where x can be (0..15).
//  176   * @retval The input port pin value.
//  177   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  178 uint8_t PORT_ReadInputDataBit(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin)
//  179 {
//  180   uint8_t bitstatus;
//  181 
//  182   /* Check the parameters */
//  183   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//  184   assert_param(IS_GET_PORT_PIN(PORT_Pin));
//  185 
//  186   if ((PORTx->RXTX & PORT_Pin) != Bit_RESET)
PORT_ReadInputDataBit:
        LDR      R0,[R0, #+0]
        ANDS     R0,R1,R0
        IT       NE 
        MOVNE    R0,#+1
//  187   {
//  188     bitstatus = (uint8_t)Bit_SET;
//  189   }
//  190   else
//  191   {
//  192     bitstatus = (uint8_t)Bit_RESET;
//  193   }
//  194   return bitstatus;
        UXTB     R0,R0
        BX       LR               ;; return
//  195 }
//  196 
//  197 /**
//  198   * @brief  Reads the specified PORT input data port.
//  199   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//  200   * @retval PORT input data port value. Bits (16..31) are always 0.
//  201   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 uint32_t PORT_ReadInputData(MDR_PORT_TypeDef* PORTx)
//  203 {
//  204   /* Check the parameters */
//  205   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//  206 
//  207   return (PORTx->RXTX);
PORT_ReadInputData:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  208 }
//  209 
//  210 /**
//  211   * @brief  Sets the selected data port bits.
//  212   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//  213   * @param  PORT_Pin: specifies the port bits to be written.
//  214   *         This parameter can be any combination of PORT_Pin_x where x can be (0..15).
//  215   * @retval None
//  216   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 void PORT_SetBits ( MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin )
//  218 {
//  219 	/* Check the parameters */
//  220 	assert_param(IS_PORT_ALL_PERIPH(PORTx));
//  221 	assert_param(IS_PORT_PIN(PORT_Pin));
//  222 	assert_param(IS_NOT_JTAG_PIN(PORTx, PORT_Pin));
//  223 
//  224 #if defined  (USE_MDR1986VE9x)
//  225 	PORTx->RXTX = PORT_Pin | (PORTx->RXTX & (~JTAG_PINS(PORTx)));
PORT_SetBits:
        LDR      R2,[R0, #+0]
        LDR.N    R3,??DataTable4  ;; 0x400b0000
        CMP      R0,R3
        ITE      EQ 
        MOVEQ    R3,#+31
        MOVNE    R3,#+0
        BICS     R2,R2,R3
        ORRS     R1,R2,R1
        STR      R1,[R0, #+0]
//  226 #endif
//  227 
//  228 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  229 	PORTx->SETTX = PORT_Pin;
//  230 #endif
//  231 }
        BX       LR               ;; return
//  232 
//  233 /**
//  234   * @brief  Clears the selected data port bits.
//  235   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//  236   * @param  PORT_Pin: specifies the port bits to be written.
//  237   *         This parameter can be any combination of PORT_Pin_x where x can be (0..15).
//  238   * @retval None
//  239   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  240 void PORT_ResetBits(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin)
//  241 {
//  242   /* Check the parameters */
//  243   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//  244   assert_param(IS_PORT_PIN(PORT_Pin));
//  245   assert_param(IS_NOT_JTAG_PIN(PORTx, PORT_Pin));
//  246 
//  247 #if defined  (USE_MDR1986VE9x)
//  248   PORTx->RXTX &= ~(PORT_Pin | JTAG_PINS(PORTx));
PORT_ResetBits:
        LDR.N    R2,??DataTable4  ;; 0x400b0000
        CMP      R0,R2
        ITE      EQ 
        MOVEQ    R2,#+31
        MOVNE    R2,#+0
        LDR      R3,[R0, #+0]
        ORRS     R1,R2,R1
        BIC      R1,R3,R1
        STR      R1,[R0, #+0]
//  249 #endif
//  250 
//  251 #if defined ( USE_MDR1986VE3 ) || defined (USE_MDR1986VE1T)
//  252   PORTx->CLRTX = PORT_Pin;
//  253 #endif
//  254 }
        BX       LR               ;; return
//  255 
//  256 /**
//  257   * @brief  Sets or clears the selected data port bit.
//  258   * @param  PORTx: where x can be (A..G) to select the PORT peripheral.
//  259   * @param  PORT_Pin: specifies the port bit to be written.
//  260   *         This parameter can be one of PORT_Pin_x where x can be (0..15).
//  261   * @param  BitVal: specifies the value to be written to the selected bit.
//  262   *         This parameter can be one of the BitAction enum values:
//  263   *           @arg Bit_RESET: to clear the port pin
//  264   *           @arg Bit_SET: to set the port pin
//  265   * @retval None
//  266   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  267 void PORT_WriteBit(MDR_PORT_TypeDef* PORTx, uint32_t PORT_Pin, BitAction BitVal)
//  268 {
PORT_WriteBit:
        PUSH     {R4,LR}
//  269   uint32_t portdata;
//  270   /* Check the parameters */
//  271   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//  272   assert_param(IS_GET_PORT_PIN(PORT_Pin));
//  273   assert_param(IS_PORT_BIT_ACTION(BitVal));
//  274   assert_param(IS_NOT_JTAG_PIN(PORTx, PORT_Pin));
//  275 
//  276   portdata = PORTx->RXTX & (~JTAG_PINS(PORTx));
        LDR      R3,[R0, #+0]
        LDR.N    R4,??DataTable4  ;; 0x400b0000
        CMP      R0,R4
        ITE      EQ 
        MOVEQ    R4,#+31
        MOVNE    R4,#+0
        BICS     R3,R3,R4
//  277   if (BitVal != Bit_RESET)
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,R3
        BICEQ    R1,R3,R1
//  278   {
//  279     PORTx->RXTX = portdata | PORT_Pin;
//  280   }
//  281   else
//  282   {
//  283     PORTx->RXTX = portdata & (~PORT_Pin);
        STR      R1,[R0, #+0]
//  284   }
//  285 }
        POP      {R4,PC}          ;; return
//  286 
//  287 /**
//  288   * @brief  Writes data to the specified PORT data port.
//  289   * @param  PORTx: where x can be (A..F) to select the PORT peripheral.
//  290   * @param  PortVal: specifies the value to be written to the port output data register.
//  291   *                  Bits (16..31) are ignored.
//  292   * @retval None
//  293   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  294 void PORT_Write(MDR_PORT_TypeDef* PORTx, uint32_t PortVal)
//  295 {
//  296   /* Check the parameters */
//  297   assert_param(IS_PORT_ALL_PERIPH(PORTx));
//  298   assert_param(IS_NOT_JTAG_PIN(PORTx, PortVal));
//  299 
//  300   PORTx->RXTX = PortVal & (~JTAG_PINS(PORTx));
PORT_Write:
        LDR.N    R2,??DataTable4  ;; 0x400b0000
        CMP      R0,R2
        ITE      EQ 
        MOVEQ    R2,#+31
        MOVNE    R2,#+0
        BICS     R1,R1,R2
        STR      R1,[R0, #+0]
//  301 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x400b0000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  302 
//  303 /** @} */ /* End of group PORT_Private_Functions */
//  304 
//  305 /** @} */ /* End of group PORT */
//  306 
//  307 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  308 
//  309 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  310 *
//  311 * END OF FILE MDR32F9Qx_port.c */
//  312 
// 
// 434 bytes in section .text
// 
// 434 bytes of CODE memory
//
//Errors: none
//Warnings: none
