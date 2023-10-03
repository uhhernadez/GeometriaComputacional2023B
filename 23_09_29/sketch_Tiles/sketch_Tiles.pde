Tile octa, sq;

void setup () {
  size (520,520);
  octa = new Tile("octagono.png", 80, 80);
  sq = new Tile ("cuadrado.png", 45, 45);
}

void draw () {
  background(100);
  for (int m = 0; m < height-50; m+= 85) {
    for (int n = 0; n < width-50; n+= 85) {
      pushMatrix();
        translate(m,n);
        octa.Draw();
        translate(60,60);
        sq.Draw();
      popMatrix();
    }
  }
}
