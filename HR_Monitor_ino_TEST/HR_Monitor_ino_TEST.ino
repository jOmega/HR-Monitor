#define ANALOG_PIN 0

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  Serial.println(analogRead(ANALOG_PIN));
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  Serial.println(analogRead(ANALOG_PIN));
  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
  Serial.println(analogRead(ANALOG_PIN));
}
