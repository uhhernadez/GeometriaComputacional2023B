ArrayList<PVector> points;

void setup () {
  size (512, 512);
  points = new ArrayList<PVector>();
  points.add(new PVector(40,10));
  points.add(new PVector(70,40));
  points.add(new PVector(70,60));
  points.add(new PVector(60,70));
  points.add(new PVector(50,70));
  points.add(new PVector(40,60));
  points.add(new PVector(30,70));
  points.add(new PVector(20,70));
  points.add(new PVector(10,60));
  points.add(new PVector(10,40));
}

void draw () {
  translate(256, 256);
  beginShape();
  /*
  for (int k = 0; k < points.size(); k++) {
    PVector p = points.get(k);
    vertex(p.x, p.y);
  }
  */
  
  for (PVector p : points) {
    vertex(p.x, p.y);
  }
  endShape(CLOSE);
}
