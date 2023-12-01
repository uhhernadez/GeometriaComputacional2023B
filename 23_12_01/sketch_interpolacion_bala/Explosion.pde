class Explosion {
  bool isPlaying;
  bool loop;
  int index;
  float fs = 0.5;
  float tf;
  ArrayList<PImage> sequence;
  
  Explosion () {
    sequence = ArrayList <PImage>();
    sequence.add(loadImage("explosions/output-0.png"));
    sequence.add(loadImage("explosions/output-1.png"));
    sequence.add(loadImage("explosions/output-2.png"));
    sequence.add(loadImage("explosions/output-3.png"));
    sequence.add(loadImage("explosions/output-4.png"));
    isPlaying = false;
    loop = false;
    index = 0;
  }
  
  void Draw () {
    float t = millis() / 1000.0;
    
    if (isPlaying) {
      PImage img = sequence.get(index);
      image(img, 0, 0);
      
      if (t - tf > fs) {
        index++;
        tf = t;
      }
      
      if (index >= sequence.size()) {
        if (loop) {
          index = 0;
        } else {
          index = sequence.size() - 1;
          isPlaying = false;
        }
      }
    } else {
      PImage img = sequence.get(index);
      image(img, 0, 0);
    }

  }

  void Play() { 
    isPlaying = true;
    float t = millis () / 1000.0;
    tf = t;
  }
  
  void Stop () {
    isPlaying = false;
    index = 0;
  }
  
  void Loop () {
    loop = !loop;
  }

}
