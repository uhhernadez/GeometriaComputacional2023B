Gizmo gizmo;
Grid grid;
PImage particle;

void setup () {
  size(500, 500,P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  particle = loadImage("particula.png");
}

void draw () {
  background(0);
  lights();
  float fov = PI/3.0;
  perspective(fov, float(width)/float(height), 5, 500);
  //camera(0, 30, 30, 
  camera(15, 15, 10, 
           0,    0,  0, 
           0,    0, -1);
  gizmo.Draw();
  grid.Draw();
  image(particle,0,0);
}
