class Triangle {
  PVector [] points;
  PVector center;
  Triangle() {
    points = new PVector[3];
    points[0] = new PVector (0, 100);
    points[1] = new PVector (-30, 0);
    points[2] = new PVector (30 , 0);
    center = new PVector (0, 0);
  }

  void Draw () {
    line(0,0, center.x, center.y);
    noFill();
    beginShape ();
      for (PVector p : points) {
        vertex(center.x + p.x, center.y + p.y);
      }
    endShape (CLOSE);
    fill(100, 0, 0);
    circle(center.x, center.y, 10);
  }
  
  void Translate (float dx, float dy) {
     center.add(dx, dy);
  }
  
  void Rotate (float theta) {
    float x, y;
    x = center.x * cos(theta) + center.y * sin (theta);
    y = -center.x * sin(theta) + center.y * cos (theta);
    center.set(x, y);
  }
  
  void LocalRotate(float theta) {
    float [][] RM2 = RotationM2D(theta);
    for (PVector p : points) {
      PVector np = Mult2DMV(RM2, p);
      p.set(np);
    }
  }
  
  float [][] RotationM2D(float theta) {
    float [][] RM2 = {{ cos (theta), sin (theta)}, 
                     {-sin (theta), cos (theta)}};
    return RM2;                 
  }
  
  PVector Mult2DMV(float [][] M, PVector v) {
    float x, y;
    x = M[0][0] * v.x + M[0][1] * v.y;
    y = M[1][0] * v.x + M[1][1] * v.y;
    return new PVector(x, y);
  } 
}
