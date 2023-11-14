import processing.sound.*;
SoundFile file;

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
  //file = new SoundFile(this, "Arremangala.wav");
  file = new SoundFile(this, "jamaicaColombiana.mp3");
  file.play();
}

void draw () {
  background(230);
  float t = millis()/1000.0;
  translate(width/2.0,height/2.0);
  
  
  pushMatrix();
    translate(0,-35 + 20*cos(2*PI*t*2));
    //translate(0,-35);
       
    pushMatrix();
      translate(45,60);
      rotate(radians(90*cos(2*PI*t*1)));
      piernaIzq.Draw();
    popMatrix();
  
    pushMatrix();
      translate(-45,60);
      piernaDer.Draw();
    popMatrix();
    
    tronco.Draw();
   
    pushMatrix();
      translate(-65,-65);
      rotate(radians(20*cos(2*PI*t)));
      brazoDer.Draw();
      pushMatrix();
        translate(-45,-55);
        rotate(radians(60*cos(2*PI*t)+50));
        manoDer.Draw();
      popMatrix();
    popMatrix();
  
    pushMatrix();
      translate(63,-65);
      rotate(radians(20*cos(2*PI*t)));
      brazoIzq.Draw();
      pushMatrix();
        translate(45,-55);
        rotate(radians(60*sin(2*PI*t)-50));
        manoIzq.Draw();
      popMatrix();
    popMatrix();
    
    pushMatrix();
      translate(0,-65);
      rotate(radians(10*cos(2*PI*t*2)));
      cabeza.Draw();
    popMatrix();
    
  popMatrix();
  
  
}
