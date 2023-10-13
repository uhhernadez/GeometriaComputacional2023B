Gizmo gizmo;
Grid grid;
ArrayList<Enderman> army;

void setup () {
  size (500, 500, P3D);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();
  
  army = new ArrayList<Enderman> ();
  
  int N = 10;
  for (int k = 0; k < N; k++) {
    float x = random(-100, 100);
    float y = random(-100, 100);
    float theta_z = random(-PI, PI);
    Enderman e = new Enderman();
    e.position.set(x, y, 0);
    e.theta.set(0,0,theta_z);
    army.add(e);
  }
  
}

void draw () {
  background(0);
  lights();
  float l = 400;
  float t = millis () / 1000.0;
  float f = 0.01;
  float x = l * cos (2*PI*f*t);
  float y = l * sin (2*PI*f*t);
  PVector p = fakeEnderman.position;
  camera (x, y, 150, // Eye's coordinates
          p.x, p.y, 150, // Center
          0, 0, -1); // Camera view
  grid.Draw();
  gizmo.Draw();
 
}
