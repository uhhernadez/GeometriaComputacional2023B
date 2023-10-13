Gizmo gizmo;
Grid grid;
Piece arm;
void setup () {
  size (500, 500, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  arm = new Piece (0, 0, -20, 10, 10, 40 );
}

void draw () {
  background(0);
  lights();
  float l = 100;
  float t = millis () / 1000.0;
  float f = 0.01;
  float x = l * cos (2*PI*f*t);
  float y = l * sin (2*PI*f*t);
  camera (x, y, 100, // Eye's coordinates
          0, 0, 0, // Center
          0, 0, -1); // Camera view
  grid.Draw();
  gizmo.Draw();
  arm.theta = radians(45) * cos(2*PI*t);
  pushMatrix();
  translate(20, 20, 0);
  arm.Draw();
  popMatrix();
  arm.theta = radians(45) * sin(2*PI*t);
  pushMatrix();
  translate(10, 20, 0);
  arm.Draw();
  popMatrix();
 
}
