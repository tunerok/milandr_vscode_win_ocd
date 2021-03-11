///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_i2c.c                     /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_S /
//                    tdPeriph_Driver\src\MDR32F9Qx_i2c.c --preprocess        /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_i2c. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_i2c

        #define SHT_PROGBITS 0x1

        PUBLIC I2C_CheckEvent
        PUBLIC I2C_ClearITPendingBit
        PUBLIC I2C_Cmd
        PUBLIC I2C_DeInit
        PUBLIC I2C_GetFlagStatus
        PUBLIC I2C_GetITStatus
        PUBLIC I2C_GetLastEvent
        PUBLIC I2C_GetReceivedData
        PUBLIC I2C_ITConfig
        PUBLIC I2C_Init
        PUBLIC I2C_Send7bitAddress
        PUBLIC I2C_SendByte
        PUBLIC I2C_SendSTOP
        PUBLIC I2C_StartReceiveData
        PUBLIC I2C_StructInit

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Libraries\MDR32F9Qx_StdPeriph_Driver\src\MDR32F9Qx_i2c.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_i2c.c
//    4   * @author  Phyton Application Team
//    5   * @version V1.4.0
//    6   * @date    22/02/2011
//    7   * @brief   This file provides all the I2C firmware functions.
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
//   20   * FILE MDR32F9Qx_i2c.c
//   21   */
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "MDR32F9Qx_i2c.h"
//   25 #include "MDR32F9Qx_config.h"
//   26 
//   27 #define ASSERT_INFO_FILE_ID FILEID__MDR32F9X_I2C_C
//   28 
//   29 /** @addtogroup __MDR32F9Qx_StdPeriph_Driver MDR32F9Qx Standard Peripherial Driver
//   30   * @{
//   31   */
//   32 
//   33 /** @defgroup I2C I2C
//   34   * @warning  This module can be used only for microcontroller series MDR1986VE9x.
//   35   * @{
//   36   */
//   37 
//   38 #if defined (USE_MDR1986VE9x)
//   39 
//   40 /** @defgroup I2C_Private_Functions I2C Private Functions
//   41   * @{
//   42   */
//   43 
//   44 /**
//   45   * @brief  Resets the I2C peripheral registers to their default reset values.
//   46   * @param  None.
//   47   * @retval None.
//   48   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void I2C_DeInit(void)
//   50 {
//   51   MDR_I2C_TypeDef *I2Cx;
//   52 
//   53   I2Cx = MDR_I2C;
//   54 
//   55   I2Cx->CTR = 0;
I2C_DeInit:
        LDR.N    R0,??DataTable11  ;; 0x40050000
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   56   I2Cx->STA = 0;
        STR      R1,[R0, #+16]
//   57   I2Cx->CMD = I2C_CMD_CLRINT;
        MOVS     R1,#+1
        STR      R1,[R0, #+24]
//   58   I2Cx->PRL = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   59   I2Cx->PRH = 0;
        STR      R1,[R0, #+4]
//   60 }
        BX       LR               ;; return
//   61 
//   62 /**
//   63   * @brief  Initializes the I2C peripheral according to the specified
//   64   *         parameters in the I2C_InitStruct.
//   65   * @param  I2C_InitStruct: pointer to a I2C_InitTypeDef structure that
//   66   *         contains the configuration information for the specified I2C peripheral.
//   67   * @retval None.
//   68   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 void I2C_Init(const I2C_InitTypeDef* I2C_InitStruct)
//   70 {
//   71   MDR_I2C_TypeDef *I2Cx;
//   72   uint32_t tmpreg_CTR;
//   73   uint32_t tmpreg_PR;
//   74 
//   75   /* Check the parameters */
//   76   assert_param(IS_I2C_SPEED(I2C_InitStruct->I2C_Speed));
//   77   assert_param(IS_I2C_CLKDIV(I2C_InitStruct->I2C_ClkDiv));
//   78 
//   79   I2Cx = MDR_I2C;
//   80 
//   81   /* Form new values */
//   82   tmpreg_CTR = I2Cx->CTR;
I2C_Init:
        LDR.N    R1,??DataTable11  ;; 0x40050000
        LDR      R2,[R1, #+8]
//   83 
//   84   if ((I2C_InitStruct->I2C_Speed & I2C_SPEED_Msk) != I2C_SPEED_UP_TO_400KHz)
        LDRB     R3,[R0, #+4]
        LSLS     R3,R3,#+26
        ITE      MI 
        ORRMI    R2,R2,#0x20
        BICPL    R2,R2,#0x20
//   85   {
//   86     tmpreg_CTR |= I2C_CTR_S_I2C;
//   87   }
//   88   else
//   89   {
//   90     tmpreg_CTR &= ~I2C_CTR_S_I2C;
//   91   }
//   92 
//   93   /* Configure I2C registers with new values */
//   94   I2Cx->CTR = tmpreg_CTR;
        STR      R2,[R1, #+8]
//   95 
//   96   tmpreg_PR = I2C_InitStruct->I2C_ClkDiv;
        LDR      R0,[R0, #+0]
//   97   I2Cx->PRL = tmpreg_PR;
        STR      R0,[R1, #+0]
//   98   I2Cx->PRH = tmpreg_PR >> 8;
        LSRS     R0,R0,#+8
        STR      R0,[R1, #+4]
//   99 }
        BX       LR               ;; return
//  100 
//  101 /**
//  102   * @brief  Fills each I2C_InitStruct member with its default value.
//  103   * @param  I2C_InitStruct: pointer to a I2C_InitTypeDef structure which will
//  104   *         be initialized.
//  105   * @retval None.
//  106   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct)
//  108 {
//  109   /* Reset I2C initialization structure parameters values */
//  110   I2C_InitStruct->I2C_Speed  = I2C_SPEED_UP_TO_400KHz;
I2C_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  111   I2C_InitStruct->I2C_ClkDiv = 1;
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  112 }
        BX       LR               ;; return
//  113 
//  114 /**
//  115   * @brief  Enables or disables the I2C peripheral.
//  116   * @param  NewState: new state of the I2C peripheral.
//  117   *         This parameter can be: ENABLE or DISABLE.
//  118   * @retval None.
//  119   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void I2C_Cmd(FunctionalState NewState)
//  121 {
//  122   MDR_I2C_TypeDef *I2Cx;
//  123   uint32_t tmpreg_CTR;
//  124 
//  125   /* Check the parameters */
//  126   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  127 
//  128   I2Cx = MDR_I2C;
//  129 
//  130   tmpreg_CTR = I2Cx->CTR;
I2C_Cmd:
        LDR.N    R1,??DataTable11_1  ;; 0x40050008
        LDR      R2,[R1, #+0]
//  131 
//  132   /* Form new value */
//  133   if (NewState != DISABLE)
        CMP      R0,#+0
        ITE      NE 
        ORRNE    R0,R2,#0x80
        BICEQ    R0,R2,#0x80
//  134   {
//  135     /* Enable I2C by setting the EN_I2C bit in the CTR register */
//  136     tmpreg_CTR |= I2C_CTR_EN_I2C;
//  137   }
//  138   else
//  139   {
//  140     /* Disable I2C by resetting the EN_I2C bit in the CTR register */
//  141     tmpreg_CTR &= ~I2C_CTR_EN_I2C;
//  142   }
//  143 
//  144   /* Configure CTR register with new value */
//  145   I2Cx->CTR = tmpreg_CTR;
        STR      R0,[R1, #+0]
//  146 }
        BX       LR               ;; return
//  147 
//  148 /**
//  149   * @brief  Enables or disables the I2C interrupts.
//  150   * @param  NewState: new state of the I2C interrupts.
//  151   *         This parameter can be: ENABLE or DISABLE.
//  152   * @retval None.
//  153   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 void I2C_ITConfig(FunctionalState NewState)
//  155 {
//  156   MDR_I2C_TypeDef *I2Cx;
//  157   uint32_t tmpreg_CTR;
//  158 
//  159   /* Check the parameters */
//  160   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  161 
//  162   I2Cx = MDR_I2C;
//  163 
//  164   tmpreg_CTR = I2Cx->CTR;
I2C_ITConfig:
        LDR.N    R1,??DataTable11_1  ;; 0x40050008
        LDR      R2,[R1, #+0]
//  165 
//  166   /* Form new value */
//  167   if (NewState != DISABLE)
        CMP      R0,#+0
        ITE      NE 
        ORRNE    R0,R2,#0x40
        BICEQ    R0,R2,#0x40
//  168   {
//  169     /* Enable the I2C interrupts by setting the EN_INT bit in the CTR register */
//  170     tmpreg_CTR |= I2C_CTR_EN_INT;
//  171   }
//  172   else
//  173   {
//  174     /* Disable the I2C interrupts by resetting the EN_INT bit in the CTR register */
//  175     tmpreg_CTR &= ~I2C_CTR_EN_INT;
//  176   }
//  177 
//  178   /* Configure CTR register with new value */
//  179   I2Cx->CTR = tmpreg_CTR;
        STR      R0,[R1, #+0]
//  180 }
        BX       LR               ;; return
//  181 
//  182 /**
//  183   * @brief  Checks whether the I2C interrupt has occurred or not.
//  184   * @param  None.
//  185   * @retval The current state of I2C_STA_INT (SET or RESET).
//  186   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 ITStatus I2C_GetITStatus(void)
//  188 {
//  189   MDR_I2C_TypeDef *I2Cx;
//  190   ITStatus bitstatus;
//  191 
//  192   I2Cx = MDR_I2C;
//  193 
//  194   if ((I2Cx->STA & I2C_STA_INT) == I2C_STA_INT)
I2C_GetITStatus:
        LDR.N    R0,??DataTable11_2  ;; 0x40050010
        LDR      R0,[R0, #+0]
//  195   {
//  196     bitstatus = SET;
//  197   }
//  198   else
//  199   {
//  200     bitstatus = RESET;
//  201   }
//  202 
//  203   return bitstatus;
        AND      R0,R0,#0x1
        BX       LR               ;; return
//  204 }
//  205 
//  206 /**
//  207   * @brief  Clears the I2C_STA_INT interrupt pending bit.
//  208   * @param  None.
//  209   * @retval None.
//  210   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void I2C_ClearITPendingBit(void)
//  212 {
//  213   MDR_I2C_TypeDef *I2Cx;
//  214 
//  215   I2Cx = MDR_I2C;
//  216 
//  217   I2Cx->CMD |= I2C_CMD_CLRINT;
I2C_ClearITPendingBit:
        LDR.N    R0,??DataTable11_3  ;; 0x40050018
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x1
        STR      R1,[R0, #+0]
//  218 }
        BX       LR               ;; return
//  219 
//  220 /**
//  221   * @brief  Transmits the address byte to select the Slave device.
//  222   * @param  Address: specifies the Slave address which will be transmitted.
//  223   *         The Address[0] bit value is ignored. So only Address[7..1] bits
//  224   *         are the seven-bit Slave address.
//  225   * @param  Direction: specifies whether the I2C device will be a
//  226   *         Transmitter or a Receiver. This parameter can be one of the
//  227   *         following values:
//  228   *           @arg I2C_Direction_Transmitter: Transmitter mode;
//  229   *           @arg I2C_Direction_Receiver:    Receiver mode.
//  230   * @retval None.
//  231   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void I2C_Send7bitAddress(uint8_t Address, uint32_t Direction)
//  233 {
//  234   MDR_I2C_TypeDef *I2Cx;
//  235 
//  236   assert_param(IS_I2C_DIRECTION(Direction));
//  237 
//  238   I2Cx = MDR_I2C;
//  239 
//  240   I2Cx->TXD = (Address & ~I2C_Direction_Msk) | Direction;
I2C_Send7bitAddress:
        LDR.N    R2,??DataTable11_4  ;; 0x40050014
        LSRS     R0,R0,#+1
        ORRS     R0,R1,R0, LSL #+1
        STR      R0,[R2, #+0]
//  241   I2Cx->CMD = I2C_CMD_START | I2C_CMD_WR;
        MOVS     R0,#+144
        STR      R0,[R2, #+4]
//  242 }
        BX       LR               ;; return
//  243 
//  244 /**
//  245   * @brief  Sends a byte through the I2C peripheral.
//  246   * @param  ByteToSend: Byte to be transmitted.
//  247   * @retval None.
//  248   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 void I2C_SendByte(uint8_t ByteToSend)
//  250 {
//  251   MDR_I2C_TypeDef *I2Cx;
//  252 
//  253   I2Cx = MDR_I2C;
//  254 
//  255   I2Cx->TXD = ByteToSend;
I2C_SendByte:
        LDR.N    R1,??DataTable11_4  ;; 0x40050014
        STR      R0,[R1, #+0]
//  256   I2Cx->CMD = I2C_CMD_WR;
        MOVS     R0,#+16
        STR      R0,[R1, #+4]
//  257 }
        BX       LR               ;; return
//  258 
//  259 /**
//  260   * @brief  Generates I2C communication STOP condition.
//  261   * @param  None.
//  262   * @retval None.
//  263   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  264 void I2C_SendSTOP(void)
//  265 {
//  266   MDR_I2C_TypeDef *I2Cx;
//  267 
//  268   I2Cx = MDR_I2C;
//  269 
//  270   I2Cx->CMD = I2C_CMD_STOP;
I2C_SendSTOP:
        LDR.N    R0,??DataTable11_3  ;; 0x40050018
        MOVS     R1,#+64
        STR      R1,[R0, #+0]
//  271 }
        BX       LR               ;; return
//  272 
//  273 /**
//  274   * @brief  Starts data receiving from Slave.
//  275   * @param  Acknowlage: specifies the acknowlage state at end
//  276   *         of data receiving. This parameter can be one of the
//  277   *         following values:
//  278   *           @arg I2C_Send_to_Slave_ACK:  Acknowlage (ACK);
//  279   *           @arg I2C_Send_to_Slave_NACK: Not Acknowlage (NACK).
//  280   * @retval None.
//  281   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  282 void I2C_StartReceiveData(uint32_t Acknowlage)
//  283 {
//  284   MDR_I2C_TypeDef *I2Cx;
//  285 
//  286   assert_param(IS_I2C_SEND_ACKNOWLAGE(Acknowlage));
//  287 
//  288   I2Cx = MDR_I2C;
//  289 
//  290   I2Cx->CMD = I2C_CMD_RD | Acknowlage;
I2C_StartReceiveData:
        ORR      R0,R0,#0x20
        LDR.N    R1,??DataTable11_3  ;; 0x40050018
        STR      R0,[R1, #+0]
//  291 }
        BX       LR               ;; return
//  292 
//  293 /**
//  294   * @brief  Returns received from Slave data byte.
//  295   * @param  None.
//  296   * @retval Received from data byte.
//  297   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  298 uint8_t I2C_GetReceivedData(void)
//  299 {
//  300   MDR_I2C_TypeDef *I2Cx;
//  301 
//  302   I2Cx = MDR_I2C;
//  303 
//  304   return I2Cx->RXD;
I2C_GetReceivedData:
        LDR.N    R0,??DataTable11_5  ;; 0x4005000c
        LDR      R0,[R0, #+0]
        UXTB     R0,R0
        BX       LR               ;; return
//  305 }
//  306 
//  307 /**
//  308   * @brief  Checks whether the last I2C Event is equal to the one passed
//  309   *         as parameter.
//  310   * @param  Event: specifies the event to be checked.
//  311   *         This parameter can be one of the values discribed in
//  312   *         @ref I2C_EVENTS or user specified combination of flags
//  313   *         (@ref I2C_FLAGS).
//  314   *
//  315   * @note:  For detailed description of Events, please refer to section
//  316   *         @ref I2C_EVENTS in MDR32F9Qx_i2c.h file.
//  317   *
//  318   * @retval An ErrorStatus enumuration value:
//  319   *         - SUCCESS: Last event is equal to the Event;
//  320   *         - ERROR: Last event is different from the Event.
//  321   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  322 ErrorStatus I2C_CheckEvent(uint32_t Event)
//  323 {
I2C_CheckEvent:
        PUSH     {R4,LR}
        MOV      R4,R0
//  324   ErrorStatus errstatus;
//  325 
//  326   assert_param(IS_I2C_FLAGS(Event));
//  327 
//  328   if ((I2C_GetLastEvent() & Event) == Event)
        BL       I2C_GetLastEvent
        ANDS     R0,R4,R0
        CMP      R0,R4
        BNE.N    ??I2C_CheckEvent_0
//  329   {
//  330     errstatus = SUCCESS;
        MOVS     R0,#+1
        POP      {R4,PC}
//  331   }
//  332   else
//  333   {
//  334     errstatus = ERROR;
??I2C_CheckEvent_0:
        MOVS     R0,#+0
//  335   }
//  336 
//  337   return errstatus;
        POP      {R4,PC}          ;; return
//  338 }
//  339 
//  340 /**
//  341   * @brief  Returns the last I2C Event.
//  342   * @param  None.
//  343   * @retval The last event
//  344  *
//  345   * @note:  For detailed description of Events, please refer to section
//  346   *         @ref I2C_EVENTS in MDR32F9Qx_i2c.h file.
//  347   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  348 uint32_t I2C_GetLastEvent(void)
//  349 {
//  350   MDR_I2C_TypeDef *I2Cx;
//  351   uint32_t event;
//  352 
//  353   I2Cx = MDR_I2C;
//  354 
//  355   event = I2Cx->CMD | (I2Cx->STA << 8);
I2C_GetLastEvent:
        LDR.N    R0,??DataTable11_2  ;; 0x40050010
        LDR      R1,[R0, #+8]
        LDR      R0,[R0, #+0]
        ORR      R0,R1,R0, LSL #+8
//  356   event |= ~event << 16;
//  357 
//  358   return event;
        MVNS     R1,R0
        ORR      R0,R0,R1, LSL #+16
        BX       LR               ;; return
//  359 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40050000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x40050008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x40050010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x40050018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x40050014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x4005000c
//  360 
//  361 /**
//  362   * @brief  Checks whether the specified I2C flag is set or not.
//  363   * @param  Flag: specifies the flag to check.
//  364   *         This parameter can be one of the values:
//  365   *           @arg I2C_FLAG_CMD_NACK           Master will be send NACK after reading from Slave;
//  366   *           @arg I2C_FLAG_CMD_ACK            Master will be send ACK after reading from Slave;
//  367   *           @arg I2C_FLAG_CMD_WR             The Master to Slave transfer in progress;
//  368   *           @arg I2C_FLAG_CMD_nWR            No the Master to Slave transfer;
//  369   *           @arg I2C_FLAG_CMD_RD             The Slave to Master transfer in progress;
//  370   *           @arg I2C_FLAG_CMD_nRD            No the Slave to Master transfer;
//  371   *           @arg I2C_FLAG_STOP               STOP condition transfer is selected;
//  372   *           @arg I2C_FLAG_nSTOP              STOP condition is resetted;
//  373   *           @arg I2C_FLAG_START              START condition transfer is selected;
//  374   *           @arg I2C_FLAG_nSTART             START condition is resetted;
//  375   *           @arg I2C_FLAG_IRQ                The I2C interrupt pending flag is set;
//  376   *           @arg I2C_FLAG_nIRQ               The I2C interrupt pending flag is cleared;
//  377   *           @arg I2C_FLAG_TRANS              transfer in progress;
//  378   *           @arg I2C_FLAG_nTRANS             No transfer;
//  379   *           @arg I2C_FLAG_LOST_ARB           Arbitration is lost at last byte transfer;
//  380   *           @arg I2C_FLAG_ARB_OK             Arbitration is Ok at last byte transfer;
//  381   *           @arg I2C_FLAG_BUS_BUSY           Some device holds the I2C bus;
//  382   *           @arg I2C_FLAG_BUS_FREE           I2C bus is free (SDA = SCL = 1);
//  383   *           @arg I2C_FLAG_SLAVE_NACK         Not Acknowledge (NACK) received from Slave;
//  384   *           @arg I2C_FLAG_SLAVE_ACK          Acknowledge (ACK) received from Slave.
//  385   * @retval The new state of I2C_FLAG (SET or RESET).
//  386   */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  387 FlagStatus I2C_GetFlagStatus(uint32_t Flag)
//  388 {
I2C_GetFlagStatus:
        PUSH     {R4,LR}
        MOV      R4,R0
//  389   FlagStatus bitstatus;
//  390 
//  391   assert_param(IS_I2C_FLAG(Flag));
//  392 
//  393   if ((I2C_GetLastEvent() & Flag) != 0)
        BL       I2C_GetLastEvent
        ANDS     R0,R4,R0
        IT       NE 
        MOVNE    R0,#+1
//  394   {
//  395     bitstatus = SET;
//  396   }
//  397   else
//  398   {
//  399     bitstatus = RESET;
//  400   }
//  401 
//  402   return bitstatus;
        UXTB     R0,R0
        POP      {R4,PC}          ;; return
//  403 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  404 
//  405 /** @} */ /* End of group I2C_Private_Functions */
//  406 
//  407 #endif /* #if defined (USE_MDR1986VE9x) */
//  408 
//  409 /** @} */ /* End of group I2C */
//  410 
//  411 /** @} */ /* End of group __MDR32F9Qx_StdPeriph_Driver */
//  412 
//  413 /******************* (C) COPYRIGHT 2010 Phyton *********************************
//  414 *
//  415 * END OF FILE MDR32F9Qx_i2c.c */
//  416 
// 
// 256 bytes in section .text
// 
// 256 bytes of CODE memory
//
//Errors: none
//Warnings: 1
