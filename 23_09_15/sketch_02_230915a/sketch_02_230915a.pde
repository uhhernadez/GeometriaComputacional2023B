Tile tile;
Tile [][] tiles;
void setup () {
  size (600, 600);
  tiles = new Tile [6][6];
  
  for (int m=0; m < 6; m++) {
    for (int n=0; n < 6; n++) {
      float y = 100 * m;
      float x = 100 * n;
      tiles[m][n] = new Tile (x, y, 100);
    }
  }
}

void draw () {
  for (int m = 0; m < 6; m++ ) {
    for (int n = 0; n < 6; n++) {
      tiles[m][n].Draw();
    }  
  }
}
