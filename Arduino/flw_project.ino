int SensorPin = A0; //analog pin 0
int SensorPin1 = A1; //analog pin 
int SensorPin2 = A2; //analog pin 

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
//   put your main code here, to run repeatedly:
  int SensorReading = analogRead(SensorPin);
  //int SensorReading1 = analogRead(SensorPin1);
  //int SensorReading2 = analogRead(SensorPin2);
  
  int mfsr_r18 = map(SensorReading, 0, 1024, 0, 255);
  //int mfsr_r19 = map(SensorReading1, 0, 1024, 0, 255);
  //int mfsr_r20 = map(SensorReading2, 0, 1024, 0, 255);
  
  if(mfsr_r18>20)
    Serial.println("1:push");
  /*if(mfsr_r19>20)
    Serial.println("2:push");
  if(mfsr_r20>20)
    Serial.println("3:push");
*/
  delay(1000);
}
