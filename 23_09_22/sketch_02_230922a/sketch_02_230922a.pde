Foot right, lefth;
boolean foot = true;
void setup () {
  size (600, 600);
  right = new Foot("foot.png", -100, 0, 100, 100, 0, -1, 1);
  lefth = new Foot("foot.png", 0, 0, 100, 100, 0, 1, 1);
  lefth.Set(-100, 10);
}


void draw ()  {
  background(200);
  translate(300,400);
  right.Draw();
  lefth.Draw();
  if(frameCount%20==0) {
    foot = !foot;
  if(foot) {
    right.Translate(0,-20);
  } else {
    lefth.Translate(0,-20);
  }
  }
 
}
