Tetrimino t1, t2, t3;
void setup () {
  size (300, 90);
  t1 = new Tetrimino();
  t2 = new Tetrimino();
  t3 = new Tetrimino();
  t2.Rotate(radians(-90.0));
  t2.Translate(110,90);
  t3.Rotate(radians(-180.0));
  t3.Translate(280,60);
}

void draw () {
  t1.Draw();
  t2.Draw();
  t3.Draw();
} 
