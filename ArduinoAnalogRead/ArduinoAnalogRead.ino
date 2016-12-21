String inputString = "";
boolean stringComplete = false;  // whether the string is complete


void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(A0,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  serialEvent();
  if (inputString == "m")
  {

   int data = analogRead(A0);
   Serial.println(data); 
  } 


  inputString = "";
}

void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read();
    // add it to the inputString:
    inputString += inChar;
    
    // if the incoming character is a newline, set a flag
    // so the main loop can do something about it:
    if (inChar == '\n') {
      stringComplete = true;
      
    }
  }
}
