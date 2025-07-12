//https://www.youtube.com/watch?v=p4Ad31CIcu8
//Serna, Julián Octavio
//Comisión 1

PImage obra16;
int cant = 14;
color fondo;
color circulos;

void setup() {
  size(800, 400);
  noStroke();
  obra16 = loadImage("16.png");
  fondo = color(255);
  circulos = color(0);
}

void draw() {
  float tamCelda = width / 2.0 / cant;
  float desplazamientoX = width / 2.0;
  float desplazamientoY = 0;
  background(fondo);
  image(obra16, 0, 0);
  fill(circulos);
  dibujarGrilla(cant, tamCelda, desplazamientoX, desplazamientoY);
}
