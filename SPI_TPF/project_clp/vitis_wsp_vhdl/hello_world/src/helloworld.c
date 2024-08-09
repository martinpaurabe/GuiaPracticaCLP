/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

/***************************** Include Files *********************************/

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

/************************** Constant Definitions *****************************/

#define LED 0x01   /* Assumes bit 0 of GPIO is connected to an LED  */

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#ifndef SDT
#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#else
#define	XGPIO_AXI_BASEADDRESS	XPAR_XGPIO_0_BASEADDR
#endif

/*
 * The following constant is used to wait after an LED is turned on to make
 * sure that it is visible to the human eye.  This constant might need to be
 * tuned for faster or slower processor speeds.
 */
#define LED_DELAY     10000000

/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define LED_CHANNEL 1
#define BTN_CHANNEL 1

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/

#ifdef PRE_2_00A_APPLICATION

/*
 * The following macros are provided to allow an application to compile that
 * uses an older version of the driver (pre 2.00a) which did not have a channel
 * parameter. Note that the channel parameter is fixed as channel 1.
 */
#define XGpio_SetDataDirection(InstancePtr, DirectionMask) \
	XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr) \
	XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask) \
	XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask) \
	XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif

/************************** Function Prototypes ******************************/
#include "xuartps_hw.h"
int8_t inbyte_nb (void) {
u32 ReceivedByte;
       /* Check if there is data */
       if (!XUartPs_IsReceiveData(STDIN_BASEADDRESS)) {
              return -1;
       }
       /* Read a byte from the input buffer */
       ReceivedByte = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
       /* Return the byte received */
       return (int8_t) ReceivedByte;
}



/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio Gpio; /* The Instance of the GPIO Driver */
XGpio Gpio1; /* The Instance of the GPIO Driver */
XGpio Gpio2; /* The Instance of the GPIO Driver */
XGpio Gpio3; /* The Instance of the GPIO Driver */

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the GPIO
* driver to turn on and off an LED.
*
*
* @return	XST_FAILURE to indicate that the GPIO Initialization had
*		failed.
*
* @note		This function will not return if the test is running.
*
******************************************************************************/

int main()
{
	int Status;
	volatile int Delay;

    init_platform();
    xil_printf("Hello First Project\n\r");
    xil_printf("Successfully ran First Project application\r\n");

    xil_printf("Initializing GPIO_0\r\n");

    Status = XGpio_Initialize(&Gpio, XGPIO_AXI_BASEADDRESS);


	if (Status != XST_SUCCESS) {
		xil_printf("Gpio_0 Initialization Failed\r\n");
		return XST_FAILURE;
	}

    xil_printf("Initializing GPIO_1\r\n");

    Status = XGpio_Initialize(&Gpio1, XPAR_XGPIO_1_BASEADDR);


	if (Status != XST_SUCCESS) {
		xil_printf("Gpio_1 Initialization Failed\r\n");
		return XST_FAILURE;
	}

    xil_printf("Initializing GPIO_2\r\n");

    Status = XGpio_Initialize(&Gpio2, XPAR_XGPIO_2_BASEADDR);


	if (Status != XST_SUCCESS) {
		xil_printf("Gpio_2 Initialization Failed\r\n");
		return XST_FAILURE;
	}

    xil_printf("Initializing GPIO_3\r\n");

    Status = XGpio_Initialize(&Gpio3, XPAR_XGPIO_3_BASEADDR);


	if (Status != XST_SUCCESS) {
		xil_printf("Gpio_3 Initialization Failed\r\n");
		return XST_FAILURE;
	}


    xil_printf("Setting Direction\r\n");    
	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, ~LED);
	XGpio_SetDataDirection(&Gpio1, BTN_CHANNEL, LED);
	XGpio_SetDataDirection(&Gpio2, BTN_CHANNEL, ~LED);
	XGpio_SetDataDirection(&Gpio3, BTN_CHANNEL, LED);

	/* Loop forever blinking the LED */
    xil_printf("Starting Loop...\r\n");    
    uint32_t btn_state=0;
    int i=0;

	while (1) {
		/* Set the LED to High */
        btn_state=XGpio_DiscreteRead(&Gpio1, LED);
        if(0x01 & btn_state){
		    XGpio_DiscreteSet(&Gpio, LED_CHANNEL, LED);
            XGpio_DiscreteSet(&Gpio2,LED_CHANNEL,0x01);
        }
        else {
            XGpio_DiscreteClear(&Gpio2,LED_CHANNEL,0x01);
        }
        
        if(0x01 & XGpio_DiscreteRead(&Gpio3,1))
 		    XGpio_DiscreteSet(&Gpio, LED_CHANNEL, 0x02);
        else
 		    XGpio_DiscreteClear(&Gpio, LED_CHANNEL, 0x02);

        if(0x02 & XGpio_DiscreteRead(&Gpio3,1))
 		    XGpio_DiscreteSet(&Gpio, LED_CHANNEL, 0x04);
        else
 		    XGpio_DiscreteClear(&Gpio, LED_CHANNEL, 0x04);

        
        int8_t rcv;
    
        rcv=inbyte_nb();

        if(rcv!=-1){

            outbyte(rcv);

            if(0x01 & rcv)
 		        XGpio_DiscreteSet(&Gpio, LED_CHANNEL, 0x08);
            else
 		        XGpio_DiscreteClear(&Gpio, LED_CHANNEL, 0x08);   
        }
                 
        if(i++>10000){
            xil_printf("Buttons State: %d\r\n",btn_state);
            i=0;
        }
	}

    cleanup_platform();
    return 0;
}
