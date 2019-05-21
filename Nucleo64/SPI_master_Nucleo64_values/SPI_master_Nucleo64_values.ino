#include "SPI.h" // necessary library
int ss = 10; // using digital pin 10 for SPI slave select

long data[] = {
100001,
107847,
115644,
123346,
130903,
138269,
145400,
152251,
158780,
164946,
170712,
176042,
180903,
185265,
189102,
192389,
195107,
197238,
198770,
199693,
200001,
199693,
198770,
197238,
195107,
192389,
189102,
185265,
180903,
176042,
170712,
164946,
158779,
152251,
145400,
138269,
130903,
123345,
115644,
107847,
100001,
92155,
84357,
76656,
69099,
61733,
54602,
47751,
41222,
35056,
29290,
23960,
19099,
14737,
10900,
7613,
4895,
2764,
1232,
309,
1,
309,
1232,
2764,
4895,
7613,
10900,
14737,
19099,
23961,
29290,
35056,
41223,
47751,
54602,
61733,
69099,
76657,
84358,
92155,
100001
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
