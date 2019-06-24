#include "SPI.h" // necessary library
int ss = 10; // using digital pin 10 for SPI slave select

long data[] = {
100001,
138269,
170712,
192389,
200001,
192389,
170712,
138269,
100001,
61733,
29290,
7613,
1,
7613,
29290,
61733,
100001,
138269,
170712,
192389,
200001,
192389,
170712,
138269,
100001,
61733,
29290,
7613,
1,
7613,
29290,
61733,
100001,
138269,
170712,
192389,
200001,
192389,
170712,
138269,
100001,
61733,
29290,
7613,
1,
7613,
29290,
61733,
100001,
138269,
170712,
192389,
200001,
192389,
170712,
138269,
100001,
61733,
29290,
7613,
1,
7613,
29290,
61733,
100001,
138270,
170712,
192389,
200001,
192389,
170712,
138269,
100001,
61733,
29290,
7613,
1,
7613,
29290,
61733
};

byte bit24val[3];

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

void convertLong2bit24vector(long val)
{
  for (int i = 0; i < 3 ; i++) {
    bit24val[i] = lowByte(val);
    val = val >> 8;
  }
}
