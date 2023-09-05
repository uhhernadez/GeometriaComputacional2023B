class Circle {
  PVector center;
  float r;
  
  Circle () {
    center = new PVector(0, 0);
    r = 30;
  }
  
  Circle (float x, float y) {
    center = new PVector(x, y);
    r = 30;
  }
  
  Circle (float x, float y, float r) {
    center = new PVector(x, y);
    this.r = r;
  }
  
  void Draw () {
    circle(center.x, center.y, r);
  }
  
  void Translate (float dx, float dy) {
    //center.add(new PVector(dx, dy));
    center.add(dx, dy);
  }
  
  void Translate (PVector d) {
    center.add(d);
  }
  
}
