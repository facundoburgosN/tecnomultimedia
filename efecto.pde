void efecto () {
  for (int  i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      for (int c=tam; c>0; c-=7) {                   //comentario post-producción: anidé 2 veces el for, no 3.
        float red = map(c, tam, 133, 66, 66);        //colores
        float green = map (c, tam, 66, 133, 66);     //colores
        float blue = map (c, tam, 66, 66, 133);      //colores
        if (col==true) {
          fill (155, 55, 155);
        } else {
          fill (red, green, blue);
        }

        float ubX= map (c, tam, 0, i*tam+tam/2, mouseX);    //posición cuadrados
        float ubY= map (c, tam, 0, i*tam+tam/2, mouseY);    //posición ellipses
        rect (ubX, ubY, c, c, 20);
        ellipse (ubY, ubX, c, c);
      }
    }
  }
}
