int tileSize = 40;    // Tamaño de cada baldosa
int numRows = 8;      // Número de filas
int numCols = 20;     // Número de columnas
boolean isRotated = false;  // Indica si la ilusión está rotada o no
PImage ilusion;
void setup() {
  size(800, 400);  // Establece el tamaño de la ventana
  background(255); // Establece el color de fondo de la ventana como blanco
  ilusion=loadImage("ilusion.jpeg");
}

void draw() {
  background(255);  // Limpia el fondo en cada cuadro
  image(ilusion,0,0,400,400);
  translate(400, 400);  // Mueve el origen a (400, 400)
  
  if (isRotated) {
    rotate(radians(45));  // Rota la ilusión en 45 grados
  }
  
  drawCafeWall(tileSize, numRows, numCols);  // Dibuja la ilusión óptica "Café Wall"
}

void drawCafeWall(int tileSize, int numRows, int numCols) {
  for (int row = 0; row < numRows; row++) {  // Recorre cada fila
    for (int col = 0; col < numCols; col++) {  // Recorre cada columna
      int x = col * tileSize;  // Calcula la posición x de la baldosa
      int y = row * tileSize;  // Calcula la posición y de la baldosa
      
      if ((row % 2 == 0 && col % 2 == 0) || (row % 2 != 0 && col % 2 != 0)) {
        fill(0);  // Si es una baldosa par o impar, establece el color negro
      } else {
        fill(255);  // Si es una baldosa impar o par, establece el color blanco
      }
      
      rect(x, y, tileSize, tileSize);  // Dibuja la baldosa en la posición correspondiente
    }
  }
}

void mousePressed() {
  isRotated = !isRotated;  // Invierte el estado de la rotación al hacer clic con el mouse
}

float calculateCircleArea(float radius) {
  float area = PI * pow(radius, 2);  // Calcula el área del círculo usando la fórmula π * r^2
  return area;  // Retorna el área del círculo
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetVariables();  // Reinicia las variables al presionar la tecla "R" o "r"
  }
}

void resetVariables() {
  tileSize = 40;  // Restablece el tamaño de la baldosa
  numRows = 8;  // Restablece el número de filas
  numCols = 20;  // Restablece el número de columnas
  isRotated = false;  // Restablece el estado de la rotación
}
