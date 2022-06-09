/*tp2 Tecno Multimedia
  1er año Comisión 1
  Burgos Facundo legajo 91527/0
  link video-explicación:  https://youtu.be/ETjg6ayuXts
*/
int cant = 7; int tam; int fn; 
boolean col;
void setup () {
  size (600, 600);
  tam = width/cant;
  rectMode (CENTER);
}

void draw () {
  background (122);
  noStroke();
  efecto ();
}
