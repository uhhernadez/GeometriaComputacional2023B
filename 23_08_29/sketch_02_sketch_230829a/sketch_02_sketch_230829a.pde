Circle c1, c2, c3;

void setup () {
  size (512, 512);
  c1 = new Circle ();
  c2 = new Circle(50, 50);
  c3 = new Circle(-30, 200, 20);
}

void draw () {
  translate(256,256);
  c1.Draw();
  c2.Draw();
  c3.Draw();
  // Translada al objeto en x 0.01 unidades por frame
  c1.Translate(0.1,0);
  c2.Translate(0,-0.5);
  float x = random(-1, 1);
  float y = random(-1, 1);
  c3.Translate( x , y );
}
