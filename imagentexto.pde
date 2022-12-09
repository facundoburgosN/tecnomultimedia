class Texto {
  PFont fuente;
  Texto() {
    fuente = loadFont("fuente.vlw");
  }
  void parametros() {
    textFont(fuente);
    textSize(36);
    textAlign(CENTER);
    fill(100, 200, 100);
  }
  void escribir() {
    text ("Elegido! debes sobrevivir\ndurante 90 segundos\n\no puedes arriesgarte \ny tomar una de las 2 píldoras ", width/2, 60);
  }
}
class Imagen {
  PImage fondo;
  Imagen() {
    fondo = loadImage("techo1.jpg");
  }
  void dibujar() {
    image(fondo, 0, 0, width, height);
  }
}
