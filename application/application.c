#include <ti/drivers/ADCBuf.h>
#include <ti/drivers/UART2.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include <ti/drivers/adcbuf/ADCBufCC26X2.h>
#include <ti/sysbios/knl/Clock.h>
#include <xdc/runtime/System.h>
#include "Debug/syscfg/ti_drivers_config.h"
#include "application/application.h"
#include "application/batmonWrapper.h"
#include "application/readPIR.h"
#include "application/sensorNode.h"

// ADCBuf_Handle adcBuf;

UART2_Handle uart;
ADCBuf_Handle adcBuf;


void uartErrorHandler(UART2_Handle handle, uint32_t event, uint32_t data, void* userArg) {
  //TODO provide useful error handling
  System_printf("UART ERROR EVENT %u ", event);
  while (1) {}
}

void setupUART() {
  UART2_Params params;
  UART2_Params_init(&params);
  //unblocks when exact number of bytes have been read
  params.readReturnMode = UART2_ReadReturnMode_FULL;
  params.eventCallback = uartErrorHandler;
  uart = UART2_open(CONFIG_UART2_0, &params);
  if (uart == NULL) {
    // UART2_open() failed
    while (1) {};
  }
  // Enable receiver, inhibit low power mode
  UART2_rxEnable(uart);
}

void uartPrintf(const char* fmt, ...) {

  //be careful of stack overflow/thread stack size
  char strBuf[64];
  va_list args;
  va_start(args, fmt);
  int bufferCharsWritten = vsprintf(strBuf, fmt, args);
  va_end(args);
  if (bufferCharsWritten == -1) {
    //handle vsprintf error
    while (1) {}
  }
  size_t uartCharsWritten;
  System_printf("Writing %u chars %s \n", bufferCharsWritten, strBuf);
  int_fast16_t status = UART2_write(uart, strBuf, bufferCharsWritten, &uartCharsWritten);
  System_printf("Write Status %u \n", status != UART2_STATUS_SUCCESS);
  if (status != UART2_STATUS_SUCCESS) {
    while (1) {}
  }
  if (bufferCharsWritten != uartCharsWritten) {
    //handle inaccurate write error 
    //handle vsprintf error
  }

}

uint32_t count = 0;
void* mainThreadFunc(void* t) {
  setupUART();

  GPIO_init();

  ADCBuf_Params adcBufParams;
  ADCBuf_Params_init(&adcBufParams);
  // tickPeriod is in us
  adcBufParams.blockingTimeout = 1000000 / ti_sysbios_knl_Clock_tickPeriod;
  adcBufParams.samplingFrequency = 44100;
  //TODO initialize params
  ADCBufCC26X2_ParamsExtension adcBufParamsExtension = {
      .samplingDuration = ADCBufCC26X2_SAMPLING_DURATION_10P6_US,
      //Apparently if you disable input scaling you can damage chip with voltages > ~1.4V
      .inputScalingEnabled = true ,
      .refSource = ADCBufCC26X2_FIXED_REFERENCE,
      .samplingMode = ADCBufCC26X2_SAMPING_MODE_ASYNCHRONOUS
  };
  adcBufParams.custom = &adcBufParamsExtension;

  adcBuf = ADCBuf_open(CONFIG_ADCBUF_0, &adcBufParams);
  while (1) {
    char input[3];
    System_printf("READING\n");
    size_t bytesWritten;
    UART2_read(uart, input, 3, &bytesWritten);
    System_printf("read %u chars %c%c%c\n", bytesWritten, input[0], input[1], input[2]);
    if (!strncmp("BAT", input, 3)) {
      uartPrintf("{ \"path\" : \"BAT\", \"value\" : %.2f }\n", getBatteryVoltage());
    }
    else if (!strncmp("ADC", input, 3)) {
      readDecibel();
    }
    else if (!strncmp("PIR", input, 3)) {
      readPIR();
    }
    else {
      uartPrintf("BAD CODE!\n", count);
    }
    count++;
  }
  return NULL;
}