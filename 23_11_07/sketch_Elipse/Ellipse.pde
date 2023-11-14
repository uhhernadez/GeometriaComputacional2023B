class Ellipse  {
  float a;
  float b;
  float dd;
  float N;
  float dt;
  ArrayList<PVector> points;
  Ellipse () {
    a = 80;
    b = 150;
    dd = 2 * PI;
    N = 300;
    dt = dd / N;
    points = new ArrayList<PVector>();
    for (float t = 0; t < dd; t = t + dt) {
      float x = a * cos (t);
      float y = b * sin (t);
      points.add(new PVector(x,y));
    }
  }
  
  void Draw () {
    noFill();
    beginShape();
      for (PVector point : points) {
        vertex(point.x, point.y);
      }
    endShape();  
  }
}
