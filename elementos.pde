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
  boolean col; //colisión
  Proyectil (float x, boolean col) {
    this.x = x;
    this.col = col;
  }
  void dibujarProyectil() {
  }
  boolean fuera() {
    return y>height;
  }
}
class Bala { //extends proyectil
  //PImage textura de la bala
  //int para la "hitbox" o cuadro de colisión
}
class Gafas {//extends Powerup
//al recoger este powerup que frene las balas
}
class Glifo{ //extends Powerup
//glifo verde icónico que al recogerlo esquive las balas
}
class Llave{ //extends Powerup
 //Gana el juego 
}
