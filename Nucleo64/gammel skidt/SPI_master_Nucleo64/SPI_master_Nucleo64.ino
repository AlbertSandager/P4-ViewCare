#include "SPI.h" // necessary library
int ss = 10; // using digital pin 10 for SPI slave select


void setup() {
  
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  pinMode(3, INPUT_PULLUP);
  //SPI.setClockDivider(SPI_CLOCK_DIV4);

}

void loop() {

  digitalWrite(ss, LOW);

  SPI.transfer(0); // send command byte

  SPI.transfer(55); // send value (0~255)

  digitalWrite(ss, HIGH);

  delay(1000);

}
