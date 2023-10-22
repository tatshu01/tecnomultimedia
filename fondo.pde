class fondo {
  // Atributos
  PImage fondo; // Imagen de fondo
  float posXFondom, posYFondom, anchoFondom, altoFondom, velXFondom; // Posición y dimensiones del fondo
  boolean juego; // Variable que indica si el juego está en marcha

  // Constructor
  fondo() {
    // Carga la imagen de fondo desde un archivo
    this.fondo = loadImage("fondo.png");

    // Inicializa las propiedades del fondo
    this.posXFondom = 0; // Posición horizontal inicial del fondo
    this.velXFondom = -2; // Velocidad de desplazamiento horizontal del fondo
  }

  // Acción para dibujar el fondo
  void dibujar() {
    // Dibuja la imagen de fondo, creando un efecto de desplazamiento horizontal
    image(this.fondo, this.posXFondom, 0, width * 2, height);

    // Actualiza la posición del fondo según su velocidad
    this.posXFondom += this.velXFondom;

    // Si el fondo se desplaza completamente fuera de la ventana, lo reinicia
    if (this.posXFondom < -width) {
      this.posXFondom = 0;
    }
  }
}
