Gizmo gizmo;
Grid grid;
void setup () {
  size (500, 500, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
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
  box(20);
}
