#define ANALOG_PIN 0

void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.println(analogRead(ANALOG_PIN));
}
