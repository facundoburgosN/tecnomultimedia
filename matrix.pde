class Matrix {
  int escena, x2, y2, radio;
  float x, y;
  int temp; //tiempo en segs esquivando las balas, al llegar a cierto límite se gana
  boolean fuera;
  PShape b2;
  Estado e;
  Texto t;
  Neo n;
  Bala [] b = new Bala [10];
  Matrix() {//Inicio del constructor
    for (int i=0; i<b.length; i++) {
      b[i] = new Bala(width*2+random(150, 300), i*height/b.length+random(5, 50), false, b2);
    }
    x = 300;
    y = 300;
    n = new Neo(x2, y2);
    t = new Texto();
    e = new Estado(escena);
    radio = 20;
  }//Fin del constructor
  void escenas() {
    if (escena==0) {
      t.parametros();
      t.escribir();
      m.juego();
    }
    if (escena==1) {
      m.juego();
    }
    //
  }
  void iniciar() {
    m.escenas();
    println(escena);
  }
  void juego() {    
    n.dibujar();
    for (int i=0; i<b.length; i++) {
      b[i].mover();
      b[i].dibujar();
      b[i].retornar();
      println(x2,y2);
      if (colision(x2, y2, b[i].x, b[i].y, b[i].radio)) {
        println("choca");
        fill(255,255,0);
      }
    }
  }
  void movimiento (int tecla) {
    n.mover(tecla);
  }
  boolean colision(int x2, int y2, float x, float y, int radio) {
    if (x2>x && x2 <x+radio+6 && y2>y && y2<y+radio+22) {
      return true;
    } else {
      return false;
    }
  }
  //Asignar escenas "inicio, juego, ganaste, perdiste"
}
