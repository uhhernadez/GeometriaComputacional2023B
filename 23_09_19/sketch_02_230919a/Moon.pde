class Moon {
  PVector origin; // global
  PVector orbit;  // local
  float theta;  // local
  float r; // radio de la luna
  PImage img;
  // radius : el radio de la orbita, 
  // r: radio cuerpo celeste
  // x: coordenada en x global
  // y: coordanada en y global
  Moon (float radius, float r, float x, float y ) {
    origin = new PVector(x,y);
    orbit = new PVector (radius, 0);
    this.r = r;
    theta = 0.0;
    img = moonImg = loadImage("moon.png");
    img.resize(round(2*r), round(2*r));
  }
  
  void Draw () {
    imageMode(CENTER);
    PVector newOrbit = new PVector(orbit.x, orbit.y);
    newOrbit.rotate(theta);
    float x = origin.x + newOrbit.x;
    float y = origin.y + newOrbit.y;
    fill(100);
    //circle(x, y, r);
    image(img, x, y);
    theta += radians(5);
  }
}
