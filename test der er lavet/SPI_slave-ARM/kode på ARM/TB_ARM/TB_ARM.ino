#include "SPI.h"
#include "ARM.h"

ARM arm;

byte kanal1 = 0x00;
byte kanal2 = 0x10;
byte kanal3 = 0x20;
byte kanal4 = 0x30;
byte kanal5 = 0x40;

long received=0;
int errors=0;

void setup() {
  // put your setup code here, to run once:

  arm.konfig();


}

void loop() {
  // put your main code here, to run repeatedly:
    
    received=arm.getData(kanal1);
    if(received!=13290090){
      errors++;
      Serial.print("Errors:");
      Serial.println(errors);
    }
}
