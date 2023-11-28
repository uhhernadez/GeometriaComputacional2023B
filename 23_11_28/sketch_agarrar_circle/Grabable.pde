class Grabable {
  PVector centro;
  float radio;
  String estado;

  Grabable () {
    centro = new PVector (150, 150);
    radio = 20;
    estado = "libre";
  }
  
  void Draw () {
    PVector p = new PVector(mouseX - width / 2.0, 
                          mouseY - height / 2.0);                         
    float d = PVector.dist(centro,p);
    if (d <= radio/2.0 || estado == "agarrado") {
      fill(0,255,0);
    } else {
      fill(255);
    }
    if (estado == "agarrado") {
      centro = p;  
    }
    
    circle(centro.x, centro.y, radio);                      
  }
  
  void Grab () {
    PVector p = new PVector(mouseX - width / 2.0, 
                          mouseY - height / 2.0);                         
    float d = PVector.dist(centro,p);
    
    if (estado == "libre" && d <= radio/2.0) {
      estado = "agarrado";
    }
  }

  void Release () {
    estado = "libre";
  }

}
