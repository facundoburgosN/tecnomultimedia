import ddf.minim.*;
Minim cancion;
AudioPlayer rep;

//dirección → y ← para cambiar de diapositivas.
//ENTER para reproducir la música.

PImage Portada, rusell, maximo, comodo, joaquin, connie, lucilla, 
  marco, richard, djimon, juba, proximo, oliver, fondo, fondo2, panteon; 
PFont fuentemia;
float cuenta, mod, borde, borde2; //donde cuenta es el contador de diap
int posx, posy, segundos;
String tportada, tcrowe, tmaximo, tcomodo, tjoaquin, tconnie, tlucilla, 
  tmarco, trichard, tdjimon, tjuba, tproximo, toliver, dir, prod, dis; 

void setup() {
  //Música
  cancion = new Minim (this);
  rep = cancion.loadFile("honorhim.wav");

  //Imágen  
  size(600, 600);
  imageMode (CENTER);
  Portada = loadImage ("portada.png");
  rusell = loadImage ("rusellcrowe.jpg");
  maximo = loadImage ("maximo.jpg");
  comodo = loadImage ("comodo.png");
  joaquin = loadImage ("joaquinphoenix.jpg");
  connie = loadImage ("connienielsen.jpg");
  lucilla = loadImage ("lucilla.jpg");
  marco = loadImage ("marcoaurelio.jpg");
  richard = loadImage ("richardharris.jpg");
  djimon = loadImage ("djimonhounsou.jpg");
  juba = loadImage ("juba.png");
  proximo = loadImage ("proximo.jpg");
  oliver = loadImage ("oliverreed.png");
  fondo = loadImage ("fondo.png");
  panteon = loadImage ("panteon.png");
  fondo2= loadImage ("fondo2.png");

  //texto
  fuentemia = createFont ("augustus.TTF", 70);
  textSize (50);
  textAlign(CENTER, CENTER);
  posx = -170;
  posy =height+80;
  tportada = "Gladiador"; 
  tcrowe = "Rusell Crowe como";
  tmaximo = "Máximo Meridio";
  tcomodo = "Lucio Aurelio Cómodo";
  tjoaquin = "Joaquín Phoenix como";
  tconnie = "Connie Nielsen como";
  tlucilla = "Annia Lucila";
  tmarco = "Marco Aurelio";
  trichard = "Richard Harris como";
  tdjimon = "Djimon Hounsou como";
  tjuba = "Juba";
  tproximo = "Antonio Próximo";
  toliver = "Oliver Reed como";
  dir = "Dirigido por \nRidley Scott\n\nGuión\nJohn Logan\nWilliam Nicholson\nDavid Franzoni";
  prod = "Producción\nDouglas Wick\nDavid Franzoni\nBranko Lustig\nTerry Needham\n\nDiseño de Producción\nArthur Max";
  dis = "Música\nHans Zimmer\nLisa Gerrard\n\nFotografía\nJohn Mathieson";
  borde = textWidth(tportada);
  borde2= textWidth(tcrowe);

  //Diapositivas
  cuenta = 0;
  mod = 1;
}

//cambio de diapositivas
void mousePressed () {
  if (mouseX>=width/2-100 && mouseX<=width/2+100 && mouseY>=height/2-100 && mouseY<=height/2+100 && cuenta==16) 
    cuenta = 0;
}
void keyPressed () {
  if (keyCode == RIGHT && cuenta < 16) { //si se presiona → sig. diap.
    cuenta += mod; //ya que mod = 1, es una suma
    println("Diapositiva "+cuenta);
    posx = -170;  // reubico la figura
    posy = height+130;
    segundos = 0;  //reinicio el contador
  } 
  if (keyCode == LEFT && cuenta > 0) { //si se presiona ← ant. diap.
    cuenta -= mod; //o una resta
    println("Diapositiva "+cuenta);
    posx = -170;  // reubico la figura
    posy = height+130;
    segundos = 0;  //reinicio el contador
  }
}

