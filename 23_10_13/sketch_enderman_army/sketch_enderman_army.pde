Gizmo gizmo;
Grid grid;
ArrayList<Enderman> army;

void setup () {
  size (500, 500, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  army = new ArrayList<Enderman> ();
  int N = 100;
  for (int k = 0; k < N; k++) {
    float x = random(-100, 100);
    float y = random(-100, 100);
    float theta_z = random(-2*PI, 2*PI);
    Enderman e = new Enderman();
    e.position.set(x, y, 0);
    e.theta.set(0,0,theta_z);
    army.add(e);
  }
}

void draw () {
  background(0);
  lights();
  camera (400, 400, 400, // Eye's coordinates
          0, 0, 0, // Center
          0, 0, -1); // Camera view
  grid.Draw();
  gizmo.Draw(); for (Enderman e : army) {e.Draw();e.position.add(0,0.5,0);}
 
}
