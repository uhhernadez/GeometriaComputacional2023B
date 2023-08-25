class EjeCoordenado {
  float xn, xp;
  float yn, yp;
  EjeCoordenado () {
    xn = -1000;
    xp = 1000;
    yn = -1000;
    yp = 1000;
  }
  
  void Dibujar () {
    stroke(255, 0, 0);
    line(xn, 0, xp, 0);
    stroke(0, 255, 0);
    line(0, yn, 0, yp);
    stroke(0);
  }
}
