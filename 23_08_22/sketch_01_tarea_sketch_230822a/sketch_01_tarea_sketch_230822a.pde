Trapecio trapecio;
ArrayList<Trapecio> trapecios;

void setup () {
  size(512, 512);
  //trapecio = new Trapecio(40, 20, 100, 20, 120, 60, 20, 60);
  trapecio = new Trapecio (100, 100, 50, 30, 40);
  trapecios = new ArrayList<Trapecio>();
  int N = 1000;
  for (int n = 0; n < N; n++) {
    float x = random (0, width);
    float y = random (0, height);
    float bmax = random (50, 100);
    float bmin = bmax - random (20, bmax);
    float a = random (20, 40); 
    trapecios.add( new Trapecio(x, y, bmax, bmin, a));
  }
}

void draw () {
  trapecio.Dibujar();
  for (Trapecio t : trapecios) {
    t.Dibujar();
  }
}
