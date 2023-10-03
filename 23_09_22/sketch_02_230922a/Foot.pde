class Foot {
  PImage img;
  PVector offset;
  PVector origin;
  float theta;
  float width;
  float height;
  float scale_x;
  float scale_y;
  
  Foot (String filename, float ox, float oy, float width, float height, float theta, float sx, float sy) {
    img = loadImage(filename);
    if(img==null) {
      println("No se encontro: "+ filename);
    }
    offset = new PVector(ox, oy);
    this.width = width;
    this.height = height;
    this.theta = theta;
    origin = new PVector(0, 0);
    img.resize(round(width), round(height));
    scale_x = sx;
    scale_y = sy;
  }
  
  void Draw () {
    pushMatrix();
      translate(origin.x, origin.y);
      circle(origin.x, origin.y, 10);
      rotate(theta);
      pushMatrix();
        scale(scale_x, scale_y);
        image(img, offset.x, offset.y);
      popMatrix();
    popMatrix();
  }
  
  void Translate(float x, float y) {
    origin.add(x, y);  
  }

  void Set (float x, float y) {
    origin.set(x, y);
  }
  
  void Rotate(float dtheta) {
    theta += dtheta;
  }
}
