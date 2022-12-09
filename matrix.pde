class Matrix {
  int escena, anchoBot, altoBot, temp;
  boolean fuera, col;
  PShape b2;
  Powerup p;
  Texto t;
  Neo n;
  Imagen i;
  Bala [] b = new Bala [5]; 
  Boton bot1, bot2, bot3;
  Matrix() {
    anchoBot = 140;
    altoBot = 60;
    for (int i=0; i<b.length; i++) {
      b[i] = new Bala(width*2+random(150, 300), i*height/b.length+random(50, 100), false, b2);
    }
    n = new Neo();
    t = new Texto();
    p = new Powerup();
    i = new Imagen();
    bot1 = new Boton(width/2-anchoBot/2, 500, anchoBot, altoBot );
  }
  void escenas() {
    if (escena==0) {  //pantalla de inicio
      t.parametros();
      t.escribir();
      bot1.dibujarBoton("Iniciar");
      //m.juego();
    }
    if (escena==1) {  //"desarrollo" o juego
      m.juego();
    }
    if (escena==2) {  //ganaste
    }
    if (escena==3) { //perdiste
    }
    if (escena==4) { //créditos
    }
  }
  void iniciar() {
    m.escenas();
  }
  void juego() {    
    i.dibujar();
    n.dibujar();
    for (int i=0; i<b.length; i++) {
      b[i].dibujar();
      if (col(n.x, n.y, n.ancho, n.alto, b[i].x, b[i].y, b[i].radio)) {
        escena=3; //perdiste
      }
    }
    if (p.chance==0 && pildora(n.x, n.y, n.ancho, n.alto, p.posx[0], p.posy[0])) {
      escena=3;   //perdiste
    }
    if (p.chance==1 && pildora(n.x, n.y, n.ancho, n.alto, p.posx[1], p.posy[1])) {
      escena=2;   //ganaste
    }
    p.dibujar();  //píldoras
  }
  void movimiento (int tecla) {
    n.mover(tecla);
  }
  void presionar() {
    if (bot1.botonPress(width/2-anchoBot/2, 500, anchoBot, altoBot) && escena==0) {
      escena=1;
    }
  }
  boolean col(int x, int y, int ancho, int alto, float x2, float y2, int radio) {
    if (dist(x+ancho, y, x2, y2)<radio/2 || dist(x+ancho, y+alto, x2, y2)<radio ||x2>x &&x2<x+ancho &&y2>y && y2<y+alto) {
      return true;
    } else {
      return false;
    }
  }
  boolean pildora(int x, int y, int ancho, int alto, int x2, int y2) {
    if (dist (x+ancho/3, y+alto/3, x2, y2)<20) {
      return true;
    } else {
      return false;
    }
  }
}
