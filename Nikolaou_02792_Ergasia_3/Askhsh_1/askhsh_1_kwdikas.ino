#define LED1 2
#define LED3 4
#define LED4 5
#define LED5 6
#define SONIC_TRGR 13
#define SONIC_ECHO 12
#define RED 7
#define ORANGE 8 
#define GREEN 9
#define BUZZER 11
#define PIR 10
#define PIR_LED 3

/* START TIME */
struct time{
  size_t h;
  size_t m;
  size_t s;
};
struct time set_time(void); // set time to struct time
size_t get_hours(struct time const); // return h field of struct time
size_t get_minutes(struct time const); // return m field of struct time
size_t get_seconds(struct time const); // return s field of struct time
bool is_valid(struct time const); //is valid for distance sensor to enable
/* END TIME */

void toggle_5_leds(int const); // Usage: 0/LOW for off, 1/HIGH for on
void handle_photoresistor(void); // enables 5 leds if val>930, else shuts them off
int activate_sonic_sensor(size_t const); //parameter is activation in um
void handle_distance(int const);

struct time current_time = {0}; // no reason to = 0 but good practice

void handle_pir(void);

#define ENABLE_PHOTORESISTOR 1
#define ENABLE_ULTRASONIC 1
#define ENABLE_PIR 1

