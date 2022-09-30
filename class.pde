class Generar {
  Elementos elm;
  Control col;
  void mostrar() {
    col = new Control();
    elm = new Elementos();
    col.aplicar();
    elm.dibujar();
  }
}
class Elementos {
  float [] pos = new float [2];
  float luminosidad, ylinea;
  PImage fondo;
  Elementos() {
    ylinea = mouseY/2;
    pos[0] = 0;
    pos[1] = width;
    luminosidad = map(mouseX, 0, width, 0, 255);
    fondo = loadImage ("fondo.jpg");
    fondo.resize(width, height);
  }
  void dibujar() {
    image (fondo, 0, 0);
    for (int n= 0; n<30; n++) {
      stroke(luminosidad);
      line (pos[0], n*10+(ylinea), pos[1], n*10+(ylinea));
    }
  }
}
class Control {
  void aplicar() {
    noCursor();
    strokeWeight(4);
  }
}
