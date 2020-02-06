/*
 * UART.c
 *
 *  Created on: Jul 11, 2019
 *      Author: kareem
 */
#include "UART.h"
#include "UART_Cnf.h"

static UART_MODULE UART_Module[8]={
                                   {
                                    PORT_A,0x3,
                                    //tx,rx
                                    0x1,0x0

                                   },
#ifdef UART_MODUEL_1_MB

                                   {
                                    PORT_B,0x3,
                                    //tx,rx
                                    0x1,0x0

                                  },
#else
                                  {
                                   PORT_C,0x3,
                                   //tx,rx
                                   0x5,0x4

                                 },
#endif
                                  {
                                     PORT_D,0xc0,
                                     //tx,rx
                                     0x7,0x6

                                   },
                                   {
                                    PORT_C,0xc0,
                                    0x7,0x6
                                   },
                                   {
                                    PORT_C,0xC0,
                                    0x5,0x4
                                   },
                                   {
                                    PORT_E,0x30,
                                    0x5,0x4
                                   },
                                   {
                                    PORT_D,0x30,
                                    0x5,0x4
                                   },
                                   {
                                    PORT_E,0X3,
                                    0x1,0x0
                                   }

};
/*
 * PF0 -28 U1RTS SSI1Rx CAN0Rx - M1PWM4 PhA0 T0CCP0 NMI C0o --
 * PF1 -29 U1CTS SSI1Tx -- M1PWM5 PhB0 T0CCP1 - C1o TRD
 */

//INT FUNCITON DECLERATION
UART_STATE UART_Init(void){
    int i;
    long BDR=0;
    volatile int j=4;
    double BDR_F = 0.0;
    UART_CnfType const * UG_Ptr;
    UART_MODULE * UM_Ptr;
    for (i=0;i<UART_GROUPS_NUMBER;i++){
        UG_Ptr = &UART_GROUPS[i]; //UG_Ptr stands for uart group pointer
        SYSCTL_RCGCUART_R |= 1 << UG_Ptr->MD_num;
        UM_Ptr = &UART_Module[UG_Ptr->MD_num]; //UM uart module
        while(j--);
        SYSCTL_RCGCGPIO_R |= 1 << UM_Ptr->MODULE_PORT;

        //static uint8_t Module_Port[8]={0,1,3,2,2,4,3,4};
        switch(UG_Ptr->MD_num){
            case 0:
                GPIO_PORTA_DEN_R |= UM_Ptr->MASK;
                GPIO_PORTA_AFSEL_R |= UM_Ptr->MASK;
                GPIO_PORTA_PCTL_R = (0);
                GPIO_PORTA_PCTL_R |=(( 0x1<<(4* UM_Ptr->RX)) | (0x1 << (4 * UM_Ptr->TX)));
                //toDo use the clocking and baud rate date to configure the modules

                UART0_CTL_R &= (~UART_CTL_UARTEN);
                                //Baud rate
                BDR_F = ((UG_Ptr->Sys_Clk * 1000000.0) / (UG_Ptr->Baud_Rate * 16.0));
                BDR = BDR_F;
                BDR_F-=BDR;
                BDR_F *= 64;
                BDR_F +=0.5;
                BDR_F=(long)BDR_F;
                UART0_IBRD_R = BDR;
                UART0_FBRD_R = (long)BDR_F;
                UART0_LCRH_R  = 0x60;//TODO this register is supposed to control the data length ,parity and stop bit
                UART0_CC_R = UG_Ptr ->Clk_Source;
                UART0_CTL_R |= UART_CTL_UARTEN ;

                break;
            case 1:
#ifdef UART_MODUEL_1_MB
                GPIO_PORTB_DEN_R |= UM_Ptr->MASK;
                GPIO_PORTB_AFSEL_R |= UM_Ptr->MASK;
                GPIO_PORTB_PCTL_R |= 0x1<<(3* UM_Ptr->RX) | 0x1 << (3 * UM_Ptr->TX);
#else
                GPIO_PORTC_DEN_R |= UM_Ptr->MASK;
                GPIO_PORTC_AFSEL_R |= UM_Ptr->MASK;
                GPIO_PORTC_PCTL_R |= 0x2<<(3* UM_Ptr->RX) | 0x2 << (3*UM_Ptr->TX);
#endif
                break;
            case 2:
            case 6:
                GPIO_PORTD_DEN_R |= UM_Ptr->MASK;
                GPIO_PORTD_AFSEL_R |= UM_Ptr->MASK;
                GPIO_PORTD_PCTL_R |= 0x1<<(3* UM_Ptr->RX) | 0x1 << (3 * UM_Ptr->TX);
                break;
            case 3:
            case 4:
                GPIO_PORTC_DEN_R |= UM_Ptr->MASK;
                GPIO_PORTC_AFSEL_R |= UM_Ptr->MASK;
                GPIO_PORTC_PCTL_R |= 0x1<<(3* UM_Ptr->RX) | 0x1 << (3 * UM_Ptr->TX);
                break;
            case 5:
            case 7:
                GPIO_PORTE_DEN_R |= UM_Ptr->MASK;
                GPIO_PORTE_AFSEL_R |= UM_Ptr->MASK;
                GPIO_PORTE_PCTL_R |= 0x1<<(3* UM_Ptr->RX) | 0x1 << (3 * UM_Ptr->TX);
                break;
        }
        }
       // GPIPO_EN
    return UART_FINE;
}

//UART Send one Character
UART_STATE UART_Send_Char(char ch,uint8_t module){
    char flag = 1;

    switch(module){
    case 0:
        while(flag){
            if(!(UART0_FR_R & (1<<3))){
                UART0_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 1:
        while(flag){
            if((UART1_FR_R & 0x8) != 0x8){
                UART1_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 2:
        while(flag){
            if((UART2_FR_R & 0x8) != 0x8){
                UART2_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 3:
        while(flag){
            if((UART3_FR_R & 0x8) != 0x8){
                UART3_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 4:
        while(flag){
            if((UART4_FR_R & 0x8) != 0x8){
                UART4_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 5:
        while(flag){
            if((UART5_FR_R & 0x8) != 0x8){
                UART5_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 6:
        while(flag){
            if((UART6_FR_R & 0x8) != 0x8){
                UART6_DR_R = ch;
                flag =0;
            }
        }
        break;
    case 7:
        while(flag){
            if((UART7_FR_R & 0x8) != 0x8){
                UART7_DR_R = ch;
                flag =0;
            }
        }
        break;
    }
    return UART_FINE;
}

//UART Receive one Character
UART_STATE UART_RCV_Char(char * ch,uint8_t module){

    switch(module){
    case 0:
        *ch = UART0_DR_R;
        break;
    case 1:
        *ch = UART1_DR_R;
        break;
    case 2:
        *ch = UART2_DR_R;
        break;
    case 3:
        *ch = UART3_DR_R;
        break;
    case 4:
        *ch = UART4_DR_R;
        break;
    case 5:
        *ch = UART5_DR_R;
        break;
    case 6:
        *ch = UART6_DR_R;
        break;
    case 7:
        *ch = UART7_DR_R;
        break;
    }
    return UART_FINE;
}
