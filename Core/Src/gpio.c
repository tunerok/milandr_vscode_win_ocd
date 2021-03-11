#include "gpio.h"

void init_led(){
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

    // Структура для инициализации портов
    PORT_InitTypeDef gpio_led_port;

    // Разрешить тактирование требуемых периферийных устройств
    RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTC, ENABLE);

    //Выставить настройки структуры в дефолтное состояние
    PORT_StructInit (&gpio_led_port);

    gpio_led_port.PORT_Pin   = LED_PIN;
    gpio_led_port.PORT_MODE  = PORT_MODE_DIGITAL;
    gpio_led_port.PORT_FUNC  = PORT_FUNC_PORT;
    gpio_led_port.PORT_OE    = PORT_OE_OUT;
    gpio_led_port.PORT_SPEED = PORT_SPEED_FAST;
    PORT_Init(LED_PORT, &gpio_led_port); 




}

void write_LED(int state){
    if(state){
            PORT_ResetBits(LED_PORT, LED_PIN);
        }
        else{
            PORT_SetBits(LED_PORT, LED_PIN);
        }
}