class Boton {
  // Atributos
  int posX, posY, ancho, alto; // Posición y dimensiones del botón
  String txt; // Texto que se muestra en el botón

  // Constructor
  Boton(String _txt, int _posY) {
    // Inicializa las propiedades del botón
    this.posX = width / 2; // El botón se coloca en el centro horizontal de la ventana
    this.posY = _posY; // La posición vertical del botón se especifica al crearlo
    this.ancho = 100; // Ancho del botón
    this.alto = 50; // Alto del botón
    this.txt = _txt; // Texto que se muestra en el botón
  }

  // Acción para dibujar el botón
  void dibujar() {
    if (estoySobreBoton()) {
      fill(#C4C2C2); // Cambia el color del botón cuando el mouse está sobre él
    } else {
      fill(255); // Color normal del botón
    }

    rectMode(CENTER);
    rect(this.posX, this.posY, this.ancho, this.alto, 5); // Dibuja el botón como un rectángulo
    fill(0); // Color del texto
    textSize(15); // Tamaño del texto
    text(this.txt, this.posX + 3, this.posY + 5); // Muestra el texto en el botón
  }

  // Verifica si el mouse está sobre el botón
  boolean estoySobreBoton() {
    if (mouseX > this.posX && mouseX < this.posX + this.ancho && mouseY > this.posY && mouseY < this.posY + this.alto) {
      return true; // El mouse está sobre el botón
    } else {
      return false; // El mouse no está sobre el botón
    }
  }
}
