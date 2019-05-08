#include "SPI.h" // necessary library

int ss = 10; // using digital pin 10 for SPI slave select¨





void setup() {
  Serial.begin(115200);
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  pinMode(3, INPUT_PULLUP);
  SPI.setDataMode (SPI_MODE2);
  //SPI.setClockDivider(SPI_CLOCK_DIV32);

}
// definering af kanaler 
byte kanal1 = 0x00; 
byte kanal2 = 0x00;
byte kanal3 = 0x00;
byte kanal4 = 0x00;

int receivedVal;
int error = 0;

byte bit24val[3];

long sendVal = 0;


void convertLong2bit24vector(long val)
{
  for (int i = 0; i < 3 ; i++) {
    bit24val[i] = lowByte(val);
    val = val >> 8;
  }
}



long getData(byte kanal)
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

void loop() {


  convertLong2bit24vector(sendVal);

  digitalWrite(ss, LOW);

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
