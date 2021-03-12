#include "gpio.h"

void init_leds(){
    // Структура для инициализации портов
    PORT_InitTypeDef gpio_led_port;

    // Разрешить тактирование требуемых периферийных устройств
    RST_CLK_PCLKcmd (RST_CLK_PCLK_PORTC, ENABLE);

    //Выставить настройки структуры в дефолтное состояние
    PORT_StructInit (&gpio_led_port);

    gpio_led_port.PORT_Pin   = LED_0_PIN | LED_1_PIN;
    gpio_led_port.PORT_MODE  = PORT_MODE_DIGITAL;
    gpio_led_port.PORT_FUNC  = PORT_FUNC_PORT;
    gpio_led_port.PORT_OE    = PORT_OE_OUT;
    gpio_led_port.PORT_SPEED = PORT_SPEED_FAST;
    PORT_Init(LED_PORT, &gpio_led_port); 




}

void write_LED(uint16_t PORT_Pin, FunctionalState state){
    if(state){
            PORT_ResetBits(LED_PORT, PORT_Pin);
        }
        else{
            PORT_SetBits(LED_PORT, PORT_Pin);
        }
}