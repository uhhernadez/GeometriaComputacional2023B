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
  float fov = PI/3.0;
  perspective(fov, float(width)/float(height), 5, 500);
  //camera(0, 30, 30, 
  camera(15, 15, 10, 
           0,    0,  0, 
           0,    0, -1);
  //gizmo.Draw();
  //grid.Draw();
  pushMatrix();
  scale(1,-1,1);
  rotateX(radians(90));
  
  pushMatrix();
    translate(-3,-30,-6);
    shape(base);
  popMatrix();
  float z = 1.3;
  pushMatrix();
    translate(1.6,0,z);
    shape(brick1);
  popMatrix();
  pushMatrix();
    translate(4,0,z);
    shape(brick2);
  popMatrix();
  pushMatrix();
    translate(7,0,z+.3);
    shape(brick3);
  popMatrix(); 
  pushMatrix();
    translate(10,0,z);
    shape(brick4);
  popMatrix();
  
  popMatrix();
}
