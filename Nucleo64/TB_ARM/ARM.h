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
  // Konstanter der bruges i til konfigurrering;
  int ss=8; 
  int trdy=7;
  byte bit24val[3];
  
  private:
  //kanaler fra fpga:
  
  int receivedVal;
  
};


#endif
