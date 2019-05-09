#include "SPI.h" // necessary library
int ss = 10; // using digital pin 10 for SPI slave select


void setup() {
  
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  SPI.setDataMode (SPI_MODE2);
  pinMode(3, INPUT_PULLUP);
  //SPI.setClockDivider(SPI_CLOCK_DIV4);

}

unsigned char kanal1[3];
unsigned char startWord[3];


int counter =1;

struct kanal1 {
  unsigned int bit1 :1;
  unsigned int bit2 :1;
  unsigned int bit3 :1;
  unsigned int bit4 :1;
  unsigned int bit5 :1;
  unsigned int bit6 :1;
  unsigned int bit7 :1;
  unsigned int bit8 :1;
  unsigned int bit9 :1;
  unsigned int bit10 :1;
  unsigned int bit11 :1;
  unsigned int bit12 :1;
  unsigned int bit13 :1;
  unsigned int bit14 :1;
  unsigned int bit15 :1;
  unsigned int bit16 :1;
  unsigned int bit17 :1;
  unsigned int bit18 :1;
  unsigned int bit19 :1;
  unsigned int bit20 :1;
  unsigned int bit21 :1;
  unsigned int bit22 :1;
  unsigned int bit23 :1;
  unsigned int bit24 :1;
};

void loop() {
  if(counter ==1) 
  {
   // 65591
   kanal1[0]=5;
   kanal1[1]=0;
   kanal1[2]=55;
   startWord[0]=0;
   startWord[1]=0;
   startWord[2]=0;
  }

  digitalWrite(ss, LOW);

    SPI.transfer(0); // send command byte
   SPI.transfer(16);
   SPI.transfer(5);
  //  SPI.transfer(0);
   // SPI.transfer(kanal1,3);
   // delayMicroseconds(1);
  //SPI.transfer(startOrd);
  
  //SPI.transfer(startWord,3);
 // SPI.transfer(0); // send command byte
  //SPI.transfer(0); // send command byte
// kanal1 --65591
  
  
 // SPI.transfer(55); // send value (0~255)
 // SPI.transfer(0);
 // SPI.transfer(55);


  
  digitalWrite(ss, HIGH);

  delay(100);


    //digitalWrite(ss, LOW);

    //SPI.transfer(0); // send command byte

  //  SPI.transfer(0);
   // SPI.transfer(kanal1,3);
    //delayMicroseconds(1);
  //SPI.transfer(startOrd);
  
  //SPI.transfer(startWord,3);
 // SPI.transfer(0); // send command byte
  //SPI.transfer(0); // send command byte
// kanal1 --65591
  
  
 // SPI.transfer(55); // send value (0~255)
 // SPI.transfer(0);
 // SPI.transfer(55);


  
  //digitalWrite(ss, HIGH);

  //delay(100);

}
