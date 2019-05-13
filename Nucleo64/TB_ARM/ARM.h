#ifndef ARM_h
#define ARM_h

#include "Arduino.h"
#include "SPI.h"

class ARM
{
  public:
  ARM();
 
  long getData(byte kanal);
  void convertLong2bit24vector(long val); // konverterer en long variabel om til et bytearray med med 3 bytes (24 bit.)
 
  void konfig();
  // Konstanter der bruges i til konfigurrering;
  int ss=10; 
  byte bit24val[3];
  
  private:
  //kanaler fra fpga:

  int receivedVal;
  
};


#endif
