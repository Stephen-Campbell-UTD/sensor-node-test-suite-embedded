#ifndef __APPLICATION__
#define __APPLICATION__

#include <stdarg.h>
#include <ti/drivers/ADCBuf.h>
#include <ti/drivers/UART2.h>

void* mainThreadFunc(void*);
void uartPrintf(const char* fmt, ...);
extern UART2_Handle uart;
extern ADCBuf_Handle adcBuf;

#endif