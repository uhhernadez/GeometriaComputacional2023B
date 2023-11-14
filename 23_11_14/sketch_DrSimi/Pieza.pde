class Pieza {
  PImage img;
  PVector pivote;
  
  Pieza (String path, float x, float y) {
    img = loadImage(path);
    pivote = new PVector (x,y);
  }
  
  void Draw () {
    pushMatrix();
      image(img,pivote.x, pivote.y);
      //circle(0,0, 10);
    popMatrix();
  }
  
}
