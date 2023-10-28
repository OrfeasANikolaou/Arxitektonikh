/* CODE IS UNDER THE LINCECE 
 * GNU Affero General Public License v3.0 or later
 * https://spdx.org/licenses/AGPL-3.0-or-later.html
 */
#define btn_1 2
#define btn_2 3
#define btn_3 4


#define led_fail 5 // red led
#define led_pass 6 // green led


// ΣΩΣΤΟΣ ΣΥΝΔΥΑΣΜΟΣ: BUTTON_1 --> BUTTON_2 --> BUTTON_3;
// ΑΠΌ ΔΕΞΣΙΑ ΠΡΩΣ ΤΑ ΑΡΙΣΤΕΡΆ ΣΤΟ ΔΙΆΓΡΑΜΜΑ

void setup()
{
  // init pins
  pinMode(btn_1, INPUT);
  pinMode(btn_2, INPUT);
  pinMode(btn_3, INPUT);
  
  pinMode(led_fail, OUTPUT);
  pinMode(led_pass, OUTPUT);


  Serial.begin(9600);
}

void loop()
{
  // digitalRead () επσιτρέφει την τιμή 0 ή 1, άρα παίζω με
  // αυτό για τα if
  

  // αν λάθος συνδιασμός έρχεται εδώ
  wops_wrong_password:
 
  // set colors
 digitalWrite(led_pass, LOW);
 digitalWrite(led_fail, HIGH);
  
  
  // κοιτάει αν πατήθηκε το 1ο κουμπί με την σωστή σειρά
  // delay επειδή καποιες φορες το μετράει και για το επόμενο
  // και ποτέ δεν μοθ εβγαλε λάθος με 400ms
  // και έτσι ο χρήστης δεν θα πρέπει να περιμένει και πολύ
  delay(400);
  while (1){
    // αν πατήθηκε το σωστό κουμπί πάει στην επόμενη κατάσταση
    if ( digitalRead (btn_1) ) break;
    // αλλιώς στην αρχή
    // (αυτό θα ήταν ωραίο πρόβλημα με automata στα
    // διακριτά μαθηματικά τώρα που το σκεύτωμαι)
	else if ( digitalRead (btn_2) ||
              digitalRead (btn_3) ){ 
      Serial.println("Woops! Wrong password!");  
      goto wops_wrong_password;
    }
  }


  // κοιτάει αν πατήθηκε το 2ο κουμπί με την σωστή σειρά
  delay(400);
  while (1){
    if ( digitalRead (btn_2) ) break;
    else if ( digitalRead (btn_1) ||
              digitalRead (btn_3) ){
      Serial.println("Woops! Wrong password!");  
      goto wops_wrong_password;
    }
  }

  // κοιτάει αν πατήθηκε το 3ο κουμπί με την σωστή σειρά
  delay(400);
  while (1){
    if ( digitalRead (btn_3) ) break;
    else if ( digitalRead (btn_1) ||
              digitalRead (btn_2) ) {
      Serial.println("Woops! Wrong password!");  
      goto wops_wrong_password;
    }
  }
 
  // CORRECT !!!!!!!!!!
 digitalWrite(led_pass, HIGH);
 digitalWrite(led_fail, LOW);
 Serial.println("You entered the correct password!");
 
  // but not for long...
 delay(10000);
 Serial.println("Entering fail state again...");
 
  
}