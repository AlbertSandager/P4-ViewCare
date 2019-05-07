#include "SPI.h" // necessary library
#include <SD.h>


File myFile;


//Global variables
int ss = 8; // using digital pin 10 for SPI slave select
int cs = 9;
byte receivedVal;



void setup() {

  Serial.begin(9600);

  SPIinit();

}


void loop() {

  //Getting the values from FPGA. Slave 2
  SPI.begin(); // wake up the SPI bus.
  digitalWrite(ss, LOW);

  SPI.transfer(0);
  receivedVal = SPI.transfer(0);

  digitalWrite(ss, HIGH);

  Serial.println(receivedVal);


  sdWrite(receivedVal);

  delay(100);
}
