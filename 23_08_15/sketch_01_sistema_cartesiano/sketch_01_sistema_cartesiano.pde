void setup () {

}

void draw () {
  circle(0,0,10);
  // (x,y)
  // (0,0) -- (50,0)
  float xo = 0, yo =0, x1 = 50, y1 = 50;
  //line(0,0, 50, 0);
  PVector po = new PVector(0,0);
  line(xo,yo, x1,y1);
  // (0,0) -- (0,50)
  line(0,0, 0, 50);
}
