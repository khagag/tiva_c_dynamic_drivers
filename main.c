
#include "tm4c123gh6.h"
#include "i2c.h"
#include "UART.h"


int main(void)
{
    UART_Init();
    char Data[15] = "Hello ,Kareem!\t";
    unsigned char i;
    volatile int j = 0;
    while(1){
        for(i=0;i<15;i++){
            UART_Send_Char(Data[i],0);
            for(j=0;j<=2000;j++);
        }
    }
  //  return 0;
}
