/*
 * Copyright (C) 2018 - 2022 Xilinx, Inc.
 * Copyright (C) 2022 - 2024 Advanced Micro Devices, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"

#include <stdint.h>
#include "xgpio.h"





#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

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
#define CHANNEL_1   1
#define CHANNEL_2   2

/*
* TCP/IP Definitions
*/
#if LWIP_IPV6==1
#include "lwip/ip6_addr.h"
#include "lwip/ip6.h"
#else
#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"
#endif /* LWIP_IPV6 */

/**************************** Type Definitions *******************************/


/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio Gpio; /* The Instance of the GPIO Driver */
XGpio Gpio1; /* The Instance of the GPIO Driver */
XGpio Gpio2; /* The Instance of the GPIO Driver */
XGpio Gpio3; /* The Instance of the GPIO Driver */
XGpio Gpio4; /* The Instance of the GPIO Driver */



/*
* TCP/IP Variable Definitions
*/
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;



struct netif server_netif;



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

void platform_enable_interrupts(void);
void start_application(void);
void transfer_data(void);
void print_app_header(void);

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#if defined(XPAR_XIICPS_0_DEVICE_ID) || defined(XPAR_XIICPS_0_BASEADDR)
int IicPhyReset(void);
#endif
#endif

#if LWIP_IPV6==1
static void print_ipv6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %s\n\r", inet6_ntoa(*ip));
}
#else
static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}
#endif /* LWIP_IPV6 */

/*****************************************************************************/
/**
*
* Main App with TCP/IP client comm with PC and PS-PL comm with AXI bus
*
*
* @return	XST_FAILURE to indicate that the GPIO Initialization had
*		failed.
*
* @note		This function will not return if the test is running.
*
******************************************************************************/



int main(void)
{
	int Status;
	volatile int Delay = 10000;
	struct netif *netif;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

	/* Define this board specific macro in order perform PHY reset
	 * on ZCU102
	 */
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	init_platform();

	xil_printf("\r\n\r\n");
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

    xil_printf("Initializing GPIO_4\r\n");

    Status = XGpio_Initialize(&Gpio4, XPAR_XGPIO_4_BASEADDR);


	if (Status != XST_SUCCESS) {
		xil_printf("Gpio_4 Initialization Failed\r\n");
		return XST_FAILURE;
	}

    xil_printf("Setting Direction\r\n");    
	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, ~LED);
	XGpio_SetDataDirection(&Gpio1, BTN_CHANNEL, LED);
	XGpio_SetDataDirection(&Gpio2, CHANNEL_1, ~LED);
	XGpio_SetDataDirection(&Gpio2, CHANNEL_2, ~LED);
	XGpio_SetDataDirection(&Gpio3, CHANNEL_1, ~LED);
	XGpio_SetDataDirection(&Gpio3, CHANNEL_2, ~LED);
	XGpio_SetDataDirection(&Gpio4, CHANNEL_1, LED);
	XGpio_SetDataDirection(&Gpio4, CHANNEL_2, LED);



	xil_printf("\r\n\r\n");
	xil_printf("-----lwIP RAW Mode TCP Client Application-----\r\n");

	/* initialize lwIP */
	lwip_init();

	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
				PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return -1;
	}

#if LWIP_IPV6==1
	netif->ip6_autoconfig_enabled = 1;
	netif_create_ip6_linklocal_address(netif, 1);
	netif_ip6_addr_set_state(netif, 0, IP6_ADDR_VALID);
	print_ipv6("\n\rlink local IPv6 address is:",&netif->ip6_addr[0]);
#endif /* LWIP_IPV6 */
	netif_set_default(netif);

#ifndef SDT
	/* now enable interrupts */
	platform_enable_interrupts();
#endif

	/* specify that the network if is up */
	netif_set_up(netif);

#if (LWIP_IPV6==0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(netif);
	dhcp_timoutcntr = 240;
	while (((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(netif);

	if (dhcp_timoutcntr <= 0) {
		if ((netif->ip_addr.addr) == 0) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			assign_default_ip(&(netif->ip_addr),
					&(netif->netmask), &(netif->gw));
		}
	}

	/* print IP address, netmask and gateway */
#else
	assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif /* LWIP_IPV6 */
	xil_printf("\r\n");

	/* print app header */
	print_app_header();

	/* start the application*/
	start_application();
	xil_printf("\r\n");

	/* Loop forever blinking the LED */
    xil_printf("Starting Loop...\r\n");    
    uint32_t btn_state=0;
    int i=0;

	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(netif);
		transfer_data();

        		/* Set the LED to High */
        btn_state=XGpio_DiscreteRead(&Gpio1, LED);
        if(0x01 & btn_state){
		    XGpio_DiscreteSet(&Gpio, LED_CHANNEL, LED);
            XGpio_DiscreteSet(&Gpio2,LED_CHANNEL,0x01);
        }
        else {
            XGpio_DiscreteClear(&Gpio,LED_CHANNEL,LED);
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

            XGpio_DiscreteSet(&Gpio4, CHANNEL_2, 0x01);


            if(0x01 & rcv)
 		        XGpio_DiscreteSet(&Gpio, LED_CHANNEL, 0x08);
            else
 		        XGpio_DiscreteClear(&Gpio, LED_CHANNEL, 0x08);   
        }
        else
            XGpio_DiscreteClear(&Gpio4, CHANNEL_2, 0x01);
                 
        if(i++>Delay){
//            xil_printf("Buttons State: %d\r\n",btn_state);
            i=0;
        }
	}


	/* never reached */
	cleanup_platform();

	return 0;
}
