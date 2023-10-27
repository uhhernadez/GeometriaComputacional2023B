class Piece {
  Gizmo gizmo;
  PVector theta;
  PVector offset;
  float w, h, d;
  
  Piece (float ox, float oy, float oz, float w, float h, float d) {
    gizmo = new Gizmo(1, 40);
    offset = new PVector(ox, oy, oz);
    this.w = w;
    this.h = h;
    this.d = d;
    theta  = new PVector();
  }
  void Draw () {
    pushMatrix();
      rotateX(theta.x);
      rotateY(theta.y);
      rotateZ(theta.z);
      //gizmo.Draw();
      translate(offset.x, offset.y, offset.z);
      box(w, h, d);
    popMatrix();
  }

}
