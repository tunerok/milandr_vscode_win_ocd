#ifndef __MDR32F9QX_IT_H
#define __MDR32F9QX_IT_H

#include "MDR32Fx.h"
#include "MDR32F9Qx_uart.h"

void NMI_Handler(void);
void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);
void SVC_Handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);
void CAN1_IRQHandler(void);
void CAN2_IRQHandler(void);
void USB_IRQHandler(void);
void DMA_IRQHandler(void);
void UART1_IRQHandler(void);
void UART2_IRQHandler(void);
void SSP1_IRQHandler(void);
void I2C_IRQHandler(void);
void POWER_IRQHandler(void);
void WWDG_IRQHandler(void);
void Timer1_IRQHandler(void);
void Timer2_IRQHandler(void);
void Timer3_IRQHandler(void);
void ADC_IRQHandler(void);
void COMPARATOR_IRQHandler(void);
void SSP2_IRQHandler(void);
void BACKUP_IRQHandler(void);
void EXT_INT1_IRQHandler(void);
void EXT_INT2_IRQHandler(void);
void EXT_INT3_IRQHandler(void);
void EXT_INT4_IRQHandler(void);
#endif