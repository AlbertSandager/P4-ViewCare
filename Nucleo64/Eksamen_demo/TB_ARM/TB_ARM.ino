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
long recdata1[80];
long recdata2[80];
long recdata3[80];
bool newdata = false;
int i = 0;
int j = 0;
int k = 0;
void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  digitalWrite(2, LOW);

  arm.konfig();


}

void loop() {
  // Modtag vha. følgende if statement:

  //Tjek om der er et sample klar fra EKG
  if (digitalRead(arm.EKG_ready) == HIGH && arm.EKG_ready_bool == true) {
    recdata1[i] = arm.getData(kanal1);
    arm.EKG_ready_bool = false;
    if (i < 79) {
      i++;
    }
  }

  //Tjek om der er et sample klar fra LYD_R
  if (digitalRead(arm.LYD_ready_R) == HIGH && arm.LYD_ready_R_bool == true) {
    recdata2[j] = arm.getData(kanal2);
    arm.LYD_ready_R_bool = false;
    if (j < 79) {
      j++;
    }
  }
  //Tjek om der er et sample klar fra LYD_L
  if (digitalRead(arm.LYD_ready_L) == HIGH && arm.LYD_ready_L_bool == true) {
    recdata3[k] = arm.getData(kanal3);
    arm.LYD_ready_L_bool = false;

    if (k < 79) {
      k++;
    }

  }



  if (i == 79 ) {
    Serial.println("New data");
    for (int a = 0; a < 80; a++) {
      Serial.println(recdata1[a]);
    }
    i = 0;

    delay(5000);
  }



  if (digitalRead(arm.EKG_ready) == LOW)  {
    arm.EKG_ready_bool = true;
    newdata = false;
    //Serial.println(kanal1rec);
  }


  // Bruges til at fejlsikre mod dobbelt afsendelse af samples.
  if (digitalRead(arm.LYD_ready_R) == LOW) {
    arm.LYD_ready_R_bool = true;
  }

  if (digitalRead(arm.LYD_ready_L) == LOW) {
    arm.LYD_ready_L_bool = true;
  }



  //Test af bitshift.
  //arm.Test_Bitshift_getData(kanal1);

  //Test af convertLong2bit24Vector:
  //arm.Test_convertLong2bit24vector(2176812);
  //delay(6000);
}
