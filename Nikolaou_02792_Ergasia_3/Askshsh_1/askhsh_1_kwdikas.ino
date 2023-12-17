#define LED1 2
#define LED2 3
#define LED3 4
#define LED4 5
#define LED5 6
#define SONIC_TRGR 12
#define SONIC_ECHO 13
#define RED 7
#define ORANGE 8 
#define GREEN 9

/* START TIME */
struct time{
  size_t h;
  size_t m;
  size_t s;
};
struct time set_time(void);
size_t get_hours(struct time);
size_t get_minutes(struct time);
size_t get_seconds(struct time);
bool is_valid(struct time); //is valid for distance sensor to enable
/* END TIME */

void toggle_5_leds(int ); // Usage: 0/LOW for off, 1/HIGH for on
void handle_photoresistor(void);
struct time current_time;
double activate_sonic_sensor(size_t ); //parameter is activation in um
void handle_distance(size_t d);
void setup()
{
  Serial.begin(9600);
  /* group of 5 leds */
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
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
  current_time = set_time();
}

void loop(){
  handle_photoresistor();
  // σε κανονική υλοιποιήση το current_time θα αυξανλωταν
  if (is_valid(current_time)){ // is valid when [23:00:00,06:00:00]
    double dist = activate_sonic_sensor(10); // 10 microseconds pulse
    handle_distance(dist);
  }
}
struct time set_time(void){
  struct time ret;
  int x;
  do{
  	Serial.println("Enter hours (0-23): ");
    while(Serial.available() == 0) { delay(300); } // infinite loop while nothing
  		 x = Serial.parseInt();
  	
  }
   while(x < 0 || x > 23);
   ret.h = x;
    do{
  	Serial.println("Enter minutes (0-59): ");
      while(Serial.available() == 0) {delay(300);} // infinite loop while nothing
  		 x = Serial.parseInt();
    }
   while(x < 0 || x > 59);
   ret.m = x;
    do{
  	Serial.println("Enter seconds (0-59): ");
      while(Serial.available() == 0) {delay(300);} // infinite loop while nothing
  		 x = Serial.parseInt();
    }
   while(x < 0 || x > 59);
   ret.s = x;
   return ret;  
}
size_t get_hours(struct time t){ return t.h; }
size_t get_minutes(struct time t){ return t.m; }
size_t get_seconds(struct time t) { return t.s; }
bool is_valid(struct time t){
 
  if (get_hours(t) < 23 && get_hours(t) > 6) { return false; }
  if (get_hours(t) == 6 && (get_minutes(t) > 0 || get_seconds(t) >0)) { return false; }
  return true;
 
}
void toggle_5_leds(int t){
  	// LEDx = pin number + 1
 	digitalWrite(LED1, t); 
  	digitalWrite(LED2, t);
  	digitalWrite(LED3, t);
  	digitalWrite(LED4, t);
  	digitalWrite(LED5, t);
}
void handle_photoresistor(void){
  int val = analogRead(A0);
  static bool on = false; //για να μην εκτυπώνει κάθε φορά
  						  //τα μυνήματα
  if (val < 930 && !on){
    toggle_5_leds(1);
    Serial.println("Low light levels detected, powering on leds\n");
  	on = true;
  }
  else if (val >=930 && on){
    toggle_5_leds(0);
    Serial.println("High light levels detected, powering off leds\n");
  	on = false;
  }
}
double activate_sonic_sensor(size_t d){
 
  digitalWrite(SONIC_TRGR, 1);
  delayMicroseconds(d);
  digitalWrite(SONIC_TRGR, 0);
  double duration = pulseIn(SONIC_ECHO, 1);
  double distance = duration * 0.034 / 2;
  return distance;
}
void handle_distance(double d){
  if (d<= 25){
   	digitalWrite(GREEN, 0);
    digitalWrite(ORANGE, 0);
    digitalWrite(RED, 1);
  }
  if (d >= 25 && d <= 50){
    digitalWrite(GREEN, 0);
    digitalWrite(ORANGE, 1);
    digitalWrite(RED, 0);
  }
  if (d > 50){
    digitalWrite(GREEN, 1);
    digitalWrite(ORANGE, 0);
    digitalWrite(RED, 0);
  }
  //Serial.println(d);
  //διότι αριθμιτική με floating point numbers δεν είναι ακριβές, τότε
  // το distance μεταβλητή != distance πραγματικής ζοής/προσομοίωσης
  // (πέρα και από την μετατροπή duration-->distance και το % λάθος 
  // του αισ8ιτήρα
}