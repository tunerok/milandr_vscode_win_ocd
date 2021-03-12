#ifndef __GPIO_H
#define __GPIO_H

#include "MDR32F9Qx_port.h"
#include "MDR32F9Qx_rst_clk.h"

#define LED_PORT MDR_PORTC
#define LED_0_PIN PORT_Pin_0
#define LED_1_PIN PORT_Pin_1

void init_leds();
void write_LED(uint16_t PORT_Pin, FunctionalState state);

#endif