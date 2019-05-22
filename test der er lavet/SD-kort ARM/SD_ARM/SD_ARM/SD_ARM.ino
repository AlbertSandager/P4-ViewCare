#include "SPI.h" // necessary library
#include <SD.h>


File myFile;

//Global variables
 
long receivedVal1; //byte to hold received val

long receivedVal2;

long receivedVal3;

long receivedVal4;

unsigned long Tstart1; 
unsigned long Tcurrent1;

unsigned long Tstart2; 
unsigned long Tcurrent2;

unsigned long Tstart3; 
unsigned long Tcurrent3;

unsigned long Tstart4; 
unsigned long Tcurrent4;

int i; 

int cs = 9;
int ss = 8;
void setup() {

  Serial.begin(115200);
  receivedVal1 = 10;
  receivedVal2 = 200;
  receivedVal3 = 369;
  receivedVal4 = 856;

  Serial.println(receivedVal1);
  Serial.println(receivedVal2);
  Serial.println(receivedVal3);
  Serial.println(receivedVal4);

  i=0;
  Tstart1 = millis();
  while(i<100){
  sdWrite(receivedVal1);
  i++;
  }
  Tcurrent1 = millis();
  Serial.println(Tstart1);
  Serial.println(Tcurrent1);
  
  i=0;
  Tstart2 = millis();
  while(i<100){
  sdWrite(receivedVal2);
  i++;
  }
  Tcurrent2 = millis();
  Serial.println(Tstart2);
  Serial.println(Tcurrent2);
  i=0;
  Tstart3 = millis();
  while(i<100){
  sdWrite(receivedVal3);
  i++;
  }
  Tcurrent3 = millis();
  Serial.println(Tstart3);
  Serial.println(Tcurrent3);
  i=0;
  Tstart4 = millis();
  while(i<100){
  sdWrite(receivedVal4);
  i++;
  }
  Tcurrent4 = millis();
  Serial.println(Tstart4);
  Serial.println(Tcurrent4);
}
void loop() {
}
