Gizmo gizmo;
Grid grid;
Particle particle;
Enderman enderman;

void setup () {
  //size(500, 500,OPENGL);
  fullScreen(P3D);
  //size(500, 500);
  gizmo = new Gizmo (4, 50);
  grid = new Grid();  
  enderman = new Enderman();
}

void draw () {
  background(200);
  //lights();
  float fov = PI/3.0;
  float r  = 300;
  float t = millis()/1000.0;
  t = PI;
  float f = 0.1;
  perspective(fov, float(width)/float(height), 5, 1000); 
  camera(r*cos(2*PI*t*f), r*sin(2*PI*t*f), 300, 
           0,    0,  0, 
           0,    0, -1);
  gizmo.Draw();
  grid.Draw();
  enderman.Draw();
  
  
  if (keyPressed) {
    if (key == 'w') {
      enderman.position.add(0,1,0);
    } else if (key == 's') {
      enderman.position.add(0,-1,0);
    }
    if (key == 'a') {
      enderman.theta.add(0,0,radians(1));
    } else if (key == 'd') {
      enderman.theta.add(0,0,radians(-1));
    }
  }
  
}
