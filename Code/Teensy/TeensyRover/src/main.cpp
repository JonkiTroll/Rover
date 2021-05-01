#include <Arduino.h>

#define Resolution  12
#define PWMPinRightWheel     9
#define PWMPinLeftWheel     5

static float integerResolution = 4095; //2^Resolution-1
//static float dutyCycle = 0.2;

const byte numChars = 32;
char serialBuffer[8], SpeedBuffer[4];
bool newData = false;

int speedWheel0, speedWheel1, pwm_value;

void setupMotor()
{

    analogWrite(PWMPinRightWheel, (int) (0.24*integerResolution));
    analogWrite(PWMPinLeftWheel, (int) (0.24*integerResolution));
    delay(12000);
    analogWrite(PWMPinRightWheel, (int) (0.13*integerResolution));
    analogWrite(PWMPinLeftWheel, (int) (0.13*integerResolution));
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
    if (newData) {
        Serial.print("This just in ... ");
        Serial.println(serialBuffer);
    }
}

int ConvertToPWM(const int pin, int speed)
{

    //0 = 0, 100 = 4095
    //We want 0 = 13, 100 = 24
    //(13/100)*4095 = 532
    //(24/100)*4095 = 983
    if(speed <= 100 && speed > 0) {
        pwm_value = 532+(speed*(983-532))/100;
        analogWrite(pin, pwm_value);
        return 1;
    } else if (speed == 0){
        //Turn off pwm if something is funky
        analogWrite(PWMPinRightWheel, 0);
        analogWrite(PWMPinLeftWheel, 0);
    }
    return 0;
}


//char buffer[3];

void setup() {
// write your initialization code here
    analogWriteFrequency(PWMPinRightWheel, 1000);
    analogWriteFrequency(PWMPinLeftWheel, 1000);
    analogWriteResolution(Resolution);

    Serial.begin(115200);

    Serial1.setRX(0);

    //Serial1.setTX(1);

    Serial1.begin(57600);
/*
    buffer[0] = '7';
    buffer[1] = '5';
    buffer[2] = '\n';
*/
    //setupMotor();

    //analogWrite(9, (int) (0.13*integerResolution));
}


void loop() {
// write your code here
/*
    Serial1.write((uint8_t*) buffer, sizeof(buffer));
    delay(200);
*/

recvWithEndMarker(); //MUNA EFTIR '\n'!!!!!
if(newData) {
    if (serialBuffer[0] == 's' && serialBuffer[4] == 'p' )
    {
        setupMotor();
    }
    else {
        showNewData();


        //speedWheel0 = (uint8_t) serialBuffer[0];
        //speedWheel1 = (uint8_t) serialBuffer[1];

        SpeedBuffer[0] = serialBuffer[0];
        SpeedBuffer[1] = serialBuffer[1];
        SpeedBuffer[2] = '\0';

        speedWheel0 = atoi(SpeedBuffer);


        SpeedBuffer[0] = serialBuffer[3];
        SpeedBuffer[1] = serialBuffer[4];

        speedWheel1 = atoi(SpeedBuffer);


        if (!ConvertToPWM(PWMPinRightWheel, speedWheel0)) {
            //Something Error


        }

        if (!ConvertToPWM(PWMPinLeftWheel, speedWheel1)) {
            //Something Error
        }
    }

        for (uint8_t n = 0; n < sizeof(serialBuffer); n++) {
            serialBuffer[n] = '0';
        }
    newData = false;
}

}