PShape lego;
Gizmo gizmo;
Grid grid;

void setup () {
  size(512, 512, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  lego = loadShape("lego.obj");
}

void draw () {
  camera(100, 100, 100,
          0, 0, 0,
          0, 0, -1);
  lights();
  gizmo.Draw();
  grid.Draw();        
  shape(lego, 0, 0);        

}
