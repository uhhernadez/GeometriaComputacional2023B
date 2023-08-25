Linea l1, l2;
EjeCoordenado eje;
void setup () {
  size(512, 512);
  l1 = new Linea(-20, 10, 100, 50);
  l2 = new Linea(-20, -20, 100, -45);
  eje = new EjeCoordenado();
}

void draw () {
  //float x = 0.0/0.0;
  //println(x+10);
  translate(256, 256);
  eje.Dibujar();
  l1.Dibujar(100, 50, 10);
  l2.Dibujar(0, 100, 180);
  float theta = AnguloLineas(l1, l2);
  println(degrees(theta));
  PVector p = InterseccionLineas(l1, l2);
  noFill();
  arc(p.x, p.y, 100, 100, l2.Angulo(), l1.Angulo());
  fill(255);
}

float AnguloLineas (Linea l1, Linea l2) {
  return atan((l2.m-l1.m)/(1+l1.m*l2.m)); 
}

PVector InterseccionLineas(Linea l1, Linea l2) {
  float x = (l2.b-l1.b)/(l1.m-l2.m);
  float y = l1.m*((l2.b-l1.b)/(l1.m-l2.m)) + l1.b;
  return new PVector(x,y);
}
