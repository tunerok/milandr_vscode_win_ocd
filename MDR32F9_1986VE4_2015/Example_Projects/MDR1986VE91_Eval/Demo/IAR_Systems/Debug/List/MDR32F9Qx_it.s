///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.2.53884/W32 for ARM    22/Sep/2015  17:25:57 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\MDR32F9Qx_it.c                         /
//    Command line =  C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1 /
//                    986VE91_Eval\src\MDR32F9Qx_it.c --preprocess            /
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
//                    986VE91_Eval\Demo\IAR_Systems\Debug\List\MDR32F9Qx_it.s /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MDR32F9Qx_it

        #define SHT_PROGBITS 0x1

        EXTERN ADC1_GetFlagStatus
        EXTERN BKP_RTC_GetCounter
        EXTERN BKP_RTC_GetFlagStatus
        EXTERN BKP_RTC_ITConfig
        EXTERN BKP_RTC_SetCounter
        EXTERN BKP_RTC_WaitForUpdate
        EXTERN DMA_AltCtrlStr
        EXTERN DMA_Init
        EXTERN DMA_InitStr
        EXTERN DMA_PriCtrlStr
        EXTERN Date_Update
        EXTERN H_Level
        EXTERN PORT_ResetBits
        EXTERN PORT_SetBits
        EXTERN TIMER_GetITStatus
        EXTERN UART_ClearITPendingBit
        EXTERN UART_GetFlagStatus
        EXTERN UART_GetITStatusMasked

        PUBLIC ADC1_Value
        PUBLIC ADC_IRQHandler
        PUBLIC AlarmSetStatus
        PUBLIC BACKUP_IRQHandler
        PUBLIC DMA_IRQHandler
        PUBLIC STOPModeStatus
        PUBLIC SysTick_Handler
        PUBLIC Timer1_IRQHandler
        PUBLIC TimerCounter
        PUBLIC UART1_IRQHandler
        PUBLIC UART2_IRQHandler
        PUBLIC pfUARTLineStateFunc
        PUBLIC pfUARTReceiverFunc
        PUBLIC pfUARTSenderFunc
        PUBLIC tmp

// C:\WORK\Milandr.MDR1986BExx.1.4.0\Example_Projects\MDR1986VE91_Eval\src\MDR32F9Qx_it.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    MDR32F9Qx_it.c
//    4   * @author  Phyton Application Team
//    5   * @version V2.0.0
//    6   * @date    22.07.2011
//    7   * @brief   Main Interrupt Service Routines.
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
//   21 #include <MDR32F9Qx_uart.h>
//   22 #include <MDR32F9Qx_adc.h>
//   23 #include <MDR32F9Qx_bkp.h>
//   24 #include <MDR32F9Qx_port.h>
//   25 #include <MDR32F9Qx_it.h>
//   26 #include <MDR32F9Qx_dma.h>
//   27 #include <MDR32F9Qx_timer.h>
//   28 #include "leds.h"
//   29 #include "time.h"
//   30 #include "lowpower.h"
//   31 
//   32 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 int tmp ;
tmp:
        DS8 4
//   34 extern __IO uint32_t H_Level;
//   35 
//   36 extern DMA_ChannelInitTypeDef DMA_InitStr;
//   37 extern DMA_CtrlDataInitTypeDef DMA_PriCtrlStr;
//   38 extern DMA_CtrlDataInitTypeDef DMA_AltCtrlStr;
//   39 
//   40 extern uint32_t uart2_IT_TX_flag;
//   41 
//   42 /** @addtogroup __MDR32F9Qx_Eval_Demo MDR32F9Qx Demonstration Example
//   43   * @{
//   44   */
//   45 
//   46 /** @addtogroup Interrupt_Service_Routines Interrupt Service Routines
//   47   * @{
//   48   */
//   49 
//   50 /** @addtogroup Interrupt_Service_Private_Variables Interrupt Service Private Variables
//   51   * @{
//   52   */
//   53 
//   54 /* Timer counter */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 vuint32_t TimerCounter = 0;
TimerCounter:
        DS8 4
//   56 
//   57 /* Current value of the ADC1_RESULT register */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 vuint32_t ADC1_Value = 0;
ADC1_Value:
        DS8 4
