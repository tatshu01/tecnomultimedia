PImage img;
float movimiento;

void setup() {
  size(800, 400);
  img = loadImage("img.jpg");
}

void draw() {
  background(255);
  image(img, 0, 0, 400, 400);
  invertirColores();
  translate(600, 200);
  dibujoArte();
  if (mouseX > 400) {
    movimiento += 0.1;
  }
}

void dibujoArte() {
  for (int i = 0; i < 50; i++) {
    rotate(radians(movimiento));
    rectMode(CENTER);
    float tamaño = map(i, 0, 29, 400, 30);
    fill(i % 2 * 250);
    rect(0, 0, tamaño, tamaño);
    scale(0.9);
  }
}

void invertirColores() {
  blendMode(DIFFERENCE);
  triangle(600, 200, 400, 400, 400, 0);
  triangle(600, 200, 800, 400, 800, 0);
}

void mouseClicked() {
  movimiento = 0;
}

float calcularPromedio(float a, float b, float c) {
  float promedio = (a + b + c) / 3;
  return promedio;
}
