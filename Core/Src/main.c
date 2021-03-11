#include "main.h"

int main(void)
{
  init_led();
  while (1)
  {
    write_LED(1);
    for(uint32_t i = 0; i < 1000000; i++){};
    write_LED(0);
    for(uint32_t i = 0; i < 1000000; i++){};
  }
  return 0;
}