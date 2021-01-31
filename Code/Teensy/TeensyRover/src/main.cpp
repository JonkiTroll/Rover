#include <Arduino.h>

#define Resolution  12

#define CALIBRATION 0

static float integerResolution = 4095; //2^Resolution-1
//static float dutyCycle = 0.2;

const byte numChars = 32;
char serialBuffer[32];

bool newData = false;

void setupMotor()
{

    analogWrite(9, (int) (0.24*integerResolution));
    delay(10000);
    analogWrite(9, (int) (0.13*integerResolution));
    delay(10000);
}

void recvWithEndMarker() {
    static byte ndx = 0;
    char endMarker = '\n';
    char rc;

    // if (Serial.available() > 0) {
    while (Serial.available() > 0 && newData == false) {
        rc = Serial.read();

        if (rc != endMarker) {
            serialBuffer[ndx] = rc;
            ndx++;
            if (ndx >= numChars) {
                ndx = numChars - 1;
            }
        }
        else {
            serialBuffer[ndx] = '\0'; // terminate the string
            ndx = 0;
            newData = true;
        }
    }
}

void showNewData() {
    if (newData == true) {
        Serial.print("This just in ... ");
        Serial.println(serialBuffer);
        newData = false;
    }
}


void setup() {
// write your initialization code here
    analogWriteFrequency(9, 1000);
    analogWriteResolution(Resolution);

    Serial.begin(115200);

    while(!digitalRead(1));
    recvWithEndMarker();

    showNewData();
    //setupMotor();


}

void loop() {
// write your code here

}