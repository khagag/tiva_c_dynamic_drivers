#ifndef I2C_H
#define I2C_H

#include "i2c_config.h"
#include <stdint.h>
#include "tm4c123gh6pm.h"

#define MASTER 0x10
#define SLAVE 0x20

typedef struct{
    uint8_t MODULE_NUM;

//the slave address
    uint8_t SLAVE_ADDRESS;
//    uint8_t SPEED_MODE
    uint8_t RULE;

}I2C_ConfigType;

extern const I2C_ConfigType I2C_GROUPS[I2C_GROUPS_NUMBER];

void I2C_init(void);


#endif /* _I2C_H_INCLUDED_ */
