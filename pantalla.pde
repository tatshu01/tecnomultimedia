class Pantalla {
  // Atributos
  PFont tipografia; // Fuente de texto
  String texto; // Texto que se muestra en la pantalla
  color _colorTexto, fondo; // Colores para el texto y el fondo de la pantalla

  // Constructor
  Pantalla(String texto, color _colorTexto, color fondo_) {
    this.texto = texto;
    this._colorTexto = _colorTexto;
    this.tipografia = loadFont("ArialMT-15.vlw"); // Carga una fuente
    this.fondo = fondo_;
  }

  // Acción para dibujar la pantalla
  void dibujar() {
    textFont(this.tipografia); // Configura la fuente de texto
    background(fondo); // Establece el color de fondo de la pantalla
    fill(_colorTexto); // Establece el color del texto
    textSize(20); // Tamaño del texto
    textAlign(CENTER); // Alineación del texto al centro
    text(this.texto, 250, 150); // Muestra el texto en el centro de la pantalla
  }
}
