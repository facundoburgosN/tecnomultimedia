//https://youtu.be/rZoe_R5D2XI
//Burgos Facundo Nazareno    Legajo=  91527/0 Comisión= 0
float []mouse = new float [2];
float posc[] = new float [3];
float posx, posy, posr, posr2;
boolean []scene = new boolean [3];
String Presen, ini;
PFont tipo;
PImage aste, star;
PImage [] nave = new PImage[3];
PImage [] nave2 = new PImage[6];
int num;

void setup () {
  size (600, 600);
  scene[0] = true;
  //IMAGEN
  imageMode (CENTER);
  star = loadImage("stars.png");
  for (int i=0; i<3; i++) {
    nave[i] = loadImage("jugador"+i+".png");
  }
    for (int i=0; i<6; i++) {
    nave2[i] = loadImage("nave"+i+".png");
  }
  posr = random (40, 50);
  posr2 = random (60, 70);
  posc[1]=120;
  ellipseMode (CENTER);
  //TEXTO
  tipo = loadFont ("Stencil-32.vlw");
  textAlign (CENTER);
  textFont (tipo, 26);
  Presen= ("Atención pilotos!\n hay que entregar una carga cruzando\ntráfico aéreo no regulado\n\n\nMuevete con el mouse");
  ini=("INICIAR");
  //
}
void draw () {
  background (122);

  //1er Escena
  if (scene[0]==true) {
    image (star, width/2, height/2);  
    star.resize(width, height);
    boton(width/3, 510, 200, 30);
    fill (0, 200, 0);
    text (Presen, width/2, height/3);
    text (ini, width/2, 535);
  }
  //2da Escena
  if (scene[1]==true) {
    noCursor();
    posx = mouse[0]-10; 
    posy = mouse[1]-10; 
    mouse[0] = mouseX; 
    mouse[1] = mouseY;
    image (star, width/2, height/2);
    image(nave[num], posx, posy);

    //Tráfico
    for (float i = 10; i < 510; i+=posr) {
      nave2[num].resize(200, 150);
      image(nave2[num], posc[0], posc[1]);
    }
    //Reinicio de posición
    if (posc[0]<660) {
      posc[0]+=3;
    } else if (posc [0]>=600) {
      posc[0]=0-100;
    }
  }

  ////3ra Escena

  if (scene[2]==true) {
    fill (0);
  }
}