void draw () {

  //texto
  rectMode (CENTER);
  textFont(fuentemia);
  fill (227, 197, 44);

  //Movimiento del texto
  if (frameCount%1==0) {  //cada frame
    posx+=2;
    segundos++;
  }
  if (frameCount%1==0) {  
    posy-=2;
    segundos--;
  } 
  if (posx>=width+30) {
    posx = -170;  // resetea la posx
    segundos = 0;  //reinicia los segundos
  }
  if (posy<=-150) {
    posy = height+180;
    segundos = 0;
  }
  //Música
  if (keyCode == ENTER) {
    rep.play();
  }
  //Diapositiva 0
  if (cuenta == 0) {  //si la cuenta es 0, primera diapositiva
    image (Portada, width/2, height/2, 600, 600); 
    fill (60, 60, 60); //gris
    rect (width/2, height/2+204, borde+260, 70, 10);
    fill (227, 197, 44);  //dorado
    text(tportada, width/2, height/2+200);
  }

  //Diapositiva 1
  if (cuenta == 1) {  
    image (rusell, width/2, height/2, width, height); 
    fill(60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tcrowe, posx+segundos, height-50);
  }

  //Diapositiva 2
  else if (cuenta == 2 ) {
    image (maximo, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tmaximo, posx+segundos, height-50);
  }

  //Diapositiva 3
  else if (cuenta == 3 ) {
    image (joaquin, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tjoaquin, posx+segundos, height-50);
  }
  //Diapositiva 4
  else if (cuenta == 4 ) {
    image (comodo, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tcomodo, posx+segundos, height-50);
  }
  //Diapositiva 5
  else if (cuenta == 5 ) {
    image (connie, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tconnie, posx+segundos, height-50);
  }
  //Diapositiva 6
  else if (cuenta == 6 ) {
    image (lucilla, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tlucilla, posx+segundos, height-50);
  }
  //Diapositiva 7
  else if (cuenta == 7 ) {
    image (richard, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (trichard, posx+segundos, height-50);
  }
  //Diapositiva 8
  else if (cuenta == 8 ) {
    image (marco, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tmarco, posx+segundos, height-50);
  }
  //Diapositiva 9
  else if (cuenta == 9 ) {
    image (djimon, width/2, height/2, width+40, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tdjimon, posx+segundos, height-50);
  }
  //Diapositiva 10
  else if (cuenta == 10 ) {
    image (juba, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tjuba, posx+segundos, height-50);
  }
  //Diapositiva 11
  else if (cuenta == 11 ) {
    image (oliver, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (toliver, posx+segundos, height-50);
  }
  //Diapositiva 12
  else if (cuenta == 12 ) {
    image (proximo, width/2, height/2, width, height);
    fill (60, 60, 60);
    rect (posx+segundos, height-50, borde2-10, 60, 5);
    fill (227, 197, 44);
    textSize (30);
    text (tproximo, posx+segundos, height-50);
  }
  //Diapositiva 13
  else if (cuenta == 13 ) {
    image (fondo2, width/2, height/2, width, height);
    textSize (30);
    text (dir, width/2, posy-segundos);
  }
  //Diapositiva 14
  else if (cuenta == 14 ) {
    image (fondo2, width/2, height/2, width, height);
    textSize (30);
    text (prod, width/2, posy-segundos);
  }
  //Diapositiva 15
  else if (cuenta == 15 ) {
    image (fondo2, width/2, height/2, width, height);
    textSize (30);
    text (dis, width/2, posy-segundos);
  }
  //Diapositiva 16
  else if (cuenta == 16 ) {
    image (fondo2, width/2, height/2, width, height);
    image (panteon, width/2, height/2, 300, 300);
    textSize (random (30,34));
    fill (random (255,0), random (190,170), random (255,230));
    text ("Reiniciar", width/2, height/2+120);
  }
}
