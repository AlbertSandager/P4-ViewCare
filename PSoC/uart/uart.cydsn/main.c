/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"

uint8 receivedData;

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    UART_Start();
    //UART_PutString("H");
    UART_WriteTxData(100);
    receivedData = UART_ReadRxData();
    
    for(;;)
    {
        
    }
}

/* [] END OF FILE */
