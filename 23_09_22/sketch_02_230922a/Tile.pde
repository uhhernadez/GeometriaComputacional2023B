class Tile {
  PImage img;
  PVector offset;
  PVector origin;
  float theta;
  float width;
  float height;
  
  Tile (String filename, float ox, float oy, float width, float height, float theta) {
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
  }
  
  void Draw () {
    pushMatrix();
      translate(origin.x, origin.y);
      rotate(theta);
      image(img, offset.x, offset.y);
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
