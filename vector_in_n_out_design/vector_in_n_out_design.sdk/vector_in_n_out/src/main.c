#include <xparameters.h>
#include <xplatform_info.h>
#include <xil_printf.h>
#include <xgpiops.h>

#define EMIO_BANK 2

static void spin_wait() {
	for (int i = 0; i< 50000000; ++i);
}

int main() {
	XGpioPs xGpioPs;
	XGpioPs_Config* xGpioPsConfig;
	u32 xilStatus;

	xGpioPsConfig = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	xilStatus = XGpioPs_CfgInitialize(&xGpioPs, xGpioPsConfig, xGpioPsConfig->BaseAddr);

	XGpioPs_SetOutputEnable(&xGpioPs, EMIO_BANK, 0xffffffff);
	XGpioPs_SetDirection(&xGpioPs, EMIO_BANK, 0xffffffff);

	for (int i = 0; ; i = (i + 1) % 4) {
		XGpioPs_Write(&xGpioPs, EMIO_BANK, i);
		spin_wait();
	}

}
