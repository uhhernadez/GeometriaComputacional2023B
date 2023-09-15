class Tile {
  PVector p1, p2, p3;
  float l1, l2, l3;
  color f1, f2, f3;
  
  Tile (float x, float y, float l) {
    p1 = new PVector (x, y);
    l1 = l;
    // Se calcula el lado 2
    l2 = random(70, 90); // Cambiar estos rangos
    float dl2 = (l1 - l2)/2;
    p2 = new PVector(dl2, dl2);
    float dl3 = 10; // Cambiar esto
    l3 = l2 - 2*dl3;
    p3 = new PVector(p2.x + dl3, p2.y + dl3);
    f1 = color(random(100, 150), random(50, 200), random(130, 250));
    f2 = color(random(100, 150), random(50, 200), random(130, 250));
    f3 = color(random(100, 150), random(50, 200), random(130, 250));
  }

  void Draw () {
    fill(f1);
    square(p1.x, p1.y, l1);
    fill(f2);
    square(p1.x + p2.x, p1.y + p2.y, l2);
    fill(f3);
    square(p1.x + p3.x, p1.y + p3.y, l3);
  }
  
  void Translate (float dx, float dy) {
    p1.add(dx, dy);
  }
}
