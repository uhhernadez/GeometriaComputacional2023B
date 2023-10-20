PShape base, brick1,brick2,brick3,brick4;
PShape toy;
Gizmo gizmo;
Grid grid;


void setup() {
  size(500, 500,P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  
  base = loadShape("base.obj");
  brick1 = loadShape("brick1.obj");
  brick2 = loadShape("brick2.obj");
  brick3 = loadShape("brick3.obj");
  brick4 = loadShape("brick4.obj");
  toy = loadShape("toy.obj");
}

void draw() {
  background(0);
  lights();
  
  camera(0, 50, 30, 
           0,    0,  0, 
           0,    0, -1);
  gizmo.Draw();
  grid.Draw();
  pushMatrix();
    translate(0,-30,0);
    shape(base);
  popMatrix();
  pushMatrix();
    translate(0,0,0);
    shape(brick1);
  popMatrix();
  pushMatrix();
    translate(4,0,0);
    shape(brick2);
  popMatrix(); 
 
}
