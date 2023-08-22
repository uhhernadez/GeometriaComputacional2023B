class Trapecio {
  PVector p1, p2, p3, p4;
  //float x1 , y1, 
  //      x2 , y2,
  //      x3 , y3,
  //      x4 , y4;
  ArrayList<PVector> puntos;
  PVector [] pts;
  
  Trapecio (float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
    //puntos = new ArrayList<PVector>();
    //pts = new PVector[4];
    //pts[0] = new PVector (1,1);
    p1 = new PVector (x1, y1);
    p2 = new PVector (x2, y2);
    p3 = new PVector (x3, y3);
    p4 = new PVector (x4, y4);
  }
  
  Trapecio (float x1, float y1, float bmax, float bmin, float a) {
    p1 = new PVector (x1, y1);
    float deltab = (bmax - bmin) / 2;
    p2 = new PVector (x1 + deltab, y1 - a);
    p3 = new PVector (x1 + bmin + deltab, y1 - a);
    p4 = new PVector (x1 + bmax, y1);
  }
  
  void Dibujar () {
    /*
    quad( p1.x, p1.y,
          p2.x, p2.y,
          p3.x, p3.y,
          p4.x, p4.y);
    */
    fill(random(0,255), random(0, 255), random(0, 255));
    beginShape();
      vertex( p1.x, p1.y );
      vertex( p2.x, p2.y );
      vertex( p3.x, p3.y );
      vertex( p4.x, p4.y );
    endShape(CLOSE);
          
  }
}
