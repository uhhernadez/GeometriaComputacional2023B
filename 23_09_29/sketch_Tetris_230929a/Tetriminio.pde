class Tetrimino {
  ArrayList<PVector> points;
  
  Tetrimino () {
    points = new ArrayList<PVector>();
    points.add(new PVector (0, 0));  // P1
    points.add(new PVector (30, 0)); // P2
    points.add(new PVector (60, 0)); // P3
    points.add(new PVector (90, 0)); // P4
    points.add(new PVector (90, 30));// P5
    points.add(new PVector (60, 30));// P6
    points.add(new PVector (60, 60));// P7
    points.add(new PVector (30, 60));// P8
    points.add(new PVector (30, 30));// P9
    points.add(new PVector (0, 30)); // P10
  }
  void Draw () {
    beginShape();
    for (PVector p: points) vertex(p.x, p.y); 
    endShape(CLOSE);

    line (points.get(1).x, points.get(1).y, 
          points.get(8).x, points.get(8).y);
    
    line (points.get(2).x, points.get(2).y, 
          points.get(5).x, points.get(5).y);  
    
    line (points.get(5).x, points.get(5).y, 
          points.get(8).x, points.get(8).y);      
  }

  void Translate (float x, float y) {
    for (PVector p: points) {
      p.add(x,y);
    }
  }
  
  void Rotate (float theta) {
    for (PVector p: points) {
      p.rotate(theta);    
    }
  }  

}
