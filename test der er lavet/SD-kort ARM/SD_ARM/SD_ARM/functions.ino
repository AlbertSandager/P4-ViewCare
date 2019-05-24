void SPIinit() {
  //SPI initializing
  SPI.setBitOrder(MSBFIRST); //MSB (most significant byte) first
  pinMode(ss, OUTPUT); // we use this for SS pin
  pinMode(cs, OUTPUT);
  SPI.setDataMode (SPI_MODE2);
  //SPI.setClockDivider(SPI_CLOCK_DIV32);
}


void sdWrite (int val) {
  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  SD.begin(cs);
  digitalWrite(cs, LOW);
  myFile = SD.open("data.txt", FILE_WRITE);

  // if the file opened okay, write to it:
  if (myFile) {
   // Serial.print("Writing to data.txt...");
    myFile.println(val);
    // close the file:
    myFile.close();
   // Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
   // Serial.println("error opening test.txt");
  }
  digitalWrite(cs, HIGH);
}

