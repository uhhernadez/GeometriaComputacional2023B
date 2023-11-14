Pieza manoIzq;
Pieza manoDer;
Pieza brazoIzq;
Pieza brazoDer;
void setup () {
  size(512, 512);
  manoIzq = new Pieza("mano_izq.png", 0, -40);
  manoDer = new Pieza("mano_der.png", -72, -40);
  brazoIzq = new Pieza ("brazo_izq.png", -13, -70 );
  brazoDer = new Pieza ("brazo_der.png", -60, -70 );
}

void draw () {
  background(230);
  float t = millis()/1000.0;
  translate(width/2.0,height/2.0);
  
  pushMatrix();
    translate(-100,-50);
    //rotate(t);
    brazoDer.Draw();
    pushMatrix();
      translate(-45,-55);
      //rotate(t);
      manoDer.Draw();
    popMatrix();
  popMatrix();
  
  
  pushMatrix();
    translate(100,-50);
    //rotate(t);
    brazoIzq.Draw();
    pushMatrix();
      translate(45,-55);
      //rotate(t);
      manoIzq.Draw();
    popMatrix();
  popMatrix();
}
