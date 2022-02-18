#include <math.h>
#include <ti/drivers/ADCBuf.h>
#include "main_tirtos.h"
#include "ti_drivers_config.h"

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Semaphore.h>
#include <ti/display/Display.h>
#include <xdc/runtime/System.h>
#include "application/application.h"
#include "application/batmonWrapper.h"



//maxes out at 1024
#define ADC_BUFFER_SIZE  1024 
#define MIC_ADC_CHANNEL ADCBUF_CHANNEL_0
#define VOLTAGE_TO_PASCALS_FACTOR 1.53872


uint16_t rawADCBuffer[ADC_BUFFER_SIZE];
uint32_t microVoltsBuffer[ADC_BUFFER_SIZE];

//tracks each adc conversion (of ADC_BUFFER_SIZE samples)
size_t batch;




float readDecibel() {
  ADCBuf_Conversion conversion = { 0 };
  conversion.samplesRequestedCount = ADC_BUFFER_SIZE;
  conversion.sampleBuffer = rawADCBuffer;
  conversion.adcChannel = MIC_ADC_CHANNEL;
  float dBSPL;
  if (ADCBuf_convert(adcBuf, &conversion, 1) != ADCBuf_STATUS_SUCCESS) {

    uartPrintf("ADC Conversion Failed\n");
    return NAN;
  }
  else {
    int ret = ADCBuf_adjustRawValues(adcBuf, rawADCBuffer, ADC_BUFFER_SIZE, MIC_ADC_CHANNEL);
    ret |= ADCBuf_convertAdjustedToMicroVolts(adcBuf, MIC_ADC_CHANNEL, rawADCBuffer, microVoltsBuffer, ADC_BUFFER_SIZE);
    if (ret != ADCBuf_STATUS_SUCCESS) {
      uartPrintf("ADC Adjustment Failed\n");
      return NAN;
    }
    //voltage divider
    float dcOffset = getBatteryVoltage() / 2;
    uartPrintf("{ \"path\" : \"ADC\" , \"value\" : { \"voltages\" : [");
    float accumulator = 0.0f;
    for (size_t sampleIndex = 0; sampleIndex < ADC_BUFFER_SIZE; sampleIndex++) {
      accumulator += pow(microVoltsBuffer[sampleIndex] * (1e-6) - dcOffset, 2);
      const uint32_t val = microVoltsBuffer[sampleIndex];
      uartPrintf("%u", val);
      // System_printf("%u", val);
      if (sampleIndex != ADC_BUFFER_SIZE - 1) {
        uartPrintf(",");
      }
    }
    uartPrintf(" ],");
    float rmsV = sqrt(accumulator / ADC_BUFFER_SIZE);
    float rmsP = VOLTAGE_TO_PASCALS_FACTOR * rmsV;
    dBSPL = 20 * log10f(rmsP / (20e-6));
    uartPrintf("\"rmsV\" : %f ,", rmsV);
    uartPrintf("\"rmsP\" : %f ,", rmsP);
    uartPrintf("\"dBSPL\" : %f ", dBSPL);
    uartPrintf("}}\n");
    batch++;
  }
  return dBSPL;
}







