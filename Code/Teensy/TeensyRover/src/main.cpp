#include <Arduino.h>

#define Resolution  12

static float integerResolution = 4095; //2^Resolution-1
//static float dutyCycle = 0.2;

const byte numChars = 32;
char serialBuffer[32];
bool newData = false;

int speedWheel0, speedWheel1, pwm_value;

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
        Serial.print("This just in ... ");
        Serial.println(serialBuffer);
    }
}


void setup() {
// write your initialization code here
    analogWriteFrequency(9, 1000);
    analogWriteResolution(Resolution);

    Serial.begin(115200);

    Serial1.setRX(0);

    Serial1.begin(57600);

    //setupMotor();

    analogWrite(9, (int) (0.13*integerResolution));

}

void loop() {
// write your code here

recvWithEndMarker();
//TODO: Convert the value received from RPI to a PWM readable format.

if(newData) {
    showNewData();
    //speedWheel0 = (uint8_t) serialBuffer[0];
    //speedWheel1 = (uint8_t) serialBuffer[1];

    speedWheel0 = atoi(serialBuffer);
    Serial.printf("Speed: %i\n", speedWheel0);
    //0 = 0, 100 = 4095
    //We want 0 = 13, 100 = 24
    //(13/100)*4095 = 532
    //(24/100)*4095 = 983
    if(speedWheel0 <= 100 && speedWheel0 > 0) {
        pwm_value = 532+(speedWheel0*(983-532))/100;
        analogWrite(9, pwm_value);
    } else if (speedWheel0 == 0){
        //Turn off pwm if something is funky
        //analogWrite(9, 0);
    }

    for(int n = 0; n < 32; n++){
        serialBuffer[n] = '0';
    }

    newData = false;
}

}