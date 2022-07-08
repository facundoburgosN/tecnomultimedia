boolean encima(int px, int py, int ancho, int alto) {
  boolean Sobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return Sobre;
}
void boton(int pxb, int pyb, int ancho, int alto) {
  if (encima(pxb, pyb, ancho, alto)==true) {
    fill(0, 255, 255);
    if (mousePressed) {
      scene[0] = false;
      scene[1] = true;
    }
  } else {
    fill(100);
  }
  rect(pxb, pyb, ancho, alto);
}
