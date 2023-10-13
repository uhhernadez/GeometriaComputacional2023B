class Enderman {
  Piece leg_right;
  Piece leg_left;
  Piece body;
  Piece head;
  Piece arm_right;
  Piece arm_left;
  PVector position;
  PVector theta;

  Enderman () {
    leg_right = new Piece (0, 0, -50, 8, 8, 100 );
    leg_left = new Piece (0, 0, -50, 8, 8, 100 );
    body = new Piece(0, 0, 0, 35, 20, 45);
    head = new Piece(0,0, 35/2.0, 35, 35, 35);
    arm_right = new Piece (0, 0, -50, 8, 8, 100 );
    arm_left = new Piece (0, 0, -50, 8, 8, 100 );
    
    position = new PVector();
    theta = new PVector();
  }
  
  void Draw() {
    float t = millis () / 1000.0;
    float f = 1;
    leg_right.theta.x = radians(45) * cos(2*PI*f*t);
    leg_left.theta.x = -radians(45) * cos(2*PI*f*t);
    
    arm_right.theta.x = -radians(90) * cos(2*PI*f*t);
    arm_left.theta.x = radians(90) * cos(2*PI*f*t);
  
    head.theta.z = radians(20) * cos(2*PI*1.5*t);
    head.theta.x = radians(20) * cos(2*PI*0.1*t);
    
    pushMatrix();
      rotateX(theta.x);
      rotateY(theta.y);
      rotateZ(theta.z);
      translate(position.x, position.y, position.z);
      
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
