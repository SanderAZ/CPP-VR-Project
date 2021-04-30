#include <Servo.h>
const byte numChars = 32;
int angle = 0;
char receivedChars[numChars];
Servo elbow, shoulder, bucket;

boolean newData = false;

void setup() {
    Serial.begin(9600);
    Serial.println("");
    elbow.attach(9);
    shoulder.attach(10);
    bucket.attach(11);
    elbow.write(0);
    shoulder.write(0);
    bucket.write(0);
}

void loop() {
    recvWithStartEndMarkers();
    //showNewData();
    if(newData == true){
      Serial.print("This just in ... ");
      Serial.println(receivedChars);
      String incoming = receivedChars;
      if(incoming.length() == 5 || incoming.length() == 4){
        if(incoming.substring(0, 1) == "e" || incoming.substring(0, 1) == "s" || incoming.substring(0, 1) == "b"){
          angle = incoming.substring(2).toInt();
          switch(receivedChars[0]){
            case 'e':
              elbow.write(angle);
              Serial.print("Elbow changed to");
              Serial.println(angle);
              break;
            case 's':
              shoulder.write(angle);
              Serial.print("Shoulder changed to");
              Serial.println(angle);
              break;
            case 'b':
              bucket.write(angle);
              Serial.print("Bucket changed to");
              Serial.println(angle);
              break;
          }
        }
        
      
      }
      Serial.println("");
      newData = false;
    }
}

void recvWithStartEndMarkers() {
    static boolean recvInProgress = false;
    static byte ndx = 0;
    char startMarker = '<';
    char endMarker = '>';
    char rc;

    while (Serial.available() > 0 && newData == false) {
        rc = Serial.read();

        if (recvInProgress == true) {
            if (rc != endMarker) {
                receivedChars[ndx] = rc;
                ndx++;
                if (ndx >= numChars) {
                    ndx = numChars - 1;
                }
            }
            else {
                receivedChars[ndx] = '\0'; // terminate the string
                recvInProgress = false;
                ndx = 0;
                newData = true;
            }
        }

        else if (rc == startMarker) {
            recvInProgress = true;
        }
    }
}

/*void showNewData() {
    if (newData == true) {
        Serial.print("This just in ... ");
        Serial.println(receivedChars);
        newData = false;
    }
}*/
