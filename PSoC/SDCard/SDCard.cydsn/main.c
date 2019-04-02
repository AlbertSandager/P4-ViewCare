#include <project.h>
#include <FS.h>
#include <string.h>
#include <Global.h>


char sdFile[9] = "File.txt"; // Choose the file name


int main()
{
    CyGlobalIntEnable; //Enable global interrupts. (UART thing :D)
    
    char sdVolName[10]; //Buffer that will hold SD card Volume name
    FS_FILE * pFile;
    
    UART_Start(); //Start the UART
    
    FS_Init(); //Initialize file system

    
    if(0 != FS_GetVolumeName(0u, &sdVolName[0], 9u)) //Get volume name of SD card #0
    {
        //Getting volume name succeeded so print it to the Serial monitor
        UART_PutString("SD card name:\n \r");
        UART_PutString(sdVolName);
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    else
    {
        //Operation Failed - indicate this
        UART_PutString("Failed to get\n \r");
        UART_PutString("SD card name\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    
    //Need some delay to indicate output on the Serial monitor
    CyDelay(2000u);
    
    UART_PutString("SD card format\n \r");
    
    if(0 == FS_FormatSD(sdVolName))
    {
        UART_PutString("Succeeded\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    else
    {
        UART_PutString("Failed\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    
    CyDelay(2000u); //Need some delay to indicate output on the Serial monitor
    
    if(0 == FS_MkDir("Dir")) //This will create directory "Dir" on SD card
    {
        //Display successful directory creation message
        UART_PutString("\"Dir\" created\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    else
    {
        //Display failure message
        UART_PutString("Failed to create\n \r");
        UART_PutString("directory\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    

    CyDelay(2000u); //Need some delay to indicate output on the Serial monitor
    
    //Create specific file for modification
    pFile = FS_FOpen(sdFile, "w");
    
    if(pFile) //Check if file was created
    {
        //Indicate successful file creation message
        UART_PutString("File \n \r");
        UART_PutString(sdFile);
        UART_PutString("was opened\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
        
        //Need some delay to indicate output on the Serial monitor
        CyDelay(2000u);
        
        if(0 != FS_Write(pFile, "0123456789", 10u)) 
        {
            //Inditate that data was written to a file
            UART_PutString("\"0123456789\"\n \r");
            UART_PutString(sdFile);
            UART_PutString("written to file\n \r");
            UART_PutString("\n \r");
            UART_PutString("\n \r");
        }
        else
        {
            //Display failure message
            UART_PutString("Failed to write\n \r");
            UART_PutString("data to file\n \r");
            UART_PutString("\n \r");
            UART_PutString("\n \r");
        }
        
        //Need some delay to indicate output on the Serial monitor
        CyDelay(2000u);
        
        if(0 == FS_FClose(pFile)) //Closing the file
        {
            //Succesfull closure
            UART_PutString("File was closed\n \r");
            UART_PutString("\n \r");
            UART_PutString("\n \r");
        }
        else
        {
            //Display failure message
            UART_PutString("Failed to close\n \r");
            UART_PutString("file\n \r");
            UART_PutString("\n \r");
            UART_PutString("\n \r");
        }
    }
    else
    {
        //Display failure message
        UART_PutString("Failed to create\n \r");
        UART_PutString("file\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    
    //Need some delay to indicate output on the Serial monitor
    CyDelay(2000u);
    
    if(0 == FS_CopyFile(sdFile, "\\Dir\\file1.txt")) //Copy a file to a previously created directory
    {
        UART_PutString("File was \n \r");
        UART_PutString("copied to \"DIR\"\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    else
    {
        UART_PutString("Failed to copy\n \r");
        UART_PutString("file\n \r");
        UART_PutString("\n \r");
        UART_PutString("\n \r");
    }
    
    CyDelay(2000); //Need some delay to indicate output on the Serial monitor
    
    //Finish even though we are Danish :3
    UART_PutString("Example project\n \r");
    UART_PutString("completed\n \r");
    
    for(;;)
    {
        
    }
}


/* [] END OF FILE */

