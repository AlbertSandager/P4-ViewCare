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
byte kanal2 = 0x10;
byte kanal3 = 0x20;
byte kanal4 = 0x30;
byte kanal5 = 0x40;
int receivedVal;
int error = 0;

byte bit24val[3];

long sendVal = 8388608;


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
  
  bit24val[0]=0;
  bit24val[1]=0;
  bit24val[2]=0;
  
  convertLong2bit24vector(sendVal);





 // Serial.print("Sendval convert:  "); Serial.print(sendVal); Serial.print(" to "); Serial.println(bit24val[0]);Serial.println(bit24val[1]);Serial.println(bit24val[2]);
  Serial.println("kanal1");
  receivedVal = getData(kanal1);
  Serial.println(receivedVal); 
  delay(3000);
  Serial.println("kanal2");
  getData(kanal2); 
  delay(3000);
  Serial.println("kanal3");
  getData(kanal3); 
  delay(3000);

  if (receivedVal != 5) {
    error++;
  }


}
