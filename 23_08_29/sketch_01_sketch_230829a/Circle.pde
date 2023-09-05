class Circle {
  float x, y;
  float r;
  
  Circle () {
    x = 0;
    y = 0;
    r = 30;
  }
  
  Circle (float x, float y) {
    this.x = x;
    this.y = y;
    r = 30;
  }
  
  Circle (float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }
  
  void Draw () {
    circle(x, y, r);
  }
  
  void Translate (float dx, float dy) {
    x = x + dx;
    y = y + dy;
  }
}
