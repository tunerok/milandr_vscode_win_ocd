#ifndef __GPIO_H
#define __GPIO_H

#include "MDR32F9Qx_port.h"
#include "MDR32F9Qx_rst_clk.h"

#define LED_PORT MDR_PORTC
#define LED_PIN PORT_Pin_0

void init_led();
void write_LED(int state);

#endif