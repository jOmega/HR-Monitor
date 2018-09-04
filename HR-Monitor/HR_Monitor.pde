import processing.serial.*;

int SERIAL_PORT = 0;
int FPS = 30;

Serial serialPort;

void setup(){
  serialPort = new Serial(this, Serial.list()[SERIAL_PORT], 9600);
  printArray(Serial.list());
  
  size(800, 400);
  background(0);
}

void serialEvent(Serial serialPort){
  
}

void draw(){
}
