import processing.serial.*;

int SERIAL_PORT = 0;
int FPS = 30;

float oldReading = 0;
float newReading = 0;
int xCoord = 0;

Serial serialPort;

void setup(){
  serialPort = new Serial(this, Serial.list()[SERIAL_PORT], 9600);
  printArray(Serial.list());
  
  size(800, 400);
  background(0);
  frameRate(FPS);
}

void serialEvent(Serial serialPort){
  String serialReading = serialPort.readStringUntil('\n');
  
  if (serialReading == null){
    background(0);
    xCoord++;
  }
  
  else {
    newReading = float(trim(serialReading));
    println(newReading);
    
    float pulseHeight = map(newReading, 0, 1023, 0, 400);
    stroke(0, 225, 0);
    line(xCoord - 1, height - oldReading, xCoord, height - pulseHeight);
    oldReading = newReading;
    
    if (xCoord >= 700){
      xCoord = 0;
    }
    
    xCoord++;
  }
  
}

void draw(){
}
