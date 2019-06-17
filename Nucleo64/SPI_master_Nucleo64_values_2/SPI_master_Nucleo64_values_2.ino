#include "SPI.h" // necessary library
int ss = 10; // using digital pin 10 for SPI slave select

long data[81] = {0,32,5,-23,9,42,14,-14,19,51,24,-4,28,61,33,5,38,70,42,15,47,79,52,24,56,89,61,33,65,98,70,42,75,107,79,51,84,116,88,60,93,125,97,69,102,134,106,78,110,143,115,87,119,151,123,96,128,160,132,104,136,168,140,112,145,177,149,121,153,185,157,129,161,193,165,137,169,201,173,144,176
};

byte bit24val[3];

void convertLong2bit24vector(long val)
{
  for (int i = 0; i < 3 ; i++) {
    bit24val[i] = lowByte(val);
    val = val >> 8;
  }
}

void setup() {

  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  SPI.setDataMode (SPI_MODE2);
  pinMode(3, INPUT_PULLUP);
  //SPI.setClockDivider(SPI_CLOCK_DIV4);

}


void loop() {


  for (int i = 0; i < 80; i++) {
    convertLong2bit24vector(data[i]);
    digitalWrite(ss, LOW);

    SPI.transfer(0); // send command byte

    SPI.transfer(bit24val[2]);
    SPI.transfer(bit24val[1]);
    SPI.transfer(bit24val[0]);

    digitalWrite(ss, HIGH);

    delayMicroseconds(125);

  }

}
