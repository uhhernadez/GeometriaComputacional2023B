Gizmo gizmo;
Grid grid;
PImage particle;

void setup () {
  size(500, 500,P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  particle = loadImage("particula.png");
  particle.resize(10,10);
}

void draw () {
  background(0);
  lights();
  float fov = PI/3.0;
  perspective(fov, float(width)/float(height), 5, 500); 
  camera(100, 100, 100, 
           0,    0,  0, 
           0,    0, -1);
  gizmo.Draw();
  grid.Draw();
  pushMatrix();
    rotateX(radians(90));
    pushMatrix();
      translate(0,frameCount*.2,0);
      image(particle,0,0);
    popMatrix();
  popMatrix();
}
