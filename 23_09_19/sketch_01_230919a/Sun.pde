class Sun {
  Planet earth;
  PVector origin; // global
  PVector orbit;  // local
  float theta;  // local
  float r; // radio de la luna
  // radius : el radio de la orbita, 
  // r: radio cuerpo celeste
  // x: coordenada en x global
  // y: coordanada en y global
  Sun (float radius, float r, float x, float y ) {
    // Planeta
    origin = new PVector(x,y);
    orbit = new PVector (radius, 0);
    this.r = r;
    theta = 0.0;
    float xx = origin.x + orbit.x;
    float yy = origin.y + orbit.y;
    earth = new Planet(1.2 * r, 0.3 * r, xx, yy);
  }
  
  void Draw () {
    PVector newOrbit = new PVector(orbit.x, orbit.y);
    newOrbit.rotate(theta);
    float x = origin.x + newOrbit.x;
    float y = origin.y + newOrbit.y;
    fill(127,0,0);
    circle(x, y, r);
    theta += radians(0.8);
    earth.origin.set(x,y);
    earth.Draw();
  }

}
