#include "main.h"

int main(void)
{
  init_clk();
  init_leds();

  xTaskCreate( vBlink_0_Task, "Blink_0", 50, ( void * ) 1, tskIDLE_PRIORITY+1, ( void * ) 1);
  xTaskCreate( vBlink_1_Task, "Blink_1", 50, ( void * ) 1, tskIDLE_PRIORITY+1, ( void * ) 1);
  vTaskStartScheduler();
  while (1)
  {

  }
  return 0;
}

static void vBlink_0_Task( void *pvParameters)
{
    for( ;; )
    {
    write_LED(LED_0_PIN, ENABLE);
    vTaskDelay( 500 );
    write_LED(LED_0_PIN, DISABLE);
    vTaskDelay( 2500 );
    }
}


static void vBlink_1_Task( void *pvParameters)
{
    for( ;; )
    {
    write_LED(LED_1_PIN, ENABLE);
    vTaskDelay( 500 );
    write_LED(LED_1_PIN, DISABLE);
    vTaskDelay( 500 );
    }
}


	void vApplicationStackOverflowHook() {
		while(1) {

		}
	}

	void vApplicationIdleHook (void) {

	}

void init_clk(void){
   //clk defi
	RST_CLK_DeInit();
	RST_CLK_HSEconfig(RST_CLK_HSE_ON);
	for(int i = 0; i < 1000; i++){}  //wait
	if (RST_CLK_HSEstatus() == ERROR)
		while (1);
	RST_CLK_CPU_PLLconfig(RST_CLK_CPU_PLLsrcHSEdiv1, RST_CLK_CPU_PLLmul2);
	RST_CLK_CPU_PLLcmd(ENABLE);
	for(int i = 0; i < 1000; i++){}
	RST_CLK_CPU_PLLuse(ENABLE);
	if (RST_CLK_CPU_PLLstatus() == ERROR)
		while (1);
	
	RST_CLK_CPUclkSelection(RST_CLK_CPUclkCPU_C3 );
}
