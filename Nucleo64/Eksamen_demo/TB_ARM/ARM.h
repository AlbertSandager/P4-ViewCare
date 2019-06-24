#ifndef ARM_h
#define ARM_h

#include "Arduino.h"
#include "SPI.h"

class ARM
{
  public:
  ARM(); // construct til ARM biblioteket

  //------Funktioner:
  long getData(byte kanal);
  void convertLong2bit24vector(long val); // konverterer en long variabel om til et bytearray med med 3 bytes (24 bit.)
  
  void konfig(); // konfigurerer modulet. 

 
  // Funktioner brugt til tests: 
  void Test_convertLong2bit24vector(long val);
  long Test_getData(byte kanal);
  long Test_Bitshift_getData(byte kanal);

  
  // Konstanter der bruges i til konfigurrering;
  int ss=8; 
  int EKG_ready=6;  //interrupt til modtagelse fra ekg
  int LYD_ready_L=4; //interrupt til modtagelse fra lyd left
  int LYD_ready_R= 5; //interrupt til modtagelse fra lyd right
  byte bit24val[3];

  bool EKG_ready_bool=true;  //Fejlsikring med dobbelt afsendelse af data. 
  bool LYD_ready_L_bool=true; //Fejlsikring med dobbelt afsendelse af data. 
  bool LYD_ready_R_bool=true; //Fejlsikring med dobbelt afsendelse af data. 

 
  private:
  //kanaler fra fpga:
  
  int receivedVal;
  
};


#endif
