Corazon corazon;

void setup () {
  size (512, 512);
}

void draw () {
  float t = millis()/1000.0f;
  background(230);
  translate(256, 256);
  corazon = new Corazon();
  corazon.LocalRotate(radians(90));
  corazon.Scale(2);
  corazon.Scale(1 + .5*cos(2*PI*5*t));
  corazon.Draw();
}
