class Circle {
  float r;
  float dd;
  float N;
  float dt;
  ArrayList<PVector> points;
  Circle () {
    r = 100;
    dd = 2 * PI;
    N = 300;
    dt = dd / N;
    points = new ArrayList<PVector>();
    for (float t = 0; t < dd; t = t + dt) {
      float x = r * cos (t);
      float y = r * sin (t);
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
