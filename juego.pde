 class Juego {
  // Atributos
  Boton botonComenzar, botonReiniciar; // Botones para comenzar y reiniciar el juego
  Pantalla pantallaComenzar, pantallaGanar, pantallaPerder, pantallaJugar; // Pantallas de inicio, ganar, perder y juego
  ricito ricito; // Personaje del juego
  int cantObstaculo = 10;
  Obstaculo[] obstaculo = new Obstaculo[cantObstaculo]; // Arreglo de obstáculos
  fondo fondoJuego; // Fondo del juego
  int pantalla, contador; // Estado del juego y contador de puntos
  boolean perder; // Indicador de si el juego está perdido

  // Constructor
  Juego() {
    // Inicializa los elementos del juego
    this.ricito = new ricito();
    for (int i = 0; i < this.cantObstaculo; i++) {
      int posXObstaculo = 400 * (i + 1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 270);
    }
    this.pantallaComenzar = new Pantalla("¡HEY!\n\nJunta 2000 puntos y evita tocar a los osos", #FFFFFF, 0);
    this.pantallaPerder = new Pantalla("NOO UN OSO TE AGARRO Y TE COMIO", #FFFFFF, 0);
    this.pantallaGanar = new Pantalla("No te chocaste con el oso :D, lograste llegar a tu casa antes de que tu mamá se enoje :)", #FFFFFF, 0);
    this.botonComenzar = new Boton("Comenzar", 280);
    this.botonReiniciar = new Boton("Reiniciar", 280);
    this.fondoJuego = new fondo();
    this.contador = 0;
    this.perder = false;
    this.pantalla = 0;
  }

  // Acción para dibujar el juego
  void dibujar() {
    // Dibuja las pantallas y elementos correspondientes a cada una
    if (this.pantalla == 0) {
      this.pantallaComenzar.dibujar();
      this.botonComenzar.dibujar();
    } else if (this.pantalla == 1) {
      background(200);
      this.fondoJuego.dibujar();
      this.ricito.dibujar();
      textSize(20);
      fill(#FFFFFF);
      text("Puntos:" + this.contador, 400, 30);
      for (int i = 0; i < this.cantObstaculo; i++) {
        this.obstaculo[i].dibujar();
        // Colisión con obstáculos
        if (this.obstaculo[i].chocarConricito(this.ricito.posXSub, this.ricito.posYSub, this.ricito.anchoSub, this.ricito.altoSub)) {
          this.ricito.perder();
        }
        // Sumar puntos
        if (saltarObstaculo(this.obstaculo[i])) {
          this.contador++;
        }
      }
    }
    if (this.contador >= 1500) {
      this.pantalla = 3; // Ganar el juego
    } else if (this.perder == this.ricito.vivo) {
      this.pantalla = 2; // Perder el juego
    }
    if (this.pantalla == 2) {
      this.pantallaPerder.dibujar();
      this.botonReiniciar.dibujar();
    } else if (this.pantalla == 3) {
      this.pantallaGanar.dibujar();
      this.botonReiniciar.dibujar();
    }
  }

  // Acción al hacer clic con el mouse
  void mouseClikeado() {
    if (this.pantalla == 0 && this.botonComenzar.estoySobreBoton()) {
      this.pantallaSieguiente();
    } else if (this.pantalla == 2 && this.botonReiniciar.estoySobreBoton()) {
      this.reiniciarJuego();
    } else if (this.pantalla == 3 && this.botonReiniciar.estoySobreBoton()) {
      this.reiniciarJuego();
    }
  }

  // Cambiar a la siguiente pantalla
  void pantallaSieguiente() {
    if (pantalla == 0) {
      this.pantalla = 1;
    } else if (pantalla == 2) {
      this.reiniciarJuego();
    } else if (pantalla == 3) {
      this.reiniciarJuego();
    }
  }

  // Función para reiniciar el juego
  void reiniciarJuego() {
    this.perder = false;
    this.contador = 0;
    this.pantalla = 0;
    this.ricito = new ricito();
    for (int i = 0; i < this.cantObstaculo; i++) {
      int posXObstaculo = 400 * (i + 1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 270);
      this.pantallaSieguiente();
    }
  }

  // Verificar si el personaje salta sobre un obstáculo
  boolean saltarObstaculo(Obstaculo obstaculo) {
    if (obstaculo.posXObstaculo <= 0) {
      return true;
    } else {
      return false;
       
    }
  }
}
