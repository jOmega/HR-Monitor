#define ANALOG_PIN 0

void setup() {
  Serial.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  Serial.println(analogRead(ANALOG_PIN));
  delay(1000);
  Serial.println(analogRead(ANALOG_PIN));
  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}
