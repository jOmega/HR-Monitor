#define ANALOG_PIN 0

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  Serial.println(analogRead(ANALOG_PIN));
  Serial.println("BLINK");
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);                       // wait for a second
  Serial.println(analogRead(ANALOG_PIN));
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);
  Serial.println(analogRead(ANALOG_PIN));
}
