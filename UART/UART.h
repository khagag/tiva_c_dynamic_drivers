/*
 * UART.h
 *
 *  Created on: Jul 11, 2019
 *      Author: kareem
 */

#ifndef UART_UART_H_
#define UART_UART_H_

#include "UART_Cnf.h"

#include "tm4c123gh6pm.h"
#include <stdint.h>

#define UART_MODUEL_1_MB
/*
#define UART_MODUEL_1 M1_PB // To make uart module 1 use pins of port (B or C) as (M1_PB ,M1_PC)
#define UART_MODUEL_1_C  // To make uart module 1 use pins of port C if it's defined and port B if it'snt
*/

typedef enum{
    MOSC = 0,
    POSC = 0x5
}Clk_Src;

typedef struct{
    //module number
    uint8_t MD_num;
    Clk_Src Clk_Source;
    uint32_t Sys_Clk;
    uint32_t Baud_Rate;

}UART_CnfType;

typedef enum{
    PORT_A,
    PORT_B,
    PORT_C,
    PORT_D,
    PORT_E,
    PORT_F
}GPIO_PORT;


typedef struct{
    GPIO_PORT MODULE_PORT;
    uint8_t   MASK;
    uint8_t   TX;
    uint8_t   RX;


}UART_MODULE;



typedef enum{
    UART_ERROR,
    UART_FINE
}UART_STATE;

extern const UART_CnfType UART_GROUPS[UART_GROUPS_NUMBER];

//INIT FUNCITON DECLERATION
UART_STATE UART_Init(void);

//UART Send one Character
UART_STATE UART_Send_Char(char ch,uint8_t module);

//UART Receive one Character
UART_STATE UART_RCV_Char(char * ch,uint8_t module);

#endif /* UART_UART_H_ */
