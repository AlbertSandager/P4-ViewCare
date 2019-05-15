#include "SPI.h"
#include "ARM.h"

ARM arm;

byte kanal1 = 0x00;
byte kanal2 = 0x10;
byte kanal3 = 0x20;
byte kanal4 = 0x30;
byte kanal5 = 0x40;

void setup() {
  // put your setup code here, to run once:

  arm.konfig();


}

void loop() {
  // put your main code here, to run repeatedly:
 /* if (digitalRead(arm.trdy) == HIGH) {
    arm.Test_getData(kanal1);
  }
*/
  //Test af bitshift. 
  arm.Test_Bitshift_getData(kanal1);
  delay(6000);
}
