ArrayList<Grabable> nodes;


ArrayList<PVector> Bezier (PVector p0, PVector p1, float N) {
  ArrayList <PVector> points = new ArrayList<PVector>();
  float dt = 1.0 / N;
  
  for (float t = 0; t <= 1; t = t + dt) {
    float x = p0.x + (p1.x - p0.x) * t;
    float y = p0.y + (p1.y - p0.y) * t;
    points.add(new PVector(x, y));
  }
  
  return points;
}

ArrayList<PVector> Bezier (PVector p0, PVector p1, PVector p2, float N) {
  ArrayList <PVector> points = new ArrayList<PVector>();
  float dt = 1.0 / N;
  
  for (float t = 0; t <= 1; t = t + dt) {
    float a = ( 1 - t ) * ( 1 - t );
    float b = 2 * t * ( 1 - t );
    float c = t * t ;
    float x = a * p0.x + b * p1.x + c * p2.x;
    float y = a * p0.y + b * p1.y + c * p2.y;
    points.add(new PVector(x, y));
  }
  circle(p0.x, p0.y, 10);
  circle(p1.x, p1.y, 10);
  circle(p2.x, p2.y, 10);
  return points;
}

ArrayList<PVector> Bezier (PVector p0, PVector p1, PVector p2, PVector p3, float N) {
  ArrayList <PVector> points = new ArrayList<PVector>();
  float dt = 1.0 / N;
  
  for (float t = 0; t <= 1; t = t + dt) {
    float a = ( 1 - t ) * ( 1 - t ) * (1 - t);
    float b = 3 * t * ( 1 - t ) * ( 1 - t);
    float c = 3 * t * t * (1 -t ) ;
    float d = t * t * t;
    float x = a * p0.x + b * p1.x + c * p2.x + d * p3.x;
    float y = a * p0.y + b * p1.y + c * p2.y + d * p3.y;
    points.add(new PVector(x, y));
  }
  circle(p0.x, p0.y, 10);
  circle(p1.x, p1.y, 10);
  circle(p2.x, p2.y, 10);
  circle(p3.x, p3.y, 10);
  return points;
}


void DrawCurve (ArrayList<PVector> points) {
  noFill();
  beginShape();
    for (PVector p: points) {
      vertex(p.x, p.y);
    }
  endShape();
}

void setup () {
  size (512, 512);
  nodes = new ArrayList<Grabable>();
  for (int k = 0; k < 4 ; k++) {
    nodes.add(new Grabable());
  } 
}

void draw () {
  background(250);
  translate(width/2.0, height/2.0);
  float t = millis()/1000.0;
  float r = 100;
  float x = r * cos (2*PI*t);
  float y = r * sin (2*PI*t);
  ArrayList<PVector> pts = 
  //Bezier (new PVector(10,10), new PVector(200,50) , 2);
  Bezier (nodes.get(0).centro, 
          nodes.get(1).centro,
          nodes.get(2).centro,
          nodes.get(3).centro,
          30);
  
  DrawCurve(pts);
  for (Grabable g : nodes) {
    g.Draw();
  }
}

void mousePressed() {
  // Si hay algún objecto agarra, no agarrar nada
  for (Grabable g: nodes) {
    if (g.estado == "agarrado") {
      return;
    }
  }
  // Si agarro un objecto, termino mi búsqueda
  /*
  for (Grabable g : nodes) {
    if(g.Grab()){
      return;
    }
  }*/
  for (int k = nodes.size()-1; k >=0; k--) {
    Grabable g = nodes.get(k);
    if(g.Grab()){
      return;
    }
  }
  
}

void mouseReleased() { 
  for (Grabable g : nodes) {
    g.Release();
  }
}
