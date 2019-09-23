/*
 * SPI.h
 *
 *  Created on: Jul 21, 2019
 *      Author: kareem
 */

#ifndef SPI_SPI_H_
#define SPI_SPI_H_

#include <stdint.h>
#include "SPI_Cnf.h"
#include "tm4c123gh6pm.h"

typedef struct{
    //module number
    uint8_t MD_num;

}SPI_CnfType;

typedef enum{SPI_FAULT,SPI_FINE} SPI_STATE;

typedef struct{
    uint8_t MD_num;
    uint8_t MASK;
    uint8_t RX;
    uint8_t TX;
    uint8_t SLAVES_MODE; // THE 0 FOR A SINGLE

}SPI_MODULE;


//SPI FUNCTIONS INTERFACE

SPI_STATE SPI_INIT(void);

//SPI SEND ROUTINE
SPI_STATE SPI_SEND(uint8_t SA,char *Str_buffer);

//SPI SEND ROUTINE
SPI_STATE SPI_RECIVE(uint8_t SA,char *Str_buffer);

#endif /* SPI_SPI_H_ */
