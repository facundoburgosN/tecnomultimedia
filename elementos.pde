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
  void powerup () { 
    //estado de invulnerabilidad, donde cada instancia de Balas
    //no afecta al pj
    //if powerup true que "desactive" temporalmente la colisión
  }
}
class Powerup { //extends proyectil
  //PImage del powerup "unas gafas de sol"
  float r; //rotan en vuelo

  //Powerup(x){    constructor
  //  super (x);}
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
      x -=2; // se mueve la bala
    }
  }

  void retornar() {
    if (x<=0) {
      x =width-10;
    }
  }
}
class Bala extends Proyectil { 
  float x, y;
  boolean col;
  PShape b;
  //PImage textura de la bala
  //int para la "hitbox" o cuadro de colisión
  Bala(float x, float y, boolean col, PShape b) {
    super(x, y, col, b);
    shapeMode(CENTER);
    b = loadShape("bullet.svg");
    this.b = b;
    this.x = x;
    this.y = y;
    b.scale(0.1);
  }
  void dibujar() {
    shape (b, x-=10, y);
    super.mover();
    super.retornar();
    if (x<=0) {
      x =width-10;
    }
  }
}
class Gafas {//extends Powerup
  //al recoger este powerup que frene las balas
}
class Llave { //extends Powerup
  //Gana el juego
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