void setup()
{
  Serial.begin(9600);
  /* group of 5 leds */
  pinMode(LED1, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  /* init sonic sensor */
  pinMode(SONIC_TRGR, OUTPUT);
  pinMode(SONIC_ECHO, INPUT);
  /* init sonic sensor leds */
  pinMode(GREEN, OUTPUT);
  pinMode(ORANGE, OUTPUT);
  pinMode(RED, OUTPUT);
  /* set sonic sensor leds to low juust in case */
  digitalWrite(GREEN, 0);
  digitalWrite(ORANGE, 0);
  digitalWrite(RED, 0);
  /* set group of 5 leds to low */
  toggle_5_leds(0);
  
  digitalWrite(SONIC_TRGR, 0);
  #if ENABLE_ULTRASONIC
  	current_time = set_time(); // για να μην ρωταει καθε φορα την ωρα
  #endif //ENABLE_ULTRASONIC
  pinMode(BUZZER, OUTPUT);
  
  pinMode(PIR, INPUT);
  pinMode(PIR_LED, OUTPUT);
  analogWrite(PIR_LED, 0);
  
}

void loop(){
  // photoresistor
  #if ENABLE_PHOTORESISTOR
  	handle_photoresistor();
  #endif //ENABLE_PHOTORESISTOR
  
  // ultrasonic + piezo
  #if ENABLE_ULTRASONIC
  	if (is_valid(current_time)){ // is valid when [23:00:00,06:00:00]
   	 int dist = activate_sonic_sensor(10); // 10 microseconds pulse
   	 handle_distance(dist, false);
   	 // true flag είναι αρκετά ενωχλητικό διότι εμφανίζει μύνημα
   	 // κάθε φορα που αλλάζει η θέση του, και δεν είναι καν
   	 // ο σκοπώς του sensor αυτού
   	 //handle_distance(dist, true);
  	}
  #endif //ENABLE_ULTRASONIC
  
  // pir
  #if ENABLE_PIR
    handle_pir();
  #endif //ENABLE_PIR
}
struct time set_time(void){
  struct time ret;
  int x; // input
  
  // set hours + range check
  do{
  	Serial.println("Enter hours (0-23): ");
    while(Serial.available() == 0) { delay(300); } // infinite loop while nothing
  	x = Serial.parseInt();
  }while(x < 0 || x > 23);
  ret.h = x;
  
  // set minutes + range check
  do{
  	Serial.println("Enter minutes (0-59): ");
  	while(Serial.available() == 0) {delay(300);} // infinite loop while nothing
  	x = Serial.parseInt();
   }while(x < 0 || x > 59);
   ret.m = x;
  
  // set seconds + range check
  do{
  	Serial.println("Enter seconds (0-59): ");
    while(Serial.available() == 0) {delay(300);} // infinite loop while nothing
    x = Serial.parseInt();
  }while(x < 0 || x > 59);
  ret.s = x;
  
  char message[100];
  // tell user current time
  sprintf(message,
          "Time was set to: %02u:%02u:%02u\n",
          ret.h, ret.m, ret.s);
  Serial.print(message);
  
  // tell user if time is valid or not for proximity sensor
  if (is_valid(ret)){
   Serial.println("Time is in the 23:00:00--06:00:00 range.");
    Serial.println("Activating proximity seonsor.");
  }
  else{
    Serial.println("Time is not in the 23:00:00--06:00:00 range.");
    Serial.println("Proximity sensor will NOT be activated.");
  }
   return ret;  
}
size_t get_hours(struct time const t){ return t.h; }
size_t get_minutes(struct time const t){ return t.m; }
size_t get_seconds(struct time const t) { return t.s; }
bool is_valid(struct time const t){
 
  if (get_hours(t) < 23 && get_hours(t) > 6) { return false; }
  if (get_hours(t) == 6 && (get_minutes(t) > 0 || get_seconds(t) >0)) { return false; }
  return true;
 
}
void toggle_5_leds(int const t){
  	// LEDx = pin number + 1
   // τώρα που στο σκεύτωμαι η συνάρτηση θα μπορούσε να μην
  // δέχεται τίποτα και να κάνει όντως toggle κάθε φορά που
  // καλλείται
 	digitalWrite(LED1, t); 
  	digitalWrite(LED3, t);
  	digitalWrite(LED4, t);
  	digitalWrite(LED5, t);
}
void handle_photoresistor(void){
  int val = analogRead(A0);
  static bool on = false; //για να μην εκτυπώνει κάθε φορά
  						  //τα μυνήματα
  if (val < 930 && !on){
    // if it's dark and they're off, turn them on
    toggle_5_leds(1);
    Serial.println("Low light levels detected, powering on leds");
  	on = true;
  }
  else if (val >=930 && on){
    // if it's bright and they're on, turn them off
    toggle_5_leds(0);
    Serial.println("High light levels detected, powering off leds");
  	on = false;
  }
}
int activate_sonic_sensor(size_t const d){
 
  digitalWrite(SONIC_TRGR, 1);
  delayMicroseconds(d);
  digitalWrite(SONIC_TRGR, 0);
  double duration = pulseIn(SONIC_ECHO, 1);
  // scary magic
  int distance = duration * 0.034 / 2;
  return distance;
}
void handle_distance(int const d, bool const flag){
  
  // previous --> για να μην εκτυπώνει κάθε φορά μύνημα
  // select--> για να μην λεει οτι άλλαξε κάθε φορά το LED
  // tolerance--> και να μην άλλαζε η τιμή θα έμπαινε μέσα
  static int previous = 0;
  int const tolerance = 1;
  static int select[3] = {0};
  static int freqKHz = 0;
  if (abs(d-previous) > tolerance){
    previous = d;
    // Annoying message but may be useful
    if (flag) {Serial.println("Proximity sensor message: object changed place"); }
  	// Dangerous distance
    if (d<= 25 && select[0] == 0){
   	 digitalWrite(GREEN, 0);
   	 digitalWrite(ORANGE, 0);
   	 digitalWrite(RED, 1);
     Serial.println("Proximity sensor message: distance <=25");
     Serial.println("Proximity sensor message: Light: RED");
     freqKHz = 4000;
     select[0]=1;select[1]=0;select[2]=0;
   	}
    // Warning distance
  	if (d >= 25 && d <= 50 && select[1] == 0){
   	 digitalWrite(GREEN, 0);
   	 digitalWrite(ORANGE, 1);
   	 digitalWrite(RED, 0);
     Serial.println("Proximity sensor message: 25 <= distance <=50");
     Serial.println("Proximity sensor message: Light: ORANGE");
     freqKHz = 2000;
     select[0]=0;select[1]=1;select[2]=0;
  	}
    // Safe distance
  	if (d > 50 && select[2] == 0){
   	 digitalWrite(GREEN, 1);
   	 digitalWrite(ORANGE, 0);
   	 digitalWrite(RED, 0);
     Serial.println("Proximity sensor message: 50 < distance");
     Serial.println("Proximity sensor message: Light: GREEN");
     freqKHz = 1000;
     select[0]=0;select[1]=0;select[2]=1;
  	}
  }
  tone(BUZZER, freqKHz);
 
}

void handle_pir(void){
  // προηγουμενη κατασταση για να μην εμφανιζει μυνηματα καθε φορα
  static int PIR_STATE = 0;
  static int val = 0;
  static int brightness = 0;
  val = digitalRead(PIR);
  
  // if something moved
  if (val == 1){
    //switch on lights
    brightness = 255;
    analogWrite(PIR_LED, brightness);
    // if was off and now on, show msg
    if (PIR_STATE == 0) {
     Serial.println("PIR message: Motion detected!");
     PIR_STATE = 1;
    }
  }
  else {
    // slowly turn down the light
    brightness -= 5;
    // in case negative values
    if (brightness < 0) { brightness = 0;};
    analogWrite(PIR_LED, brightness);
    // if it was on and now off, show msg
    if (PIR_STATE == 1){
      Serial.println("PIR message: Motion stopped!");
      PIR_STATE = 0;
    }
  }
  delay(100);
}
