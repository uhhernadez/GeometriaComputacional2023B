PVector v1;
float r, theta;

void setup () {
  size (512, 512);
  
  r = 200;
  theta = radians(40.0);
  v1 = new PVector (r * cos (theta), 
                    r * sin (theta));
}

void draw () {
  background(200);
  translate(256, 256);
  DrawVector(v1, 255, 0, 0, 2 );
  float t = millis() / 1000.0;
  v1.x = r * cos(t);
  v1.y = r * sin(t);
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
