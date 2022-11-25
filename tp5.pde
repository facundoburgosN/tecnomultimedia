// Burgos, Facundo Nazareno. Legajo 91527/0 
// https://youtu.be/Yd3KxmtsFo8
import processing.sound.*;
Matrix m;
void setup () {
  size (600, 600);
  m = new Matrix();
}
void draw () {
  background (40);
  m.iniciar();
}
void keyPressed() {
  m.movimiento(keyCode);
}
