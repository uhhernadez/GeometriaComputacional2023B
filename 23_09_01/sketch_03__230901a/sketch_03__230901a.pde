Triangle t;
void setup () {
  size (512, 512);
  t = new Triangle();
}

void draw () {
  background(200);
  translate(256, 256);
  t.Draw();
  t.Rotate(radians(1));
  t.LocalRotate(1);
}

void keyPressed() {
  float dx = 0, dy = 0;
  if (key == CODED) {
    if (keyCode == UP) {
      dy -= 10;
    }
    if (keyCode == DOWN) {
      dy += 10;
    }
    if (keyCode == LEFT) {
      dx -= 10;
    }
    if (keyCode == RIGHT) {
      dx += 10;
    }
  }
  t.Translate(dx, dy);
}
