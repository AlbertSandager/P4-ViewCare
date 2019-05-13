#include "ARM.h"
#include "Arduino.h"
#include "SPI.h"

ARM::ARM() // bruges til at køre setup af ARM.
{

  
}

void ARM::konfig(){
  Serial.begin(115200); 
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  pinMode(3, INPUT_PULLUP);
  SPI.setDataMode (SPI_MODE2);
  //SPI.setClockDivider(SPI_CLOCK_DIV32); 
  Serial.println("ARM kode kører"); 
  
}


long ARM::getData(byte kanal)
{
  long buffer1 = 0;
  long buffer2 = 0;
  long buffer3 = 0;
  long val = 0;
  // modtag data over SPI bussen
  digitalWrite(ss, LOW);
  SPI.transfer(kanal);
  buffer1 = SPI.transfer(0);
  buffer2 = SPI.transfer(0);
  buffer3 = SPI.transfer(0);
  digitalWrite(ss, HIGH);
  //sammensæt modtaget data i en long variabel og returner
  
  buffer1 = buffer1 << 16;
  buffer2 = buffer2 << 8;
  val = buffer1 + buffer2 + buffer3;
  return val;
}

void ARM::convertLong2bit24vector(long val)
{
  for (int i = 0; i < 3 ; i++) {
    bit24val[i] = lowByte(val);
    val = val >> 8;
  }
}
