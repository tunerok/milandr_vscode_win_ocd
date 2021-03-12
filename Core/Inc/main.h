#ifndef __MAIN_H
#define __MAIN_H

#define stdint __stdint
#define stddef __stddef

#ifdef __cplusplus
extern "C" {
#endif

#include "MDR32Fx.h"
#include "gpio.h"
#include "FreeRTOS.h"
#include "task.h"

#ifdef __cplusplus
}


#endif
static void vBlink_0_Task( void * );
static void vBlink_1_Task( void * );
void init_clk(void);

#endif /* __MAIN_H */

