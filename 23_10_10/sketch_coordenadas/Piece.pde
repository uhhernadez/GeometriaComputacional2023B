class Piece {
  Gizmo gizmo;
  float theta;
  PVector offset;
  float w, h, d;
  
  Piece (float ox, float oy, float oz, float w, float h, float d) {
    gizmo = new Gizmo(1, 20);
    offset = new PVector(ox, oy, oz);
    this.w = w;
    this.h = h;
    this.d = d;
  }
  void Draw () {
    pushMatrix();
      rotateX(theta);
      gizmo.Draw();
      translate(offset.x, offset.y, offset.z);
      box(w, h, d);
    popMatrix();
  }

}
