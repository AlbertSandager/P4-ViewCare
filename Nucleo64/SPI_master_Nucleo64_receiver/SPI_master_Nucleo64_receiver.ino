#include "SPI.h" // necessary library

int ss = 10; // using digital pin 10 for SPI slave select



void setup() {
  Serial.begin(115200);
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  pinMode(3, INPUT_PULLUP);
  SPI.setDataMode (SPI_MODE2);
  //SPI.setClockDivider(SPI_CLOCK_DIV32);

}


int receivedVal;
int error = 0;


void loop() {

  digitalWrite(ss, LOW);

  SPI.transfer(0);
  receivedVal = SPI.transfer(0);

  digitalWrite(ss, HIGH);

  Serial.print(receivedVal);

//  delay(1);


  if (receivedVal != 5) {
    error++;
  }


}
