Gizmo gizmo;
Grid grid;
Particle particle;
Enderman enderman;

void setup () {
  size(500, 500,P3D);
  //size(500, 500);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();  
  enderman = new Enderman();
}

void draw () {
  background(0);
  //lights();
  float fov = PI/3.0;
  float r  = 200;
  float t = millis()/1000.0;
  float f = 0.1;
  perspective(fov, float(width)/float(height), 5, 500); 
  camera(r*cos(2*PI*t*f), r*sin(2*PI*t*f), 100, 
           0,    0,  0, 
           0,    0, -1);
  gizmo.Draw();
  grid.Draw();
  enderman.Draw();
}
