Tile tile;

void setup () {
  size (600, 600);
  
}

void draw () {
  for (int m = 0; m < height; m=m+100 ) {
    for (int n = 0; n < width; n=n+100) {
      tile = new Tile (0, 0, 100);
      tile.Translate(m, n);
      tile.Draw();
    }  
  }
}
