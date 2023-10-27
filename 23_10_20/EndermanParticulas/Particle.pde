class Particle {
  PImage img;
  float w, h;
  PVector position;
  PVector orientation;
  
  Particle (float x, float y, float z) {
    position = new PVector(x, y, z);
  }

  void Draw () {
    pushMatrix();
      rotateX(orientation.x);
      rotateY(orientation.y);
      rotateZ(orientation.z);
      pushMatrix();
        translate(position.x, position.y, position.z);
        image(img, 0, 0);
      popMatrix();
    popMatrix();
  }

}
