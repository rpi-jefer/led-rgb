/*
Control de un Led RGB, a través de Internet
Concetado a Arduino.
Controlado por Processing
Montado en Raspberry Pi.
Desarrollado Por: Jefferson Rivera Patiño
riverajefer.blogspot.com
*/
 
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

Serial port;

int led_blue=9;
int led_green=10;
int led_red=11;
int val1,val2,val3=0;
void setup() {
    size(400,400);
    arduino = new Arduino(this, Arduino.list()[0], 57600); //comunicación entre Arduino y Processing     
    arduino.pinMode(led_blue, Arduino.OUTPUT);
    arduino.pinMode(led_green, Arduino.OUTPUT);
    arduino.pinMode(led_red, Arduino.OUTPUT);    
}
 void draw() {
  String entrada1[] = loadStrings("http://localhost/led_rgb/red.txt"); // Rojo
  String entrada2[] = loadStrings("http://localhost/led_rgb/green.txt"); // Verde 
  String entrada3[] = loadStrings("http://localhost/led_rgb/blue.txt"); // Azul
  
  val1=Integer.parseInt(entrada1[0]);
  val2=Integer.parseInt(entrada2[0]);
  val3=Integer.parseInt(entrada3[0]);
  
  background(val1,val2,val3); 
  color_rgb(val1,val2,val3); 
  delay(150); 
 }

 void color_rgb(int rojo, int verde, int azul){
   arduino.analogWrite(led_red,255-rojo);
   arduino.analogWrite(led_green,255-verde);
   arduino.analogWrite(led_blue,255-azul);
 }
