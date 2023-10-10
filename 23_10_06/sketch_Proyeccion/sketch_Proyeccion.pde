void setup() {
  size(500, 500, P3D);
}

void draw() {
  stroke(255, 0, 0 );
  line(0,0,0, 100, 0, 0);
  stroke(0, 255, 0 );
  line(0,0,0, 0, 100, 0);
  stroke(0, 0, 255 );
  line(0,0,0, 0, 0, 100);
  stroke(0);
    
  float fov = PI/2.5; // 60 grados
  float cameraZ = (height/2.0) / tan(fov/2.0);
   perspective(fov, float(width)/float(height), 
                    1, frameCount*.8);
  
  camera(100, 100, 100,
          0,    0,   0,
          0,    0,  -1);
  
  box(45);
  
}
