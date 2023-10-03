Moon moon;
Planet earth;
Sun sun;

void setup() {
  size(600, 600);
  //moon = new Moon(100, 20, 100, 100);
  //earth = new Planet(100, 80, 0,0);
  sun = new Sun (0, 200, 0, 0);
}

void draw () {
  background(0);
  translate(300,300);
  sun.Draw();
  sun.origin.add(0.5,0);
}
