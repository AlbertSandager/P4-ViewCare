/* Description:
*  The example project consists of 5 simple steps. Each of the steps performs 
*  single File System operation. 
*  Step#1: Gets SD card name and displays it on the LCD.
*  Step#2: Performs Format SD operation and displays the status of the format 
*  operation execution.
*  Step#3: Creates directory with the name - "Dir" and displays a status of 
*  directory creation operation.
*  Step#4: Creates a file - "File.txt" in the root directory and writes the 
*  following string to the file -"123456789". Displays a status of operations 
*  execution.
*  Step#5: Copies newly created file ("File.txt") to directory "Dir" with the 
*  name - "File1.txt". 
*/

#include <project.h>
#include <FS.h>
#include <string.h>
#include <Global.h>


char sdFile[9] = "File.txt";


int main()
{
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    char sdVolName[10];     /* Buffer that will hold SD card Volume name */
    FS_FILE * pFile;
    
    /* Start LCD */
    UART_Start();
    
    /* Initialize file system */
    FS_Init();
    
    /* Display step number */
    UART_PutString("SD CARD NAME\n \r");
    
    /* Get volume name of SD card #0 */
    if(0 != FS_GetVolumeName(0u, &sdVolName[0], 9u))
    {
        /* Getting volume name succeeded so prompt it on the LCD */
        UART_PutString("SD card name:\n \r");
        UART_PutString(sdVolName);
    }
    else
    {
        /* Operation Failed - indicate this */
        UART_PutString("Failed to get\n \r");
        UART_PutString("SD card name\n \r");
    }
    
    /* Need some delay to indicate output on the LCD */
    CyDelay(2000u);
    
    UART_PutString("SD CARD FORMAT\n \r");
    UART_PutString("SD card format\n \r");
    
    if(0 == FS_FormatSD(sdVolName))
    {
        UART_PutString("Succeeded\n \r");
    }
    else
    {
        UART_PutString("Failed\n \r");
    }
    
    /* Need some delay to indicate output on the LCD */
    CyDelay(2000u);
    
    UART_PutString("DIRECTORY\n \r");
    
    
    /* This will create directory "Dir" on SD card */
    if(0 == FS_MkDir("Dir"))
    {
        /* Display successful directory creation message */
        UART_PutString("\"Dir\" created\n \r");
    }
    else
    {
        /* Display failure message */
        UART_PutString("Failed to create\n \r");
        UART_PutString("directory\n \r");
    }
    
    /* Need some delay to indicate output on the LCD */
    CyDelay(2000u);
    
    UART_PutString("FILE\n \r");
    
    /* Create specific file for modification */
    pFile = FS_FOpen(sdFile, "w");
    
    /* Check if file was created */
    if(pFile)
    {
        /* Indicate successful file creation message */
        UART_PutString("File \n \r");
        UART_PutString(sdFile);
        UART_PutString("was opened\n \r");
        
        /* Need some delay to indicate output on the LCD */
        CyDelay(2000u);
        
        if(0 != FS_Write(pFile, "0123456789", 10u)) 
        {
            /* Inditate that data was written to a file */
            UART_PutString("\"0123456789\"\n \r");
            UART_PutString(sdFile);
            UART_PutString("written to file\n \r");
        }
        else
        {
            UART_PutString("Failed to write\n \r");
            UART_PutString("data to file\n \r");
        }
        
        /* Need some delay to indicate output on the LCD */
        CyDelay(2000u);
        
        if(0 == FS_FClose(pFile))
        {
            UART_PutString("File was closed\n \r");
        }
        else
        {
            UART_PutString("Failed to close\n \r");
            UART_PutString("file\n \r");
        }
    }
    else
    {
        UART_PutString("Failed to create\n \r");
        UART_PutString("file\n \r");
    }
    
    /* Need some delay to indicate output on the LCD */
    CyDelay(2000u);
        
    UART_PutString("COPY\n \r");
    
    
    /* Copy a file to a previously created directory */
    if(0 == FS_CopyFile(sdFile, "\\Dir\\file1.txt\n \r"))
    {
        UART_PutString("File was \n \r");
        UART_PutString("copied to \"DIR\"\n \r");
    }
    else
    {
        UART_PutString("Failed to copy\n \r");
        UART_PutString("file\n \r");
    }
    
    /* Need some delay to indicate output on the LCD */
    CyDelay(2000);
    
    UART_PutString("Example project\n \r");
    UART_PutString("completed\n \r");
    
    for(;;)
    {
        
    }
}


/* [] END OF FILE */

