class Estado {    //estados del juego
  int cuenta;
  int cuentamx;
  Estado (int cuenta) {
    this.cuenta = cuenta;
    cuentamx = 4;
  }
  void sumarEstado() {
    if (cuenta < this.cuentamx) {
      this.cuenta++;
    }
  }
  void reiniciarEstado() {
    this.cuenta = 0;
  }
}
