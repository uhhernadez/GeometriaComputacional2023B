Grabable obj;
ArrayList<Grabable> nodes;

void setup () {
  size (512, 512);
  obj = new Grabable ();
}

void draw () {
  background(230);
  translate (width / 2.0, height / 2.0);
  obj.Draw();
}

void DrawLine (PVector c, PVector p) {
  stroke(255,0,0);
  line(c.x, c.y, p.x, p.y);
}

void mousePressed() {
  obj.Grab();
}

void mouseDragged() {
  
}

void mouseReleased() { 
  obj.Release();
}
