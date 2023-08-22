PVector v1, v2;

void setup () {
  size (512, 512);
  v1 = new PVector (50, 50);
  v2 = new PVector (80, 30);
}

void draw () {
  DrawVector(v1, 255, 0, 0, 2 );
  DrawVector(v2, 0, 255, 0, 2 );
  PVector v3 = PVector.add(v1,v2);
  DrawVector(v3, 0 , 0, 255, 2);
}

void DrawVector (PVector v, float r, float g, float b, int sw) {
  strokeWeight(sw);
  stroke(r, g, b);
  fill(r, g, b);
  line (0,0, v.x, v.y);
  circle (v.x, v.y, 10);
}

void drawVector () {

}


void draw_vector ()  {

}
