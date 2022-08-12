//https://youtu.be/Ri0LV5tZJMI
//Burgos Facundo Nazareno    Legajo=  91527/0 Comisión= 1
float[] posx= new float [25];  //25 naves
float[] posy= new float [25];
float[] vel = new float[25];  //velocidad
boolean []scene = new boolean [5];
PImage [] juga = new PImage[3];
PImage [] naves = new PImage[6];
int[] orden = new int[2];    //animación
int score;    //puntaje
PImage stars;
PFont tipo;
String Presen, ini;

void setup () {
  size (400, 600);
  //texto
  Presen= ("Atención pilotos!\n hay que entregar una carga \ncruzando tráfico espacial \nno regulado\n\n\nMuevete con el mouse");
  ini=("INICIAR");
  tipo = loadFont ("Stencil-32.vlw");
  textSize(20);
  textFont (tipo);
  //imagen
  for (int i=0; i<3; i++) {
    juga[i] = loadImage("jugador"+i+".png");
  }
  for (int i=0; i<6; i++) {
    naves[i] = loadImage("nave"+i+".png");
  }
  stars =loadImage ("stars.png");
  for (int i=0; i<25; i++) {      
    posx[i] = random(-100, 200);  //posición X e Y
    posy[i] = random(10, 480);
    vel[i] = random( 1, 6 );      //velocidad naves
    scene[0]=true;
  }
}
void draw () {
  background (122);
  imageMode (CENTER);
  image (stars, width/2, height/2, width, height);
  if (frameCount%6==0) {
    if (orden[0]<juga.length-1) {
      orden[0]++;
    } else {
      orden[0] = 0;
    }
  }
  if (frameCount%6==0) {
    if (orden[1]<naves.length-1) {
      orden[1]++;
    } else {
      orden[1] = 0;
    }
  }
  text ("Entregas consecutivas:"+score, width/2-10, height-10);
  //ESCENA 1
  if (scene[0]==true) {
    textAlign (CENTER);
    textFont (tipo, 26);
    boton(width/3, 510, 130, 30);
    fill (40, 180, 40);
    text (Presen, width/2, height/3);
    text (ini, width/2, 535);
  }
  //ESCENA 2
  if (scene[1]==true) {
    noCursor();
    image (juga[orden[0]], mouseX, mouseY, 40, 40);
    naves();
    meta(0, 0, width, 20);
    stroke(220,220,30);
    line (0, 20, width, 20);
    noStroke();
  }
  //ESCENA 3 (GANASTE)
  if (scene[2]==true) {
    cursor();
    fill (40, 180, 40);
    text ("Entrega completada!\nnueva entrega disponible", width/2, height/2);
    boton(width/3, 510, 130, 30);
    fill (40, 180, 40);
    text (ini, width/2, 535);
  }
  //ESCENA 4 (PERDISTE)
  if (scene[4]==true) {
    fill (40, 180, 40);
    text ("Nave destruida!\ninténtalo de nuevo", width/2, height/2);
    boton(width/3, 510, 140, 30);
    cursor();
    fill (40, 180, 40);
    text ("Reiniciar", width/2, 535);
  }
}
