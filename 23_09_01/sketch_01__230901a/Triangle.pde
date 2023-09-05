class Triangle {
  PVector [] points;
  Triangle() {
    points = new PVector[3];
    points[0] = new PVector (0, 0);
    points[1] = new PVector (-30, 100);
    points[2] = new PVector (30 , 100);
  }

  void Draw () {
    noFill();
    //stroke (random(100, 200), random(0, 250), 230);
    beginShape ();
      for (PVector p : points) {
        vertex(p.x, p.y);
      }
    endShape (CLOSE);
  }
  
  void Translate (float dx, float dy) {
      for (PVector p : points) {
        p.add(dx, dy);
      }
  }
}
