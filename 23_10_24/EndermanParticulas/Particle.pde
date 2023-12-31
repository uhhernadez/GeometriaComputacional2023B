class Particle {
  PImage img;
  float w, h;
  PVector position;
  PVector orientation;
  float hmax, hmin;
  float wmax, wmin;
  float v;
  
  Particle (float x, float y, float z) {
    position = new PVector(x, y, z);
    orientation = new PVector(radians(90),0,0);
    img = loadImage("particula.png");
    hmax = 200;
    hmin = 0;
    wmax = 200;
    wmin = -200;    
    v = 2;
  }
  
  Particle () {
    position = new PVector();
    orientation = new PVector(radians(90),0,0);
    img = loadImage("particula.png");
    hmax = 200;
    hmin = 0;
    wmax = 50;
    wmin = -50;    
    v = 2;
    Reset();
  }
  void Draw () {
     pushMatrix();
       translate(position.x, position.y, position.z);
       pushMatrix();
         rotateX(orientation.x);
         rotateY(orientation.y);
         rotateZ(orientation.z);
         image(img, 0, 0);
       popMatrix();
     popMatrix();
     position.add(0,0,v);
     if (position.z>hmax) {
       Reset();
     }
  }
  
  void Reset () {
    float x = random (wmin, wmax);
    float y = random (wmin, wmax);
    float z = random (hmin, hmax/2);
    position.set(x, y, z);
  }
}
