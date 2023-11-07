Circle circle;
PImage earth;

void setup () {
  size (500, 500);
  circle = new Circle();
  earth = loadImage("earth.png");
  imageMode(CENTER);
  earth.resize(50,50);
}

int k = 0;
void draw () {
  background(0);
  translate(width/2, height/2);
  circle.Draw();
  PVector p = circle.points.get(k);
  image(earth, p.x, p.y);
  k = ( (k+2) > circle.points.size())? 0: k+1 ;
}
