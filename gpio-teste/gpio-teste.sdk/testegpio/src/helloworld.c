#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"

XGpio GPIO_0;
XGpio_Config GPIO_0_conf;

XGpio GPIO_1;
XGpio_Config GPIO_1_conf;

unsigned int result, word;

int main()
{
    GPIO_0_conf.BaseAddress = XPAR_AXI_GPIO_0_BASEADDR;
    GPIO_0_conf.DeviceId = XPAR_GPIO_0_DEVICE_ID;
    GPIO_0_conf.IsDual = XPAR_GPIO_0_IS_DUAL;

    XGpio_CfgInitialize(&GPIO_0, &GPIO_0_conf, GPIO_0_conf.BaseAddress);

    GPIO_1_conf.BaseAddress = XPAR_AXI_GPIO_1_BASEADDR;
	GPIO_1_conf.DeviceId = XPAR_GPIO_1_DEVICE_ID;
	GPIO_1_conf.IsDual = XPAR_GPIO_1_IS_DUAL;

	XGpio_CfgInitialize(&GPIO_1, &GPIO_1_conf, GPIO_1_conf.BaseAddress);

    init_platform();
    for(int i=0; i<=63; i++){
    	/* Write memory address */
		XGpio_DiscreteWrite(&GPIO_0, 1, i);
		/* word */
		word = XGpio_DiscreteRead(&GPIO_1, 1);
		/* result of ones counter */
		result = XGpio_DiscreteRead(&GPIO_0, 2);

		/* select only words between 1 and 3 */

		if((result >= 1) && (result <= 3)){
			xil_printf("word %x has", word);
			xil_printf(" %d consecutive 1 ---- ", result);
		}
    }


    cleanup_platform();
    return 0;
}