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
}
