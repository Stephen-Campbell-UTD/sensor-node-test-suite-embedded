
#include <ti/drivers/GPIO.h>

#include "application/application.h"
#include "Debug/syscfg/ti_drivers_config.h"


void readPIR(){
  uint_fast8_t val =  GPIO_read(CONFIG_GPIO_PIR);
  uartPrintf("{ \"path\" : \"PIR\", \"value\" : %u }\n", val);
}