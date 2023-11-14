Pieza manoIzq;
Pieza manoDer;
Pieza brazoIzq;
Pieza brazoDer;
Pieza tronco;
Pieza cabeza;
Pieza piernaIzq;
Pieza piernaDer;

void setup () {
  size(512, 512);
  manoIzq = new Pieza("mano_izq.png", 0, -40);
  manoDer = new Pieza("mano_der.png", -72, -40);
  brazoIzq = new Pieza ("brazo_izq.png", -13, -70 );
  brazoDer = new Pieza ("brazo_der.png", -60, -70 );
  tronco = new Pieza ("tronco.png",-92.5,-92);
  cabeza = new Pieza ("cabeza.png",-72, -126);
  piernaIzq = new Pieza ("pierna_izq.png", -40, 0);
  piernaDer = new Pieza ("pierna_der.png", -60, 0);
}

void draw () {
  background(230);
  float t = millis()/1000.0;
  translate(width/2.0,height/2.0);
  
  pushMatrix();
    translate(45,30);
    piernaIzq.Draw();
  popMatrix();
  
  pushMatrix();
    translate(-45,30);
    piernaDer.Draw();
  popMatrix();
  
  pushMatrix();
    translate(0,-35);
    tronco.Draw();
  popMatrix();
  
  pushMatrix();
    translate(0,-110);
    cabeza.Draw();
  popMatrix();
  
  
  
  
  pushMatrix();
    translate(-65,-100);
    //rotate(t);
    brazoDer.Draw();
    pushMatrix();
      translate(-45,-55);
      //rotate(t);
      manoDer.Draw();
    popMatrix();
  popMatrix();
  
  
  pushMatrix();
    translate(63,-100);
    //rotate(t);
    brazoIzq.Draw();
    pushMatrix();
      translate(45,-55);
      //rotate(t);
      manoIzq.Draw();
    popMatrix();
  popMatrix();
}
