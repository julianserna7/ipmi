void dibujarGrilla(int dimGrilla, float tamCelda, float desplazamientoX, float desplazamientoY) {
  for (int i = 0; i < dimGrilla; i++) {
    for (int j = 0; j < dimGrilla; j++) {
      float posX = calcularPosX(i, tamCelda, desplazamientoX);
      float posY = calcularPosY(j, tamCelda, desplazamientoY);
      float tamCirculo = calcularTam(i, j, dimGrilla, tamCelda);
      ellipse(posX, posY, tamCirculo, tamCirculo);
    }
  }
}

float calcularPosX(int i, float tamCelda, float desplazamientoX) {
  return desplazamientoX + i * tamCelda + tamCelda / 2;
}

float calcularPosY(int j, float tamCelda, float desplazamientoY) {
  return desplazamientoY + j * tamCelda + tamCelda / 2;
}

float calcularTam(int i, int j, int dimGrilla, float tamCelda) {
  float xDiag = i;
  float yDiag = dimGrilla - 1 - i;
  float distan = dist(i, j, xDiag, yDiag);
  float distanMax = dist(0, dimGrilla - 1, dimGrilla - 1, 0);
  float tamMax = tamCelda;
  float tamMin = tamCelda * 0.1;
  return map(distan, 0, distanMax, tamMax, tamMin);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fondo = color(random(250), random(255), random(255));
    circulos = color(random(127), random(127), random(127));
  } else if (mouseButton == RIGHT) {
    cant++;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    fondo = 255;
    circulos = 0;
    cant = 14;
  }
}
