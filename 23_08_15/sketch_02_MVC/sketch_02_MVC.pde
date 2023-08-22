Circle r1, r2;

void setup () {
  size(512, 512);
  r1 = new Circle();
  r2 = new Circle(50, 50,20);
}

void draw () {
  background(0);
  r1.Draw();
  r2.Draw();
  r1.ChangeR(0.1);
  r2.ChangeR(0.05);
}
