class Tile {
  PImage img;
  Tile (String filename, float w, float h) {
    img = loadImage(filename);
    img.resize(round(w),round(h));
  }

  void Draw () {
    image(img, 0, 0);
  }
}
