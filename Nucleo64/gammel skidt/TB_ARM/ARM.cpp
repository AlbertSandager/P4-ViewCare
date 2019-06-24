#include "ARM.h"
#include "Arduino.h"
#include "SPI.h"

ARM::ARM() // bruges til at køre setup af ARM.
{


}

void ARM::konfig() {
  Serial.begin(115200);
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.beginTransaction(SPISettings(11250000, MSBFIRST, SPI_MODE2));
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  pinMode(3, INPUT_PULLUP);
  SPI.setDataMode (SPI_MODE2);
  //SPI.setClockDivider(SPI_CLOCK_DIV32);
  Serial.println("ARM kode kører");
  pinMode(EKG_ready,INPUT);
  pinMode(LYD_ready_R,INPUT);
  pinMode(LYD_ready_L,INPUT);
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






//--------------- TEST FUNKTIONER -------------------------------------


void ARM::Test_convertLong2bit24vector(long val)
{
  Serial.print("Val: "); Serial.print(val); Serial.println(" to:"); 
  for (int i = 0; i < 3 ; i++) {
    bit24val[i] = lowByte(val);
    val = val >> 8;
  }
  Serial.println(bit24val[0]);
  Serial.println(bit24val[1]);
  Serial.println(bit24val[2]);
}



long ARM::Test_getData(byte kanal)
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

  Serial.print("buffer1: ");
  Serial.println(buffer1);
  
  Serial.print("buffer2: ");
  Serial.println(buffer2);
  
  Serial.print("buffer3: ");
  Serial.println(buffer3);
  
  buffer1 = buffer1 << 16;
  buffer2 = buffer2 << 8;

  
  val = buffer1 + buffer2 + buffer3;
  Serial.print("val: ");
  Serial.println(val);
  return val;
}

//test af bitshift der viser det hele på serial print. 
long ARM::Test_Bitshift_getData(byte kanal)
{
  long buffer1 = 33;
  long buffer2 = 55;
  long buffer3 = 44;
  long val = 0;
  // modtag data over SPI bussen
 /*
  digitalWrite(ss, LOW);
  SPI.transfer(kanal);
  buffer1 = SPI.transfer(0);
  buffer2 = SPI.transfer(0);
  buffer3 = SPI.transfer(0);
  digitalWrite(ss, HIGH);
  //sammensæt modtaget data i en long variabel og returner
*/
  Serial.println("Data før det bliver sat sammen:");
  Serial.print("buffer1: ");
  Serial.println(buffer1);
  
  Serial.print("buffer2: ");
  Serial.println(buffer2);
  
  Serial.print("buffer3: ");
  Serial.println(buffer3);

  Serial.println("Bitshift af data");
  buffer1 = buffer1 << 16;
  buffer2 = buffer2 << 8;
  
  Serial.print("buffer1 er flyttet 16 pladser til venstre: ");
  Serial.println(buffer1);
  
  Serial.print("buffer2 er flyttet 8 pladser til venstre:  ");
  Serial.println(buffer2);
  
  val = buffer1 + buffer2 + buffer3;
  Serial.print("val: ");
  Serial.println(val);
  return val;
}
