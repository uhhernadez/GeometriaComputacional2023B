class Linea {
  PVector p1, p2;
  float m, b;
  
  Linea (float x1, float y1, float x2, float y2) {
    p1 = new PVector(x1, y1);
    p2 = new PVector(x2, y2);
    m = (y2 - y1) / (x2 - x1);
    b = y1 - m * x1;
  }
  
  void Dibujar (float r, float g, float b) {
    stroke(r,g,b);
    float x1 = p1.x - 100;
    float y1 = m * x1 + this.b;
    
    float x2 = p2.x + 100;
    float y2 = m * x2 + this.b;
    
    line(x1, y1, x2, y2);
    line(p1.x, p1.y, p2.x, p2.y);

    circle(p1.x, p1.y, 10);
    circle(p2.x, p2.y, 10);
  }
  
  float Angulo () {
    return atan(m);
  }
}
