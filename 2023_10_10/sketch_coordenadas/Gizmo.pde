class Gizmo {
  int strokeWidth;
  float l;
  Gizmo () {
    strokeWidth = 3;
    l = 100;
  }
  
  Gizmo (int sw, float l) {
    strokeWidth = sw;
    this.l = l;
  }

  void Draw () {
    strokeWeight (strokeWidth);
    stroke(255,0,0);
    line(0,0,0, l/*x*/, 0,0);
    stroke(0,255,0);
    line(0,0,0, 0, l/*y*/,0);
    stroke(0,0,255);
    line(0,0,0, 0, 0,l/*z*/);
    stroke(0);
  }
}
