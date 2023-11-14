Pieza manoIzq;
Pieza manoDer;
void setup () {
  size(512, 512);
  manoIzq = new Pieza("mano_izq.png", 0, -40);
  manoDer = new Pieza("mano_der.png", -72, -40);
}

void draw () {
  background(230);
  float t = millis()/1000.0;
  translate(width/2.0,height/2.0);
  
  pushMatrix();
    translate(100,-100);
    rotate(t);
    manoIzq.Draw();
  popMatrix();
  
  pushMatrix();
    translate(-100,-100);
    rotate(t);
    manoDer.Draw();
  popMatrix();
  
}
