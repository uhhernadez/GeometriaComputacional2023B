PShape lego;
Gizmo gizmo;
Grid grid;

void setup () {
  size(512, 512, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  lego = loadShape("lego.obj");
  //lego.rotateX(radians(90));
}

void draw () {
  background(0);
  camera(100, 100, 100,
          0, 0, 0,
          0, 0, -1);
  lights();
  gizmo.Draw();
  grid.Draw();        
  //lego.rotateZ(radians(1));
  pushMatrix();
    translate(-20,0,0);
    rotateX(radians(90));
    pushMatrix();
      rotateY(radians(frameCount));
      shape(lego, 0, 0);
    popMatrix();
  popMatrix();
}
