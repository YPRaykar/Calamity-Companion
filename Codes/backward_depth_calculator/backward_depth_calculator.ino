const int trigPin = 13;
const int echoPin = 12;

// defines variables
long duration;
int distance;
void setup() {
pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
pinMode(echoPin, INPUT); // Sets the echoPin as an Input
pinMode(3,OUTPUT);
pinMode(4,OUTPUT);
pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
pinMode(10,OUTPUT);
Serial.begin(9600); // Starts the serial communication
}
void loop() {
// Clears the trigPin
digitalWrite(trigPin, LOW);
delayMicroseconds(2);
// Sets the trigPin on HIGH state for 10 micro seconds  
digitalWrite(trigPin, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin, LOW);
// Reads the echoPin, returns the sound wave travel time in microseconds
duration = pulseIn(echoPin, HIGH);
// Calculating the distance
distance= duration*0.034/2;
// Prints the distance on the Serial Monitor
Serial.print("Distance: ");
if(distance > 800)
{
  distance =0;
}
Serial.println(distance);
digitalWrite(3, (distance & B00000001));
digitalWrite(4, (distance & B00000010));
digitalWrite(5, (distance & B00000100));
digitalWrite(6, (distance & B00001000));
digitalWrite(7, (distance & B00010000));
digitalWrite(8, (distance & B00100000));
digitalWrite(9, (distance & B01000000));
digitalWrite(10, (distance & B10000000));

delay(500);
}