//   59 
//   60 /* Pointers to UART send/receive interrupt handlers */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 tUARTFunc pfUARTSenderFunc = 0;
pfUARTSenderFunc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 tUARTFunc pfUARTReceiverFunc = 0;
pfUARTReceiverFunc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   63 tUARTLineStateFunc pfUARTLineStateFunc = 0;
pfUARTLineStateFunc:
        DS8 4
//   64 
//   65 /* Stop mode flag */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   66 vuint32_t STOPModeStatus = 0;
STOPModeStatus:
        DS8 4
//   67 
//   68 /* Alarm flag */
//   69 vuint32_t AlarmSetStatus = 0;
AlarmSetStatus:
        DS8 4
//   70 
//   71 /** @} */ /* End of group Interrupt_Service_Private_Variables */
//   72 
//   73 /** @defgroup Interrupt_Service_Private_Functions Interrupt Service Private Functions
//   74   * @{
//   75   */
//   76 
//   77 
//   78 /*******************************************************************************
//   79 * Function Name  : SysTick_Handler
//   80 * Description    : This function handles SysTick Handler.
//   81 * Input          : None
//   82 * Output         : None
//   83 * Return         : None
//   84 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 void SysTick_Handler(void)
//   86 {
//   87   if (TimerCounter)
SysTick_Handler:
        LDR.N    R0,??DataTable5
        LDR      R1,[R0, #+0]
        CBZ.N    R1,??SysTick_Handler_0
//   88   {
//   89     TimerCounter--;
        LDR      R1,[R0, #+0]
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   90   }
//   91 }
??SysTick_Handler_0:
        BX       LR               ;; return
//   92 
//   93 /*******************************************************************************
//   94 * Function Name  : UARTx_HandlerWork, UART1_IRQHandler, UART2_IRQHandler
//   95 * Description    : These functions handle UARTx global interrupt requests.
//   96 * Input          : None
//   97 * Output         : None
//   98 * Return         : None
//   99 *******************************************************************************/
//  100 static void UARTx_HandlerWork(MDR_UART_TypeDef* UARTx)
//  101 {
//  102   uint32_t tmp_ris = UARTx->RIS;
//  103 
//  104   /* Clear all pending bits except for UART_IT_RX */
//  105   UARTx->ICR |= (tmp_ris & (~UART_IT_RX));
//  106 
//  107   /* Receive handler */
//  108   if ((tmp_ris & UART_IT_RX) && pfUARTReceiverFunc != 0)
//  109   {
//  110     pfUARTReceiverFunc();
//  111   }
//  112 
//  113   /* Transmit handler */
//  114   if ((tmp_ris & UART_IT_TX) && pfUARTSenderFunc != 0)
//  115   {
//  116     pfUARTSenderFunc();
//  117   }
//  118 
//  119   /* Break/error handler */
//  120   if (pfUARTLineStateFunc != 0)
//  121   {
//  122     tmp_ris &= UART_LINE_STATE_EVENTS;
//  123     if (tmp_ris)
//  124     {
//  125       pfUARTLineStateFunc(tmp_ris);
//  126     }
//  127   }
//  128 }
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void UART1_IRQHandler(void)
//  131 {
//  132   //UARTx_HandlerWork(MDR_UART1);
//  133 }
UART1_IRQHandler:
        BX       LR               ;; return
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void UART2_IRQHandler(void)
//  136 {
UART2_IRQHandler:
        PUSH     {R4,LR}
//  137 	uint32_t temp_1;
//  138 	
//  139   //UARTx_HandlerWork(MDR_UART2);
//  140   if (UART_GetITStatusMasked(MDR_UART2, UART_IT_RX) == SET)
        LDR.N    R4,??DataTable5_1  ;; 0x40038000
        MOVS     R1,#+16
        MOV      R0,R4
        BL       UART_GetITStatusMasked
        CMP      R0,#+1
        BNE.N    ??UART2_IRQHandler_0
//  141   {
//  142 		temp_1 = MDR_UART2->DR;
        LDR      R0,[R4, #+0]
//  143 		
//  144 		UART_ClearITPendingBit(MDR_UART2, UART_IT_RX);
        MOVS     R1,#+16
        MOV      R0,R4
        BL       UART_ClearITPendingBit
//  145 
//  146 		while (UART_GetFlagStatus (MDR_UART2, UART_FLAG_TXFE)!= SET)
??UART2_IRQHandler_1:
        MOVS     R1,#+128
        MOV      R0,R4
        BL       UART_GetFlagStatus
        CMP      R0,#+1
        BNE.N    ??UART2_IRQHandler_1
//  147     {
//  148     }
//  149 		//UART_SendData (MDR_UART2,0x44);
//  150 		
//  151   }
//  152 }
??UART2_IRQHandler_0:
        POP      {R4,PC}          ;; return
//  153 
//  154 
//  155 /*******************************************************************************
//  156 * Function Name  : ADC_IRQHandler
//  157 * Description    : This function handles ADC global interrupt request.
//  158 * Input          : None
//  159 * Output         : None
//  160 * Return         : None
//  161 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void ADC_IRQHandler(void)
//  163 {
ADC_IRQHandler:
        PUSH     {R3-R5,LR}
//  164   if(ADC1_GetFlagStatus(ADCx_IT_OUT_OF_RANGE) == SET)
        LDR.N    R5,??DataTable5_2  ;; 0x400c0000
        MOVS     R0,#+2
        BL       ADC1_GetFlagStatus
        CMP      R0,#+1
        MOV      R1,#+1024
        MOV      R0,R5
        BNE.N    ??ADC_IRQHandler_0
//  165   {
//  166     /* Turns LED1 On */
//  167     PORT_SetBits(MDR_PORTD, PORT_Pin_10);
        BL       PORT_SetBits
        B.N      ??ADC_IRQHandler_1
//  168   }
//  169   else
//  170   {
//  171     /* Turns LED1 Off */
//  172     PORT_ResetBits(MDR_PORTD, PORT_Pin_10);
??ADC_IRQHandler_0:
        BL       PORT_ResetBits
//  173   }
//  174   tmp = MDR_ADC->ADC1_RESULT & 0x0FFF;
??ADC_IRQHandler_1:
        LDR.N    R0,??DataTable5_3
        LDR.N    R4,??DataTable5_4  ;; 0x40088018
        LDR      R1,[R4, #+0]
        LSLS     R1,R1,#+20
        LSRS     R1,R1,#+20
        STR      R1,[R0, #+0]
//  175   if(tmp > H_Level)
        LDR.N    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, #+0]
        CMP      R1,R0
        MOV      R1,#+2048
        MOV      R0,R5
        BCS.N    ??ADC_IRQHandler_2
//  176   {
//  177     /* Turns LED2 On */
//  178     PORT_SetBits(MDR_PORTD, PORT_Pin_11);
        BL       PORT_SetBits
        B.N      ??ADC_IRQHandler_3
//  179   }
//  180   else
//  181   {
//  182     /* Turns LED2 Off */
//  183     PORT_ResetBits(MDR_PORTD, PORT_Pin_11);
??ADC_IRQHandler_2:
        BL       PORT_ResetBits
//  184   }
//  185   /* Clear ADC1 OUT_OF_RANGE interrupt bit */
//  186   MDR_ADC->ADC1_STATUS = (ADCx_IT_END_OF_CONVERSION | ADCx_IT_OUT_OF_RANGE)<<2;
??ADC_IRQHandler_3:
        MOVS     R0,#+24
        STR      R0,[R4, #+8]
//  187 }
        POP      {R0,R4,R5,PC}    ;; return
//  188 
//  189 /*******************************************************************************
//  190 * Function Name  : BACKUP_IRQHandler
//  191 * Description    : This function handles BACKUP global interrupt request.
//  192 * Input          : None
//  193 * Output         : None
//  194 * Return         : None
//  195 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 void BACKUP_IRQHandler(void)
//  197 {
BACKUP_IRQHandler:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
//  198   uint32_t tmp;
//  199   vuint32_t i, j;
//  200 
//  201   if (BKP_RTC_GetFlagStatus(BKP_RTC_FLAG_ALRF) == SET)
        MOVS     R0,#+4
        BL       BKP_RTC_GetFlagStatus
        CMP      R0,#+1
        BNE.N    ??BACKUP_IRQHandler_0
//  202   {
//  203     if (STOPModeStatus)
        LDR.N    R0,??DataTable5_6
        LDR      R1,[R0, #+0]
        CBZ.N    R1,??BACKUP_IRQHandler_1
//  204     {
//  205       /* Wake-up from STOP mode is handled by an RTC Alarm */
//  206       /* Disable SLEEPONEXIT mode */
//  207       tmp = SCB->SCR;
        LDR.N    R1,??DataTable5_7  ;; 0xe000ed10
        LDR      R2,[R1, #+0]
//  208       tmp &= ~SCB_SCR_SLEEPONEXIT_Msk;
//  209       SCB->SCR = tmp;
        BIC      R2,R2,#0x2
        STR      R2,[R1, #+0]
//  210 
//  211       STOPModeStatus = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  212     }
//  213     else
//  214       /* RTC Alarm handling */
//  215       if (AlarmSetStatus)
//  216       {
//  217         for (i = 0; i < 5; i++)
//  218         {
//  219           PORT_SetBits(LEDs_PORT, LEDs_PINs);
//  220           for (j = 0; j < 300000; j++)
//  221           {
//  222           }
//  223           PORT_ResetBits(LEDs_PORT, LEDs_PINs);
//  224           for (j = 0; j < 300000; j++)
//  225           {
//  226           }
//  227         }
//  228       }
//  229   }
//  230   if (BKP_RTC_GetFlagStatus(BKP_RTC_FLAG_SECF) == SET)
??BACKUP_IRQHandler_0:
        MOVS     R0,#+2
        BL       BKP_RTC_GetFlagStatus
        CMP      R0,#+1
        BNE.N    ??BACKUP_IRQHandler_2
//  231   {
//  232     BKP_RTC_ITConfig(BKP_RTC_IT_SECF, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       BKP_RTC_ITConfig
//  233 
//  234     /* If counter is equal to 86339: one day was elapsed */
//  235     tmp = BKP_RTC_GetCounter();
        BL       BKP_RTC_GetCounter
//  236     if ((tmp / 3600 == 23) &&
//  237         (((tmp % 3600) / 60) == 59) &&
//  238         (((tmp % 3600) % 60) == 59))
        MOV      R1,#+3600
        UDIV     R2,R0,R1
        CMP      R2,#+23
        ITTTT    EQ 
        MLSEQ    R0,R1,R2,R0
        MOVEQ    R1,#+60
        UDIVEQ   R2,R0,R1
        CMPEQ    R2,#+59
        BNE.N    ??BACKUP_IRQHandler_3
        MLS      R0,R1,R2,R0
        CMP      R0,#+59
        BNE.N    ??BACKUP_IRQHandler_3
//  239     {
//  240       /* Wait until last write operation on RTC registers has finished */
//  241       BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  242       /* Reset counter value */
//  243       BKP_RTC_SetCounter(0);
        MOVS     R0,#+0
        BL       BKP_RTC_SetCounter
//  244       /* Wait until last write operation on RTC registers has finished */
//  245       BKP_RTC_WaitForUpdate();
        BL       BKP_RTC_WaitForUpdate
//  246 
//  247       /* Increment the date */
//  248       Date_Update();
        BL       Date_Update
//  249     }
//  250     BKP_RTC_ITConfig(BKP_RTC_IT_SECF, ENABLE);
??BACKUP_IRQHandler_3:
        MOVS     R1,#+1
        MOVS     R0,#+16
        ADD      SP,SP,#+12
        POP      {R4,R5,LR}
        B.W      BKP_RTC_ITConfig
//  251   }
//  252 }
??BACKUP_IRQHandler_2:
        POP      {R0-R2,R4,R5,PC}  ;; return
??BACKUP_IRQHandler_1:
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??BACKUP_IRQHandler_0
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        LDR.N    R4,??DataTable5_8  ;; 0x493e0
        LDR.N    R5,??DataTable5_2  ;; 0x400c0000
        B.N      ??BACKUP_IRQHandler_4
??BACKUP_IRQHandler_5:
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
??BACKUP_IRQHandler_6:
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,R4
        BCC.N    ??BACKUP_IRQHandler_5
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+4]
??BACKUP_IRQHandler_4:
        LDR      R0,[SP, #+4]
        CMP      R0,#+5
        BCS.N    ??BACKUP_IRQHandler_0
        MOV      R1,#+31744
        MOV      R0,R5
        BL       PORT_SetBits
        MOVS     R0,#+0
        B.N      ??BACKUP_IRQHandler_7
??BACKUP_IRQHandler_8:
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
??BACKUP_IRQHandler_7:
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,R4
        BCC.N    ??BACKUP_IRQHandler_8
        MOV      R1,#+31744
        MOV      R0,R5
        BL       PORT_ResetBits
        MOVS     R0,#+0
        B.N      ??BACKUP_IRQHandler_6
//  253 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 void DMA_IRQHandler(void)
//  255 {
DMA_IRQHandler:
        PUSH     {R4,LR}
//  256 	PORT_SetBits(MDR_PORTD, PORT_Pin_14);
        LDR.N    R4,??DataTable5_2  ;; 0x400c0000
        MOV      R1,#+16384
        MOV      R0,R4
        BL       PORT_SetBits
//  257   /* Reconfigure the inactive DMA data structure*/
//  258   if((MDR_DMA->CHNL_PRI_ALT_SET & (1<<DMA_Channel_TIM1)) == (0<<DMA_Channel_TIM1))
        LDR.N    R1,??DataTable5_9
        LDR.N    R0,??DataTable5_10  ;; 0x40028030
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+21
        IT       PL 
        LDRPL.N  R0,??DataTable5_11
//  259   {
//  260     DMA_AltCtrlStr.DMA_CycleSize = 32;
        BPL.N    ??DMA_IRQHandler_0
//  261     DMA_Init(DMA_Channel_TIM1, &DMA_InitStr);
//  262 		  // DMA_CtrlInit(DMA_Channel_TIM1, DMA_CTRL_DATA_ALTERNATE,  &DMA_AltCtrlStr);
//  263 
//  264   }
//  265   else if((MDR_DMA->CHNL_PRI_ALT_SET & (1<<DMA_Channel_TIM1)) == (1<<DMA_Channel_TIM1))
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??DMA_IRQHandler_1
//  266   {
//  267     DMA_PriCtrlStr.DMA_CycleSize = 32;
        LDR.N    R0,??DataTable5_12
??DMA_IRQHandler_0:
        MOVS     R2,#+32
        STR      R2,[R0, #+24]
//  268     DMA_Init(DMA_Channel_TIM1, &DMA_InitStr);
        MOVS     R0,#+10
        BL       DMA_Init
//  269 		  // DMA_CtrlInit(DMA_Channel_TIM1, DMA_CTRL_DATA_PRIMARY, &DMA_PriCtrlStr);
//  270 
//  271   }
//  272 			PORT_ResetBits(MDR_PORTD, PORT_Pin_14);
??DMA_IRQHandler_1:
        MOV      R1,#+16384
        MOV      R0,R4
        POP      {R4,LR}
        B.W      PORT_ResetBits
//  273 }
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void Timer1_IRQHandler(void)
//  276 {
Timer1_IRQHandler:
        PUSH     {R4,LR}
//  277 	  if (TIMER_GetITStatus(MDR_TIMER1, TIMER_STATUS_CNT_ARR) == SET)
        LDR.N    R4,??DataTable5_13  ;; 0x40070000
        MOVS     R1,#+2
        MOV      R0,R4
        BL       TIMER_GetITStatus
        CMP      R0,#+1
        BNE.N    ??Timer1_IRQHandler_0
//  278 		{		
//  279 		//TIMER_ClearITPendingBit(MDR_TIMER1, TIMER_STATUS_CNT_ARR);
//  280 			  MDR_TIMER1->STATUS &= ~TIMER_STATUS_CNT_ARR;
        LDR      R0,[R4, #+84]
        BIC      R0,R0,#0x2
        STR      R0,[R4, #+84]
//  281 			
//  282 			/*while (UART_GetFlagStatus (MDR_UART2, UART_FLAG_TXFE)!= SET)
//  283 			{
//  284 			}
//  285 			UART_SendData (MDR_UART2,0x35);*/
//  286 		}
//  287 }
??Timer1_IRQHandler_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     TimerCounter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x400c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     tmp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40088018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     H_Level

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     STOPModeStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x493e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     DMA_InitStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x40028030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     DMA_AltCtrlStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     DMA_PriCtrlStr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x40070000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  288 
//  289 /** @} */ /* End of group Interrupt_Service_Private_Functions */
//  290 
//  291 /** @} */ /* End of group Interrupt_Service_Routines */
//  292 
//  293 /** @} */ /* End of group __MDR32F9Qx_Eval_Demo */
//  294 
//  295 /******************* (C) COPYRIGHT 2011 Phyton *********************************
//  296 *
//  297 * END OF FILE MDR32F9Qx_it.c */
//  298 
//  299 
// 
//  32 bytes in section .bss
// 476 bytes in section .text
// 
// 476 bytes of CODE memory
//  32 bytes of DATA memory
//
//Errors: none
//Warnings: 2
