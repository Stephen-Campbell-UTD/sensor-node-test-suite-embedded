#ifndef __MAIN_TIRTOS__
#define __MAIN_TIRTOS__

#include <ti/display/Display.h> 
#include <ti/sysbios/knl/Semaphore.h>
#include <ti/drivers/ADCBuf.h>

extern Display_Handle   display;
extern Semaphore_Handle   displaySem;
extern ADCBuf_Handle adcBuf;

#endif