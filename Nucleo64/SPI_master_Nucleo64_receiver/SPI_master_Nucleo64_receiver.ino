#include "SPI.h" // necessary library
#include <SD.h>


File myFile;


//Global variables
int button = 2;
int ss = 8; // using digital pin 10 for SPI slave select
int cs = 9;
byte receivedVal;



void setup() {

  pinMode(button, INPUT_PULLUP);
  Serial.begin(9600);

  SPIinit();

}


void loop() {

  //Getting the values from FPGA. Slave 2
  //SPI.begin(); // wake up the SPI bus.
  SPI.beginTransaction(SPISettings(12000000, MSBFIRST, SPI_MODE2));
  digitalWrite(ss, LOW);

  SPI.transfer(0);
  SPI.transfer(5);
  receivedVal = SPI.transfer(0);
  

  digitalWrite(ss, HIGH);

  Serial.println(receivedVal);

  if (digitalRead(button) == LOW) {
    sdWrite(receivedVal);
    delay(5000);
  }

  delay(100);
}
