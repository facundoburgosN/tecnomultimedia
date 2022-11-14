class Matrix {
  int escena;
  int temp; //tiempo en segs esquivando las balas, al llegar a cierto límite se gana
  Estado e;
  Texto t;
  Proyectil [] p = new Proyectil [40];
  Matrix() {//Inicio del constructor
    for (int i=0; i<p.length; i++) {
      p[i] = new Proyectil(width-10, random(10, height-10), false);
    }
    t = new Texto();
    e = new Estado(escena);
  }//Fin del constructor
  void escenas() {
    if (escena==0) {
      t.parametros();
      t.escribir();
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
    for (int i=0; i<p.length; i++) {
      p[i].dibujarProyectil();   
      p[i].mover();
      p[i].disparaProyectil();
    }
  }

  //Asignar escenas "inicio, juego, ganaste, perdiste"
  //Métodos de la pestaña elementos
}
