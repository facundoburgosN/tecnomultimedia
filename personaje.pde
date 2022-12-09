class Neo {
  PShape neo;
  int x, y, ancho, alto;
  Neo () {
    neo = loadShape("neo.svg");
    neo.scale(0.3);
    ancho = 42;
    alto = 120;
  }
  void dibujar () {
    shape(neo, x, y);
  }
  void mover(int tecla) {
    if (tecla==RIGHT && x<width-50) {
      x+=10;
    }
    if (tecla==LEFT &&x>0) {
      x-=10;
    }
    if (tecla==UP && y>0) {
      y-=10;
    }
    if (tecla==DOWN && y< height-120) {
      y+=10;
    }
  }
}
