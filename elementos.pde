class Neo {
  //int para la "hitbox" o cuadro de colisión
  PShape neo;
  int x, y, tam;
  int temp; //temporizador de las gafas
  boolean powerup; //cuando el pj recoje un powerup
  //PImage textura del personaje
  Neo (int x2, int y2) {
    neo = loadShape("neo.svg");
    this.x = x2;
    this.y = y2;
    tam = 300;
  }
  void dibujar () {
    rect (x, y, tam/4, tam/4);
    shape(neo, x, y, tam, tam);
  }
  void mover(int tecla) {
    if (tecla==RIGHT) {
      x+=10;
    }
    if (tecla==LEFT) {
      x-=10;
    }
    if (tecla==UP) {
      y-=10;
    }
    if (tecla==DOWN) {
      y+=10;
    }
  }
}
class Powerup {  
  float r; //rotan en vuelo
  Powerup(float r) {
    this.r = r;
  }
  void powerup () { //que sea una barra que se llena, al presionar "x" tecla se activa
    //estado de invulnerabilidad, donde cada instancia de Balas
    //no afecta al pj
    //if powerup true que "desactive" temporalmente la colisión
  }
}
class Proyectil { 
  float x, y;
  boolean col, fuera;
  PShape p; //proyectil
  Proyectil (float x, float y, boolean col, PShape p) {
    this.x = x;
    this.y = y;
    this.col = col;
    this.p = p;
  }
  void dibujarProyectil() {
    rect(x, y, 20, 5);
  }
  void mover() {
    if (!fuera) {
      x -=2; // se mueve el proyectil
    }
  }
  void retornar() {
    if (x<=-40) {
      x =width*2+random(150, 300);
    }
  }
}
class Bala extends Proyectil { 
  PShape b;
  int radio;
  Bala(float x, float y, boolean col, PShape b) {
    super(x, y, col, b);                         
    b = loadShape("bullet.svg");
    this.b = b;
    b.scale(0.1);
    b.rotate(4.71);
    radio = 20;
  }
  void dibujar() {
    circle(x+6, y-22, radio);
    shape (b, x, y);
    mover();
    retornar();
  }
}
class Texto {
  PFont fuente;
  Texto() {
    fuente = createFont("Miltown_.ttf", 32);
  }
  void parametros() {
    textFont(fuente);
    textSize(40);
    textAlign(CENTER);
    colorMode(HSB);
    fill(100, 255, random(170, 175));
  }
  void escribir() {
    text ("ENTRANDO\nEN LA MATRIX", width/2, height/2-40);
  }
}
