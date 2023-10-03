Tile tile;

void setup () {
  size (600, 600);
  tile = new Tile("tile.png", 0, 0, 100, 100, radians(10));
}

void draw ()  {
  for (float m = 0; m < height; m += 100) {
    for (float n = 0; n < width; n += 100) {
      tile.Set(m, n);
      tile.Draw();
    }
  }
}
