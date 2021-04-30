

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);


}

void loop() {
  // put your main code here, to run repeatedly:
  //if (Serial.read()!= NULL)
  /*if (Serial.available() > 1){
     digitalWrite(LED_BUILTIN, HIGH);
     delay(100);
     digitalWrite(LED_BUILTIN, LOW);
     delay(100);
  }*/
  if (Serial.available() > 0)
  {
      Serial.write(Serial.read());
  }

}
