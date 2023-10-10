class Grid {
  color lineColor;
  float gridWidth;
  float maxLength;
  
  Grid () {
    lineColor = color(125);
    gridWidth = 20;
    maxLength = 500;
  }

  void Draw () {
    stroke(lineColor);
    strokeWeight(1);
    for (float x = -maxLength; x <= maxLength; x+=gridWidth) {
      line(x, -maxLength, 0, x, maxLength, 0);
    }
    
    for (float y = -maxLength; y <= maxLength; y+=gridWidth) {
      line(-maxLength, y, 0, maxLength, y, 0);
    }
  }

}
