import processing.serial.*;

int PORT_NUMBER = 3;
int FPS = 25;

int xCoord = 1;
float previousHeartRateHeight = 0;

Serial serialPort;

void setup(){
  size(600, 400);
  frameRate(25);
  
  stroke(0, 255, 0);
  background(0);
  
  printArray(Serial.list());
  serialPort = new Serial(this, Serial.list()[PORT_NUMBER], 9600);
}

void draw(){
}

void serialEvent(Serial serialPort){
  String newValue = serialPort.readStringUntil('\n');
  
  if (newValue != null){
    int currentHeartRateReading = trim(newValue);
    println(currentHeartRateReading);
    
    float currentHeartRateHeight = map(currentHeartRateReading, 0, 1023, 0, height);
    
    line(xCoord - 1, height - previousHeartRateHeight, xCoord, height - currentHeartRateHeight);
    previousHeartRateHeight = currentHeartRateHeight;
    
    if (xCoord >= width){
      xCoord = 0;
      background(0);
    }
  }
  
  else {
    xCoord++;
  }
}
