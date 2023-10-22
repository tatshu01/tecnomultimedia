class ricito {
  // Atributos
  PImage ricito;  // Imagen del personaje "ricito"
  float posXSub, posYSub, anchoSub, altoSub, posActual; // Posición y dimensiones del personaje
  float velocidad, limiteSalto, alturaSalto, suelo, limiteDeSalto; // Parámetros relacionados con el salto
  boolean saltando, bajar, subir, vivo; // Variables de estado

  // Constructor
  ricito() {
    // Carga la imagen del personaje "ricito" desde un archivo
    this.ricito = loadImage("ricito.png");

    // Inicializa las propiedades del personaje
    this.anchoSub = 90;
    this.altoSub = 90;
    this.posXSub = 10;
    this.posYSub = 250;

    // Configura la velocidad y altura del salto
    this.velocidad = 5;
    this.alturaSalto = 90;
    this.suelo = this.posYSub;
    this.limiteDeSalto = this.alturaSalto;
    this.subir = true;
    this.vivo = true;
  }

  // Acción para dibujar el personaje
  void dibujar() {
    if (vivo) {
      image(this.ricito, this.posXSub, this.posYSub, this.anchoSub, this.altoSub);
      this.actualizar();
    }
  }

  // Actualiza la posición del personaje
  void actualizar() {
    if (keyPressed && keyCode == UP) {
      this.saltando = true;
      if (saltando == true) {
      }
    }
    if (keyPressed && keyCode == LEFT) {
      this.posXSub -= this.velocidad;
    }
    if (keyPressed && keyCode == RIGHT) {
      this.posXSub += this.velocidad;
    }
    if (this.saltando == true) {
      this.logicaDeSalto();
    }
  }

  // Lógica para controlar el salto del personaje
  void logicaDeSalto() {
    if (this.subir == true && this.bajar == false) {
      this.posYSub = this.posYSub - 6;
      if (this.posYSub < this.limiteDeSalto) {
        this.bajar = true;
        this.subir = false;
      }
    } else if (this.subir == false && this.bajar == true) {
      this.posYSub = this.posYSub + 6;
      if (this.posYSub >= this.suelo) {
        this.bajar = false;
        this.subir = true;
        this.saltando = false;
      }
    }
  }

  // Marca al personaje como "no vivo"
  void perder() {
    vivo = false;
  }
}
