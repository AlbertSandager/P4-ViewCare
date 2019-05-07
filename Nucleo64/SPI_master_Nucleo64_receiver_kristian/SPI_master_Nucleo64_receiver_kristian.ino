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

byte bit24val[3];

long sendVal=0;


void loop() {

  convertLong2bit24vector(sendVal);
 
  digitalWrite(ss, LOW);

  SPI.transfer(0);
  SPI.transfer(0);
  SPI.transfer(0);
  SPI.transfer(bit24val[0]);
  SPI.transfer(bit24val[1]);
  SPI.transfer(bit24val[2]);
  
  //receivedVal = SPI.transfer(0);

  digitalWrite(ss, HIGH);

  Serial.print(receivedVal);

//  delay(1);


  if (receivedVal != 5) {
    error++;
  }


}
