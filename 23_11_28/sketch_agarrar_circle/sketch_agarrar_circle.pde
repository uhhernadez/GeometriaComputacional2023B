ArrayList<Grabable> nodes;

void setup () {
  size (512, 512);
  nodes = new ArrayList<Grabable>();
  for (int k = 0; k < 5 ; k++) {
    nodes.add(new Grabable());
  } 
}

void draw () {
  background(230);
  translate (width / 2.0, height / 2.0);
  for (Grabable g : nodes) {
    g.Draw();
  }
}

void DrawLine (PVector c, PVector p) {
  stroke(255,0,0);
  line(c.x, c.y, p.x, p.y);
}

void mousePressed() {
  // Si hay algún objecto agarra, no agarrar nada
  for (Grabable g: nodes) {
    if (g.estado == "agarrado") {
      return;
    }
  }
  // Si agarro un objecto, termino mi búsqueda
  /*
  for (Grabable g : nodes) {
    if(g.Grab()){
      return;
    }
  }*/
  for (int k = nodes.size()-1; k >=0; k--) {
    Grabable g = nodes.get(k);
    if(g.Grab()){
      return;
    }
  }
  
}

void mouseDragged() {
  
}

void mouseReleased() { 
  for (Grabable g : nodes) {
    g.Release();
  }
}
