#include "SPI.h"
#include "ARM.h"

ARM arm;

byte kanal1 = 00;
byte kanal2 = 16;
byte kanal3 = 32;
byte kanal4 = 0x30;
byte kanal5 = 0x40;

long kanal1rec;
long kanal2rec;
long kanal3rec;

void setup() {
  // put your setup code here, to run once:

  arm.konfig();


}

void loop() {
  // Modtag vha. følgende if statement:

    //Tjek om der er et sample klar fra EKG
  if (digitalRead(arm.EKG_ready) == HIGH && arm.EKG_ready_bool == true) {
    kanal1rec=arm.getData(kanal1);
    arm.EKG_ready_bool = false;
  }
  //Tjek om der er et sample klar fra LYD_R
  if (digitalRead(arm.LYD_ready_R) == HIGH && arm.LYD_ready_R_bool == true) {
    kanal2rec=arm.getData(kanal2);
    arm.LYD_ready_R_bool = false;
  }
  //Tjek om der er et sample klar fra LYD_L
  if (digitalRead(arm.LYD_ready_L) == HIGH && arm.LYD_ready_L_bool == true) {
    kanal3rec=arm.getData(kanal3);
    arm.LYD_ready_L_bool = false;
  }


  // Bruges til at fejlsikre mod dobbelt afsendelse af samples.
  if (digitalRead(arm.LYD_ready_R) == LOW) {
    arm.LYD_ready_R_bool = true;
  }

  if (digitalRead(arm.LYD_ready_L) == LOW) {
    arm.LYD_ready_L_bool = true;
  }

  if (digitalRead(arm.EKG_ready) == LOW)  {
    arm.EKG_ready_bool = true;
  }
//delay(1);

//Serial.print("Kanal1:"); Serial.println(kanal1rec);
//Serial.print("Kanal2:"); Serial.println(kanal2rec);
//Serial.print("Kanal3:"); Serial.println(kanal3rec);

  //Test af bitshift.
  //arm.Test_Bitshift_getData(kanal1);

  //Test af convertLong2bit24Vector:
  //arm.Test_convertLong2bit24vector(2176812);
  //delay(6000);
}
