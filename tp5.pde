// Burgos, Facundo Nazareno. Legajo 91527/0 
// https://youtu.be/YPQ0sY4ZzPc
import processing.sound.*;
SoundFile musica;
Matrix m;
void setup () {
  size (600, 600);
  m = new Matrix();
  musica = new SoundFile(this,"spybreak.mp3");
  musica.loop();
}
void draw () {
  background (40);
  m.iniciar();
}
void keyPressed() {
  m.movimiento(keyCode);
  m.sig();
}
