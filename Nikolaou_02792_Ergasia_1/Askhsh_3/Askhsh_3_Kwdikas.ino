/* CODE IS UNDER THE LINCECE 
 * GNU Affero General Public License v3.0 or later
 * https://spdx.org/licenses/AGPL-3.0-or-later.html
 */



#define green	3
#define fade	5


void setup (){
  Serial.begin(9600);
  
}

void loop (){
  // get rand and write to led
 size_t rand_n = random(0, 256); // (x,y) x inclusive, y exclusive????
 analogWrite(green, rand_n);
  // output raw and % values
 Serial.println("-------------------------------");
  
  // εκτύπωση raw value φωτεινότητας
 Serial.print("Current brightness (raw value): ");
 Serial.println(rand_n);

  // εκτύπωση % φωτεινότητας
  Serial.print("Current brightness........ (\%): ");
   // int / int == floor(int);
  // int / f32/f64/f128 = f32/64/128
 Serial.print (rand_n / 255.0 * 100);
 Serial.println ("\%");
  // arbitrary delay time
 delay(1000);
}