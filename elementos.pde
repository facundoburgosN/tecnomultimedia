class Neo {
  //int para la "hitbox" o cuadro de colisión
  float x, y;
  int temp; //temporizador de las gafas
  boolean powerup; //cuando el pj recoje un powerup
  //PImage textura del personaje
  //falta constructor
  void mover (int tecla) {
    if (tecla==UP) {
      y-=2;
    }
    if (tecla==DOWN) {
      y += 2;
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
  float x, y, t;
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
    if (x<=-10) {
      x =width*2;
    }
  }
}
class Bala extends Proyectil { 
  PShape b;
  //PImage textura de la bala
  //circle para la "hitbox" o cuadro de colisión
  Bala(float x, float y, boolean col, PShape b) {//puedo agregar parámetros extra
    super(x, y, col, b);                         //cuidado con lo que heredás
    b = loadShape("bullet.svg");
    this.b = b;
    b.scale(0.1);
    b.setFill(255);
    b.rotate(4.71);
  }
  void dibujar() {
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
    text ("SIENDO CARGADO\nEN LA MATRIX", width/2, height/2-40);
  }
}
