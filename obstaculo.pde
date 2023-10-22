class Obstaculo {
  // Atributos
  PImage oso; // Imagen del obstáculo (oso)
  int posXObstaculo, posYObstaculo, anchoObstaculo, altoObstaculo; // Posición y dimensiones del obstáculo (oso)
  float velocidad; // Velocidad del obstáculo

  // Constructor
  Obstaculo(int posXObstaculo, int posYObstaculo) {
    // Carga la imagen del obstáculo (oso) desde un archivo
    this.oso = loadImage("oso.png");

    // Inicializa las propiedades del obstáculo
    this.anchoObstaculo = 70;
    this.altoObstaculo = 70;
    this.posXObstaculo = posXObstaculo;
    this.posYObstaculo = posYObstaculo;
    this.velocidad = 5; // Configura la velocidad del obstáculo
  }

  // Acción para dibujar el obstáculo
  void dibujar() {
    image(this.oso, this.posXObstaculo, this.posYObstaculo, this.anchoObstaculo, this.altoObstaculo);
    moverOstaculo();
  }

  // Mueve el obstáculo hacia la izquierda
  void moverOstaculo() {
    this.posXObstaculo -= this.velocidad;
  }

  // Evalúa si hay una colisión con el personaje (ricito)
  boolean chocarConricito(float posXSub, float posYSub, float anchoSub, float altoSub) {
    if (
      posXSub - anchoSub / 2 < this.posXObstaculo + this.anchoObstaculo / 2 &&
      posXSub + anchoSub / 2 > this.posXObstaculo - this.anchoObstaculo / 2 &&
      posYSub - altoSub / 2 < this.posYObstaculo + this.altoObstaculo / 2 &&
      posYSub + altoSub / 2 > this.posYObstaculo - this.altoObstaculo / 2
    ) {
      // Si hay una colisión, se retorna true (perder)
      return true;
    } else {
      // Si no hay colisión, se retorna false (no perder)
      return false;
    }
  }
}
