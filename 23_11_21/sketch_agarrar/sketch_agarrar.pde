PVector centro;
float radio;

void setup () {
  size (512, 512);
  centro = new PVector (150, 150);
  radio = 20;
}


void draw () {
  background(230);
  translate (width / 2.0, height / 2.0);
  PVector p = new PVector(mouseX - width / 2.0, 
                          mouseY - height / 2.0);
  float d = PVector.dist(centro,p);
  if (d <= radio/2.0) {
    fill(0,255,0);
  } else {
    fill(255);
  }
  circle(centro.x, centro.y, radio);
  DrawLine(centro,p);
  fill(0);
  text("("+p.x+","+p.y+")", p.x, p.y);
}

void DrawLine (PVector c, PVector p) {
  stroke(255,0,0);
  line(c.x, c.y, p.x, p.y);
}

void mousePressed() {

}

void mouseDragged() {

}

void mouseReleased() { 

}
