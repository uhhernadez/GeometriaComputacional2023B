class Circle {
  float x, y, r;
  Circle () {
    x = 10;
    y = 10;
    r = 5;
  }
  
  Circle (float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }
  
  void Draw() {
    // Vista de nuestro modelo
    circle(x, y, r);
  }
  
  void ChangeR (float dr) {
    r = r + dr;
    // r += dr;
  }
}
