#include <math.h>
#include <ti/drivers/ADCBuf.h>
#include "main_tirtos.h"
#include "ti_drivers_config.h"

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Semaphore.h>
#include <ti/display/Display.h>



#define ADC_BUFFER_SIZE  128 
#define MIC_ADC_CHANNEL ADCBUF_CHANNEL_0


uint16_t rawADCBuffer[ADC_BUFFER_SIZE];
uint32_t microVoltsBuffer[ADC_BUFFER_SIZE];

//tracks each adc conversion (of ADC_BUFFER_SIZE samples)
size_t batch;




float readDecibel() {
  ADCBuf_Conversion conversion = { 0 };
  conversion.samplesRequestedCount = ADC_BUFFER_SIZE;
  conversion.sampleBuffer = rawADCBuffer;
  conversion.adcChannel = MIC_ADC_CHANNEL;

  if (ADCBuf_convert(adcBuf, &conversion, 1) != ADCBuf_STATUS_SUCCESS) {
    Semaphore_pend(displaySem, BIOS_WAIT_FOREVER);
    Display_print0(display, 0, 0, "ADC Conversion Failed");
    Semaphore_post(displaySem);
    return NAN;
  }
  else {
    int ret = ADCBuf_adjustRawValues(adcBuf, rawADCBuffer, ADC_BUFFER_SIZE, MIC_ADC_CHANNEL);
    ret |= ADCBuf_convertAdjustedToMicroVolts(adcBuf, MIC_ADC_CHANNEL, rawADCBuffer, microVoltsBuffer, ADC_BUFFER_SIZE);
    if (ret != ADCBuf_STATUS_SUCCESS) {
      Semaphore_pend(displaySem, BIOS_WAIT_FOREVER);
      Display_print0(display, 0, 0, "ADC Adjustment Failed");
      Semaphore_post(displaySem);
      return NAN;
    }
    Semaphore_pend(displaySem, BIOS_WAIT_FOREVER);
    for (size_t sampleIndex = 0; sampleIndex < ADC_BUFFER_SIZE; sampleIndex++) {
      Display_printf(display, 0, 0, "/adc, batch %u, sample %u, value %.2f", batch, sampleIndex, microVoltsBuffer[sampleIndex] * (1e-6));
    }
    Semaphore_post(displaySem);
    batch++;
  }
  return 1.0f;
}







