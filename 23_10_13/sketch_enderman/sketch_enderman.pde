Gizmo gizmo;
Grid grid;
Piece leg_right;
Piece leg_left;
Piece body;
Piece head;
Piece arm_right;
Piece arm_left;
void setup () {
  size (500, 500, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  leg_right = new Piece (0, 0, -50, 8, 8, 100 );
  leg_left = new Piece (0, 0, -50, 8, 8, 100 );
  body = new Piece(0, 0, 0, 35, 20, 45);
  head = new Piece(0,0, 35/2.0, 35, 35, 35);
  arm_right = new Piece (0, 0, -50, 8, 8, 100 );
  arm_left = new Piece (0, 0, -50, 8, 8, 100 );
}

void draw () {
  background(0);
  lights();
  float l = 100;
  float t = millis () / 1000.0;
  float f = 0.01;
  float x = l * cos (2*PI*f*t);
  float y = l * sin (2*PI*f*t);
  camera (0, 200, 150, // Eye's coordinates
          0, 0, 150, // Center
          0, 0, -1); // Camera view
  grid.Draw();
  gizmo.Draw();
 // leg_right.theta = radians(45) * cos(2*PI*t);
  pushMatrix();
  translate(-10, 0, 100);
  leg_right.Draw();
  popMatrix();
 // leg_left.theta = radians(45) * cos(2*PI*t+PI);
  pushMatrix();
  translate(10, 0, 100);
  leg_left.Draw();
  popMatrix();
  
  pushMatrix();
    translate(0, 0, 120);
    body.Draw();
  popMatrix();
  pushMatrix();
    translate(0, 0, 142.5);
    head.Draw();
  popMatrix();
  head.theta = radians(10) * cos(2*PI*t+PI);
}
