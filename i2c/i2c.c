/*
 * i2c.c
 *
 *  Created on: Jul 6, 2019
 *      Author: kareem
 */

#include "i2c.h"
#include "i2c_config.h"


void I2C_init(void){
    //todo check to modify the clock activation according to loop through group activation
    // bits from 0-3 activates i2c modules from 0-3
    SYSCTL_RCGCI2C_R = 0x7; //activate the four i2c modules

    SYSCTL_RCGCGPIO_R |= 0xB; // activate the ports for the four i2c modules (B,A,E,D)

    // module 0 alternative function selection (scl | sda)
        GPIO_PORTB_AFSEL_R |= (1<<2 | 1<<3);

    // module 1 alternative function selection
        GPIO_PORTA_AFSEL_R |= (1<<6 | 1<<7);

    // module 0 alternative function selection
        GPIO_PORTE_AFSEL_R |= (1<<4 | 1<<5);

    // module 0 alternative function selection
        GPIO_PORTD_AFSEL_R |= (1<<0 | 1<<1);


    // Configure SDA as open drain for all i2c modules
    // module 0 alternative function selection (scl | sda)
        GPIO_PORTB_ODR_R |=  1<<3;

    // module 1 alternative function selection
        GPIO_PORTA_ODR_R |= 1<<7;

    // module 0 alternative function selection
        GPIO_PORTE_ODR_R |=  1<<5;

    // module 0 alternative function selection
        GPIO_PORTD_ODR_R |=  1<<1;

    // Configure PCTL for all i2c modules 2 6 4 0

    // module 0 PORT CONTROL
        GPIO_PORTB_PCTL_R |=  0x3 << (4 * 2);
        GPIO_PORTB_PCTL_R |=  0x3 << (4 * 3);

    // module 1 PORT CONTROL
        GPIO_PORTA_PCTL_R |= 0x3 << (4 * 6);
        GPIO_PORTA_PCTL_R |= 0x3 << (4 * 7);

    // module 0 PORT CONTROL
        GPIO_PORTE_PCTL_R |=  0x3 << (4 * 4);
        GPIO_PORTE_PCTL_R |=  0x3 << (4 * 5);

    // module 0 PORT CONTROL
        GPIO_PORTD_PCTL_R |=  0x3 << (4 * 0);
        GPIO_PORTD_PCTL_R |=  0x3 << (4 * 1);

//adding address to the i2c modules
        I2C0_SOAR_R = 0x12;
        I2C1_SOAR_R = 0x13;
        I2C2_SOAR_R = 0x14;
        I2C3_SOAR_R = 0x15;


        //Initializing the master
        //todo this is static ( module 1 is master the others are  one master - multi-slave convert it to dynamic mode choose and config

        I2C0_MCR_R |= 0x00000020;

        I2C1_MCR_R |= 0x00000010;

        I2C2_MCR_R |= 0x00000020;

        I2C3_MCR_R |= 0x00000020;

/*
 * 7. Set the desired SCL clock speed of 100 Kbps by writing the I2CMTPR register with the correct
        value. The value written to the I2CMTPR register represents the number of system clock periods
        in one SCL clock period. The TPR value is determined by the following equation:
        TPR = (System Clock/(2*(SCL_LP + SCL_HP)*SCL_CLK))-1;
        TPR = (20MHz/(2*(6+4)*100000))-1;
        TPR = 9
        Write the I2CMTPR register with the value of 0x0000.0009.
 *
 */
//configure the clock speed for the i2c modules according to the previous formula
//todo change the 20 to be dynamic
        I2C0_MTPR_R = (16*1000000/(2*(6+4)*100000))-1;
        I2C1_MTPR_R = (16*1000000/(2*(6+4)*100000))-1;
        I2C2_MTPR_R = (16*1000000/(2*(6+4)*100000))-1;
        I2C3_MTPR_R = (16*1000000/(2*(6+4)*100000))-1;


        // modules slave addresses set up (slave_address << 1) | ( operation(Receive/Transmit) )
        // (Receive 1 ,transmit 0)

        I2C0_MSA_R = (0x12 << 1) | 0;
        I2C1_MSA_R = (0x12 << 1) | 1;
        I2C2_MSA_R = (0x12 << 1) | 0;
        I2C3_MSA_R = (0x12 << 1) | 0;



}

