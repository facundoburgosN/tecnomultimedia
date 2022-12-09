class Powerup {
  int posx[] = new int[3];
  int posy[] = new int[3];
  int duracion, chance;
  float r; //rotan
  boolean colision;
  PShape blue, red;
  Powerup() {
    blue = loadShape("blue.svg");
    red = loadShape ("red.svg");
    blue.scale(0.2);
    red.scale(0.2);
    chance = int (random(3));
    for (int i=0; i<2; i++) {
      posy[i]=round (random(80, height-80));
      posx[i]=round (random(80, width-80));
    }
  }
  void dibujar() {    //timer para que aparezcan
    if (chance==0) {
      shape(blue, posx[0], posy[0]);
    }
    if (chance==1) {
      shape(red, posx[1], posy[1]);
    }
  }
}
class Proyectil { 
  float x, y;
  boolean col, fuera;
  PShape p; //proyectil
  float velocidad;
  float retorno;
  Proyectil (float x, float y, boolean col, PShape p) {
    this.x = x;
    this.y = y;
    this.col = col;
    this.p = p;
    velocidad=random(5, 8);
    retorno=width*2+random(40, 100);  //El proyectil vuelve al inicio
  }
  void mover() {
    if (!fuera) {
      x -= velocidad;
    }
  }
  void retornar() {
    if (x<=-40) {
      x= random(580, retorno);
      y= random(20, 580);
    }
  }
}
class Bala extends Proyectil { 
  PShape b;
  int radio;
  Bala(float x, float y, boolean col, PShape b) {
    super(x, y, col, b);                         
    b = loadShape("bala.svg");
    this.b = b;
    b.scale(0.1);
    radio = 10;
    ellipseMode(CENTER);
  }
  void dibujar() {
    push();
    translate(-10, -10);
    shape (b, x, y);
    pop();
    mover();
    retornar();
  }
}
class Boton {
  int bx, by, ancho, alto; // ubicacion y tamaño
  String texto;
  Boton(int bx, int by, int ancho, int alto) {
    this.bx = bx;
    this.by = by;
    this.ancho = ancho;
    this.alto = alto;
    textAlign(CENTER, CENTER);
    textSize(alto/2);
  }
  void dibujarBoton( String texto) {
    this.texto = texto;
    fill(0, 190, 0);
    rect(bx, by, ancho, alto-20);
    fill(0, 190, 40); 
    text(texto, bx+ancho/2, by+alto/2);
  }
  boolean botonPress(int bx, int by, int ancho, int alto) {
    return mouseX>bx && mouseX<bx+ancho && mouseY>by && mouseY<by+alto;
  }
}
