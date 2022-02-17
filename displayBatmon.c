#include <stdint.h>
#include <stdbool.h>
#include <unistd.h>
#include <ti/drivers/GPIO.h>
#include <ti/display/Display.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Semaphore.h>

#include <ti/devices/cc13x2_cc26x2/driverlib/aon_batmon.h>
#include "main_tirtos.h"

//*****************************************************************************
//Register: AON_BATMON_O_BAT
//*****************************************************************************
//Field:  [10:8] INT
//Integer part:
//0x0: 0V + fractional part
//...
//0x3: 3V + fractional part
//0x4: 4V + fractional part
#define AON_BATMON_BAT_INT_M                                        0x00000700
#define AON_BATMON_BAT_INT_S                                                 8
//Field:   [7:0] FRAC
//Fractional part, standard binary fractional encoding.
//0x00: .0V
//...
//0x20: 1/8 = .125V
//0x40: 1/4 = .25V
//0x80: 1/2 = .5V
//...
//0xA0: 1/2 + 1/8 = .625V
//...
//0xFF: Max
#define AON_BATMON_BAT_FRAC_M                                       0x000000FF
#define AON_BATMON_BAT_FRAC_S                                                0


float getBatteryVoltage() {
    uint32_t voltageMixed = AONBatMonBatteryVoltageGet();
    float voltageWhole = (float)((voltageMixed & AON_BATMON_BAT_INT_M) >> AON_BATMON_BAT_INT_S);
    float voltageFrac = ((voltageMixed & AON_BATMON_BAT_FRAC_M) >> AON_BATMON_BAT_FRAC_S) * 0.00390625f;
    return voltageFrac + voltageWhole;
}


void* displayBatmonThreadFunc(void* arg0) {
    AONBatMonEnable();

    /* Open button 1 and button 2 */
    while (1) {
        Semaphore_pend(displaySem, BIOS_WAIT_FOREVER);
        uint32_t degreesC = AONBatMonTemperatureGetDegC();
        //TODO Check BATUPD.STAT =1 (voltage is ready?)
        Display_print1(display, 0, 0, "Temperature  = %i C", degreesC);
        Display_print1(display, 0, 0, "VDD  = %f V", getBatteryVoltage());
        Semaphore_post(displaySem);

        sleep(3);
    }
}
