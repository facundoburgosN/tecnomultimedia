boolean encima(int px, int py, int ancho, int alto) {
  boolean Sobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return Sobre;
}
void col(int pxb, int pyb, int ancho, int alto) {  //void para colisión
  if (encima(pxb, pyb, ancho, alto)==true) {
    scene[4]= true;
    scene[0] = false;
    scene[2] = false;
    scene[1] = false;
    score=0;
    reinicio();
  }
}

void naves () {        
  imageMode (CORNER);
  for (int i=0; i<posx.length; i++) {
    posx[i]+=vel[i];
    image(naves[orden[1]], posx[i], posy[i], 60, 60);  
    col (round (posx[i]), round(posy[i]), 50, 40);
    if (posx[i] > width) {                          //reinicio posición x
      posx[i]=-30;
    }
  }
}

void boton(int pxb, int pyb, int ancho, int alto) {
  if (encima(pxb, pyb, ancho, alto)==true) {
    fill(0, 255, 255);
    if (mousePressed) {
      scene[0] = false;
      scene[2] = false;
      scene[1] = true;
      scene[4]= false;
    }
  } else {
    fill(100);
  }
  rect(pxb, pyb, ancho, alto, 10);
}

void meta(int pxb, int pyb, int ancho, int alto) {
  if (encima(pxb, pyb, ancho, alto)==true) {
    scene[1]=false;
    scene[2]=true;
    score++;
    reinicio();
  }
}
void reinicio() {
  for (int i=0; i<25; i++) {      //reinicio valores de posición X e Y
    posx[i] = random(-100, 200);
    posy[i] = random(10, 480);
  }
}
