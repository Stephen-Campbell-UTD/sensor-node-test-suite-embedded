/*
 * Copyright (c) 2016-2020, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,

 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

 /*
  *  ======== main_tirtos.c ========
  */
#include <stdint.h>

  /* POSIX Header files */
#include <pthread.h>

/* RTOS header files */
#include <ti/sysbios/BIOS.h>

#include <ti/drivers/Board.h>
#include <ti/drivers/ADCBuf.h>
#include <ti/drivers/adcbuf/ADCBufCC26X2.h>
#include <ti/display/Display.h> 
#include <ti/sysbios/knl/Semaphore.h>
#include "ti_drivers_config.h"
#include "application/application.h"
#include <ti/devices/cc13x2_cc26x2/driverlib/aon_batmon.h>


/* Stack size in bytes */
#define THREADSTACKSIZE  2048

/*
 *  ======== main ========
 */
int main(void) {
  pthread_t           mainThread;
  pthread_attr_t      mainThreadAttrs;
  struct sched_param  priParam;
  int                 retc;

  Board_init();
  AONBatMonEnable();
  ADCBuf_init();

  /* Initialize the attributes structure with default values */
  pthread_attr_init(&mainThreadAttrs);
  /* Set priority, detach state, and stack size attributes */
  priParam.sched_priority = 1;
  retc = pthread_attr_setschedparam(&mainThreadAttrs, &priParam);
  retc |= pthread_attr_setdetachstate(&mainThreadAttrs, PTHREAD_CREATE_DETACHED);
  retc |= pthread_attr_setstacksize(&mainThreadAttrs, THREADSTACKSIZE);
  if (retc != 0) {
    /* failed to set attributes */
    while (1) {}
  }
  retc = pthread_create(&mainThread, &mainThreadAttrs, mainThreadFunc, NULL);
  if (retc != 0) {
    /* pthread_create() failed */
    while (1) {}
  }



  BIOS_start();

  return (0);
}
