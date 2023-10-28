/* CODE IS UNDER THE LINCECE 
 * GNU Affero General Public License v3.0 or later
 * https://spdx.org/licenses/AGPL-3.0-or-later.html
 */

/* ΑΦΟΥ ΔΕΝ ΑΛΛΑΖΟΥΝ IN RUNTIME ΤΟΤΕ ΜΠΟΡΩ 
 * ΝΑ ΤΑ ΚΑΝΩ PREPROCESSOR MACROS ΚΑΙ ΕΤΣΙ
 * ΔΕΝ ΕΠΙΒΑΡΎΝΕΙ ΤΗΝ ΣΤΟΙΒΑ ΤΟΥ ARDUINO 
 */
#define GREEN_PERSON 2
#define RED_PERSON	 3

#define GREEN_CAR	 13
#define YELLOW_CAR	 12
#define RED_CAR		 11




void setup()
{
  Serial.begin(9600);
  /* Set X pin_number as output */
  pinMode(GREEN_PERSON, OUTPUT);
  pinMode(RED_PERSON, OUTPUT);
  
  pinMode(GREEN_CAR, OUTPUT);
  pinMode(YELLOW_CAR, OUTPUT);
  pinMode(RED_CAR, OUTPUT);
  
  /* set όλα 0 για να είναι πιο εύκολο αν είναι να αλλάξουμε την
   * σειρά με την οποία αρχίζουν να ανάβουν τα led
   */
  digitalWrite (GREEN_CAR, LOW);
  digitalWrite (YELLOW_CAR, LOW);
  
  digitalWrite (RED_CAR, LOW);
  digitalWrite (GREEN_PERSON, LOW);
  digitalWrite (RED_PERSON, LOW);
  
}

void loop()
{
  	String str;
 
  // δεν υπάρχει λογος να υπαρχει αυτο εδω, αφου ετσι παραμενει
  // πρασινο παραπανω ωρα
  
  //if (Serial.available() == 4){
   //	str = Serial.readString();
  //  str.toUpperCase();
    /* Η GOTO ΕΔΩ ΕΊΝΑΙ ΠΟΛΎ ΚΑΛΉ ΧΡΉΣΗ */
 //  if (str == "STOP"){
  //   Serial.println("----------------------------------------------");
//	 Serial.println("STOP button pressed.\nEnabling green light for people.");
//goto green_label;
//}
//  }
 // else {
//   	str = Serial.readString(); // clean σκουπίδια
//  }
  


  	/* πράσινο φανάρι */
  // init
  digitalWrite (RED_CAR, LOW);
  digitalWrite (YELLOW_CAR, LOW);
  digitalWrite (GREEN_PERSON, LOW);
  // set
  digitalWrite (GREEN_CAR, HIGH);
  digitalWrite (RED_PERSON, HIGH);
  Serial.println("----------------------------------------------");
  Serial.println("Green light for cars.\nRed light for people.");
  
  // 5 δευτερόλεπτα
  // check κάθε δευτερόλεπτο αν "πάτησε" stop
  // δεν 8α ασχοληθώ με το indenting, αφού το tinkercad το χαλάει
  for (size_t i = 0; i < 5; ++i){
   Serial.print(i+1);
    Serial.println("/5 Seconds passed before changing");
  if (Serial.available() == 4){
   	str = Serial.readString();
    str.toUpperCase(); 
    
   if (str == "STOP"){
     Serial.println("----------------------------------------------");
	 Serial.println("STOP button pressed.\nEnabling green light for people.");
     goto green_label;
    }
  
  }
  else {
   	str = Serial.readString();
  }
     delay(1000);
  }
  	/* κίτρινο φανάρι */
  // init
  digitalWrite (RED_CAR, LOW);
  digitalWrite (GREEN_CAR, LOW);
  digitalWrite (GREEN_PERSON, LOW);
  // set
  digitalWrite (YELLOW_CAR, HIGH);
  digitalWrite (RED_PERSON, HIGH);
  Serial.println("----------------------------------------------");
  Serial.println("Yellow light for cars.\nRed light for people.");
  
  // 2 seconds delay
  // check every second for stop
  for (size_t i = 0; i < 2; ++i){
    Serial.print(i+1);
    Serial.println("/2 Seconds passed before changing");
  if (Serial.available() == 4){
   	str = Serial.readString();
    str.toUpperCase(); 
    
   if (str == "STOP"){
     Serial.println("----------------------------------------------");
	 Serial.println("STOP button pressed.\nEnabling green light for people.");
     goto green_label;
    }
  
  }
  else {
   	str = Serial.readString();
  }
      delay(1000);
  }
  
  
  green_label:
    /* κόκκινο φανάρι */
  // init
  digitalWrite (RED_PERSON, LOW);
  digitalWrite (YELLOW_CAR, LOW);
  digitalWrite (GREEN_CAR, LOW);
  // set
  digitalWrite (RED_CAR, HIGH);
  digitalWrite (GREEN_PERSON, HIGH);
  Serial.println("----------------------------------------------");
  Serial.println("Red light for cars.\nGreen light for people.");
  // 7 seconds
  // δυστυχώς αυτά τα 7 δευτερόλεπτα είναι πιο γρήγωρα από τα 
  // άλλα, αφού για το Arduino όλο το if serial available κτλ
  // ειναι χρονοβορο
  for (size_t i = 0; i < 7; ++i){
   	  Serial.print(i+1);
    Serial.println("/7 Seconds passed before changing"); 
    delay(1000);
  }
  
  
}


