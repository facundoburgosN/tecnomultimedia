class Estado {    //estados del juego
  int cuenta;
  int cuentamx;
  Estado (int cuenta, int cuentamx) {
    this.cuenta = cuenta;
    this.cuentamx = cuentamx;
  }
  void sumarEstado() {
    if (this.cuenta < this.cuentamx) {
      this.cuenta++;
    }
  }
  void reiniciarEstado() {
    this.cuenta = 0;
  }
}
