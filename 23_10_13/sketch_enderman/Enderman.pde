class Enderman {
  Piece leg_right;
  Piece leg_left;
  Piece body;
  Piece head;
  Piece arm_right;
  Piece arm_left;

  Enderman () {
    leg_right = new Piece (0, 0, -50, 8, 8, 100 );
    leg_left = new Piece (0, 0, -50, 8, 8, 100 );
    body = new Piece(0, 0, 0, 35, 20, 45);
    head = new Piece(0,0, 35/2.0, 35, 35, 35);
    arm_right = new Piece (0, 0, -50, 8, 8, 100 );
    arm_left = new Piece (0, 0, -50, 8, 8, 100 );
  }
  
  void Draw() {
    pushMatrix();
      pushMatrix();
        translate(-10, 0, 100);
        leg_right.Draw();
      popMatrix();
 
      pushMatrix();
        translate(10, 0, 100);
        leg_left.Draw();
      popMatrix();
  
      pushMatrix();
        translate(0, 0, 120);
        body.Draw();
      popMatrix();
  
      pushMatrix();
        translate(0, 0, 142.5);
        head.Draw();
      popMatrix();
  
      //head.theta.z = radians(10) * cos(2*PI*1.5*t+PI);
  
      pushMatrix();
        translate(-22.5, 0, 142.5);
        arm_left.Draw();
      popMatrix();
  
      pushMatrix();
        translate(22.5, 0, 142.5);
        arm_right.Draw();
      popMatrix();
    
    popMatrix();
  }

}
