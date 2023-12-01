float t0;
float T;

void setup () {
  size (500, 500);
  t0 = millis()/1000.0;
  T = 1;
}

void draw () {
 background(170);
 float start = 50;
 float stop = 100;
 float t = millis()/1000.0;
 float amt = (t - t0) / T;
 amt = (amt > 1) ? 1 : amt;
 float x = lerp(start, stop, amt );
 noFill();
 circle(start, 100, 40);
 circle(stop, 100, 40);
 fill(240);
 circle(x, 100, 40);
}
