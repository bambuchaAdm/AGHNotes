#include <avr/io.h>
inline void 
funkcja()
{
  PORTA |= 0x01;
  asm("nop");
  asm("nop");
  PORTA &= 0x00;
  asm("nop");
  asm("nop");
}

int main()
{
  DDRA |= 0x01;
  for(;;)
    funckja();
}
