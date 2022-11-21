class Matrix {
  int escena;
  int temp; //tiempo en segs esquivando las balas, al llegar a cierto límite se gana
  boolean fuera;
  PShape p2;
  PShape b2;
  Estado e;
  Texto t;
  Bala [] b = new Bala [10];
  Proyectil [] p = new Proyectil [40];
  Matrix() {//Inicio del constructor
    for (int i=0; i<p.length; i++) {
      p[i] = new Proyectil(width-10, i*height/p.length, false, p2);
    }
    for (int i=0; i<b.length; i++) {
      b[i] = new Bala(width*2, i*height/b.length, false, b2);
    }
    t = new Texto();
    e = new Estado(escena);
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
    println("Proyectil"+p.length);
    println(b.length);
  }
  void juego() {    
    for (int i=0; i<b.length; i++) {
      b[i].mover();
      b[i].dibujar();
      b[i].retornar();
    }
  }
  void keyPressed() {
    e.sumarEstado();
  }
  //Asignar escenas "inicio, juego, ganaste, perdiste"
  //Métodos de la pestaña elementos
}
