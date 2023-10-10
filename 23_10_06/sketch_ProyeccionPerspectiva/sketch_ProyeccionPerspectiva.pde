ArrayList<PVector> cube;

void setup () {
  size (600, 600);
  cube = new ArrayList<PVector> ();
  cube.add(new PVector(-50, -50, 50));
  cube.add(new PVector(-50,  50, 50));
  cube.add(new PVector( 50,  50, 50));
  cube.add(new PVector( 50, -50, 50));
  
  cube.add(new PVector(-50, -50, -50));
  cube.add(new PVector(-50,  50, -50));
  cube.add(new PVector( 50,  50, -50));
  cube.add(new PVector( 50, -50, -50));
}

void draw () {
  background(255);
  translate(300, 300);
  ArrayList<PVector> pCube = new ArrayList<PVector>();
  ArrayList<PVector> cubeR = new ArrayList<PVector>();
  float [][] orto = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 0}
  };
  
  float d = 50;
  float [][] perspective = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 1/d}
  };
  
  float theta = -radians(0.2*millis());
  
  cubeR = RotationZ(cube, theta);
  for (PVector p: cubeR) {
    p.add(new PVector(40,0, -100));
  }
 
  for (PVector v : cubeR) {
    // Se realiza la proyección
    PVector nv = Mult3x3byV(perspective,v);
    nv.div(nv.z);
    pCube.add(nv);
  }
  
  
  DrawCube(pCube);
}

ArrayList<PVector> RotationX(ArrayList<PVector> points, float theta) {
  ArrayList<PVector> newPoints = new ArrayList<PVector>();
  float [][] Rx = {
    {1,       0,          0     },
    {0, cos (theta), -sin(theta)},
    {0, sin (theta),  cos(theta)}
  };
  
  for (PVector v: points) {
    // Rotación sobe el eje x
    newPoints.add(Mult3x3byV(Rx, v));
  }
  return newPoints;
}

ArrayList<PVector> RotationY(ArrayList<PVector> points, float theta) {
  ArrayList<PVector> newPoints = new ArrayList<PVector>();
  float [][] Ry = {
    {cos(theta) , 0, sin (theta)},
    {0          , 1, 0          },
    {-sin(theta), 0, cos (theta)}
  };
  
  for (PVector v: points) {
    // Rotación sobe el eje x
    newPoints.add(Mult3x3byV(Ry, v));
  }
  return newPoints;
}

ArrayList<PVector> RotationZ(ArrayList<PVector> points, float theta) {
  ArrayList<PVector> newPoints = new ArrayList<PVector>();
  float [][] Rz = {
    {cos(theta), -sin (theta), 0},
    {sin(theta), cos(theta)  , 0},
    {0         ,            0, 1}
  };
  
  for (PVector v: points) {
    // Rotación sobe el eje x
    newPoints.add(Mult3x3byV(Rz, v));
  }
  return newPoints;
}

void Line (PVector a, PVector b) {
  line(a.x, a.y, b.x, b.y);
}

void DrawCube (ArrayList<PVector> cubo) {
  for (PVector p : cubo) {
    circle(p.x, p.y, 10);
  }
  Line(cubo.get(0), cubo.get(1) );
  Line(cubo.get(1), cubo.get(2) );
  Line(cubo.get(2), cubo.get(3) );
  Line(cubo.get(3), cubo.get(0) );
  
  Line(cubo.get(4), cubo.get(5) );
  Line(cubo.get(5), cubo.get(6) );
  Line(cubo.get(6), cubo.get(7) );
  Line(cubo.get(7), cubo.get(4) );
  
  Line(cubo.get(0), cubo.get(4) );
  Line(cubo.get(1), cubo.get(5) );
  Line(cubo.get(2), cubo.get(6) );
  Line(cubo.get(3), cubo.get(7) );
}

PVector Mult3x3byV (float [][] M33, PVector v) {
  float x, y , z;
  x = M33[0][0]* v.x + M33[0][1] * v.y + M33[0][2] * v.z;
  y = M33[1][0]* v.x + M33[1][1] * v.y + M33[1][2] * v.z;
  z = M33[2][0]* v.x + M33[2][1] * v.y + M33[2][2] * v.z;
  return new PVector(x, y, z);
}
