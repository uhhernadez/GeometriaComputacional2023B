Moon moon;
Planet earth;
Sun sun;
PImage moonImg;
void setup() {
  size(600, 600);
  //moon = new Moon(100, 20, 100, 100);
  //earth = new Planet(100, 80, 0,0);
 sun = new Sun (0, 200, 0, 0);
 //moonImg = loadImage("moon.png");
 //moonImg.resize(30,30);
}

void draw () {
  background(0);
  translate(300,300);
  sun.Draw();
  //sun.origin.add(0.5,0);
  //image(moonImg, 0, 0);
}
