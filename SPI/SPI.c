/*
 * SPI.C
 *
 *  Created on: Jul 21, 2019
 *      Author: kareem
 */

#include "SPI.h"
#include "SPI_Cnf.h"
#include <stdint.h>


SPI_STATE SPI_INIT(void){
    int i;
    SPI_CnfType * SG_Ptr;
    SPI_MODULE * SM_Ptr;
//  toDo check this comment and fix it's bug
//     for (i=0;i<SPI_GROUPS_NUMBER;i++){
//        SG_Ptr = &SPI_GROUPS[i]; //SG_Ptr stands for SPI group pointer
//        SM_Ptr = &SPI_Module[SG_Ptr->MD_num]; //UM SPI module
//        SYSCTL_RCGCSPI_R |= SG_Ptr->MD_num;
//        SYSCTL_RCGCGPIO_R |= 1<<SM_Ptr->MODULE_PORT;

        //static uint8_t Module_Port[8]={0,1,3,2,2,4,3,4};
        /*5. Program the GPIODEN register to enable the pin's digital function. In addition, the drive strength,
            drain select and pull-up/pull-down functions must be configured. Refer to “General-Purpose
            Input/Outputs (GPIOs)” on page 649 for more information.
            Note: Pull-ups can be used to avoid unnecessary toggles on the SSI pins, which can take the
            slave to a wrong state. In addition, if the SSIClk signal is programmed to steady state
            High through the SPO bit in the SSICR0 register, then software must also configure the
            GPIO port pin corresponding to the SSInClk signal as a pull-up in the GPIO Pull-Up
            Select (GPIOPUR) register.
         */

//        switch(SG_Ptr->MD_num){
//            case 0:
//                GPIO_PORTA_AFSEL_R |= SM_Ptr->MASK;
//                GPIO_PORTA_PCTL_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                GPIO_PORTA_DEN_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                break;
//            case 1:
//                GPIO_PORTB_AFSEL_R |= SM_Ptr->MASK;
//                GPIO_PORTB_PCTL_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                GPIO_PORTB_DEN_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                break;
//            case 2:
////            case 6:
//                GPIO_PORTD_AFSEL_R |= SM_Ptr->MASK;
//                GPIO_PORTD_PCTL_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                GPIO_PORTD_DEN_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                break;
//            case 3:
////            case 4:
//                GPIO_PORTC_AFSEL_R |= SM_Ptr->MASK;
//                GPIO_PORTC_PCTL_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                GPIO_PORTC_DEN_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
//                break;
////            case 5:
////            case 7:
////                GPIO_PORTE_AFSEL_R |= SM_Ptr->MASK;
////                GPIO_PORTE_PCTL_R |= 0x1<<SM_Ptr->RX | 0x1 << SM_Ptr->TX;
////                break;
//            default:
//                return SPI_FAULT;
//        }
//    }
    return SPI_FINE;
}

SPI_STATE SPI_SEND(uint8_t SA,char *Str_buffer){
    return SPI_FINE;
}

