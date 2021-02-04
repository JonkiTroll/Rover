#include <Arduino.h>

#define Resolution  12

static float integerResolution = 4095; //2^Resolution-1
//static float dutyCycle = 0.2;

const byte numChars = 32;
char serialBuffer[32];
bool newData = false;

int speedWheel0, speedWheel1;

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
    while (Serial1.available() > 0 && !newData) {
        rc = Serial1.read();

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
        Serial1.print("This just in ... ");
        Serial1.println(serialBuffer);
    }
}


void setup() {
// write your initialization code here
    analogWriteFrequency(9, 1000);
    analogWriteResolution(Resolution);

    Serial1.begin(115200);

    //setupMotor();


}

void loop() {
// write your code here

recvWithEndMarker();
//TODO: Convert the value received from RPI to a PWM readable format.
if(newData) {
    showNewData();
    speedWheel0 = (uint8_t) serialBuffer[0];
    speedWheel1 = (uint8_t) serialBuffer[1];

    if(speedWheel0 < 4095 && speedWheel0 > 0) {

        analogWrite(9, speedWheel0);
    }
    newData = false;
}

}