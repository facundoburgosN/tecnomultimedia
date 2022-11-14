class Matrix {
  int escena;
  int temp; //tiempo en segs esquivando las balas, al llegar a cierto límite se gana
  Texto t;
  Proyectil [] p = new Proyectil [40];
  Matrix() {
    for (int i=0; i<p.length; i++) {
      p[i] = new Proyectil(width-10, random(10, height-10), false);
    }
    t = new Texto();
    //constructor
  }
  void dibujar() {
    for (int i=0; i<p.length; i++) {
      p[i].dibujarProyectil();   
      p[i].mover();
      p[i].disparaProyectil();
    }
    t.parametros();
    t.escribir();
  }
  //Asignar estados "inicio, juego, ganaste, perdiste"
  //Métodos de la pestaña elementos
}
