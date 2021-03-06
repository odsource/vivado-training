/* Standard includes. */
#include <stdio.h>
#include <string.h>
#include <xil_io.h>
#include <stdlib.h>

/* FreeRTOS includes. */
#include <FreeRTOS.h>
#include "task.h"

/* FreeRTOS+TCP includes. */
#include "FreeRTOS_IP.h"
#include "FreeRTOS_Sockets.h"

#define THREAD_STACKSIZE 1024
#define BUFFER_SIZE 512

static void vDoIcmp( void *pvParameters);

/* The MAC address array is not declared const as the MAC address will
normally be read from an EEPROM and not hard coded (in real deployed
applications).*/
uint8_t ucMACAddress[ 6 ] = { 0x00, 0x11, 0x22, 0x33, 0x44, 0x55 };

/* Define the network addressing.  These parameters will be used if either
ipconfigUDE_DHCP is 0 or if ipconfigUSE_DHCP is 1 but DHCP auto configuration
failed. */
static const uint8_t ucIPAddress[ 4 ] = { 192, 168, 1, 222 };
static const uint8_t ucNetMask[ 4 ] = { 255, 255, 255, 0 };
static const uint8_t ucGatewayAddress[ 4 ] = { 192, 168, 1, 1 };

/* The following is the address of an OpenDNS server. */
static const uint8_t ucDNSServerAddress[ 4 ] = { 192, 168, 1, 1 };

int main( void )
{
	// TODO: rand initialisieren

	/* Initialize the network interface */
	xil_printf( "FreeRTOS_IPInit\r\n" );
	FreeRTOS_IPInit( ucIPAddress, ucNetMask, ucGatewayAddress, ucDNSServerAddress, ucMACAddress );

	/* Start the RTOS scheduler. */
	xil_printf( "vTaskStartScheduler\r\n" );
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following
	line will never be reached.  If the following line does execute, then
	there was insufficient FreeRTOS heap memory available for the idle and/or
	timer tasks to be created. */
	for( ;; );
}


void vApplicationIPNetworkEventHook( eIPCallbackEvent_t eNetworkEvent )
{
	static BaseType_t xTasksAlreadyCreated = pdFALSE;
	xil_printf( "Got network event: %d\r\n", eNetworkEvent );

    /* Both eNetworkUp and eNetworkDown events can be processed here. */
    if( eNetworkEvent == eNetworkUp )
    {
        /* Create the tasks that use the TCP/IP stack if they have not already
        been created. */
        if( xTasksAlreadyCreated == pdFALSE )
        {
            /*
             * For convenience, tasks that use FreeRTOS+TCP can be created here
             * to ensure they are not created before the network is usable.
             */

            xTasksAlreadyCreated = pdTRUE;

            xil_printf( "Create icmp task...\r\n" );
            xTaskCreate( vDoIcmp, "IcmpTask", THREAD_STACKSIZE, NULL, tskIDLE_PRIORITY, NULL );
        }
    }
}

static void vDoIcmp( void *pvParameters )
{
	while (1) {
		uint16_t usRequestSequenceNumber, usReplySequenceNumber;
		uint32_t ulIPAddress;

		/* The pcIPAddress parameter holds the destination IP address as a string in
		decimal dot notation (for example, "192.168.0.200").  Convert the string into
		the required 32-bit format. */
		ulIPAddress = FreeRTOS_inet_addr( "192.168.1.1" );

		/* Send a ping containing 8 data bytes.  Wait (in the Blocked state) a
		maximum of 100ms for a network buffer into which the generated ping request
		can be written and sent. */
		FreeRTOS_printf( ( "Ping!" ) );
		usRequestSequenceNumber = FreeRTOS_SendPingRequest( ulIPAddress, 8, 100 / portTICK_PERIOD_MS );
		vTaskDelay(500 / portTICK_PERIOD_MS);
	}

}

/* Called automatically when a reply to an outgoing ping is received. */
void vApplicationPingReplyHook( ePingReplyStatus_t eStatus, uint16_t usIdentifier )
{
static const char *pcSuccess = "Ping reply received - ";
static const char *pcInvalidChecksum = "Ping reply received with invalid checksum - ";
static const char *pcInvalidData = "Ping reply received with invalid data - ";

	switch( eStatus )
	{
		case eSuccess	:
			FreeRTOS_printf( ( pcSuccess ) );
			break;

		case eInvalidChecksum :
			FreeRTOS_printf( ( pcInvalidChecksum ) );
			break;

		case eInvalidData :
			FreeRTOS_printf( ( pcInvalidData ) );
			break;

		default :
			/* It is not possible to get here as all enums have their own
			case. */
			break;
	}

	FreeRTOS_printf( ( "identifier %d\r\n", ( int ) usIdentifier ) );

	/* Prevent compiler warnings in case FreeRTOS_debug_printf() is not defined. */
	( void ) usIdentifier;
}


