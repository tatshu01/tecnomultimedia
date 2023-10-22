// La función 'setup' se ejecuta al inicio del programa
//La construcción de al menos tres (3) clases con un (1) objeto/ instancia cada una (como mínimo).
//La aplicación debe poseer:
//Clases que puedan comunicarse entre sí y que
//puedan interactuar con eventos (al menos los objetos de una clase)

// Declaración de una variable 'juego' del tipo 'Juego'
Juego juego;

void setup() {
  // Configura el tamaño de la ventana del juego (500 píxeles de ancho y 400 píxeles de alto)
  size(500, 400);
  // Crea una nueva instancia de la clase 'Juego' y la asigna a la variable 'juego'
  juego = new Juego();
}

// La función 'draw' se ejecuta continuamente para actualizar la pantalla
void draw() {
  // Llama al método 'dibujar' del objeto 'juego' para representar el juego
  juego.dibujar();
}

// La función 'mouseClicked' se ejecuta cuando se hace clic en la ventana
void mouseClicked() {
  // Llama al método 'mouseClikeado' del objeto 'juego' para manejar el clic del mouse
  juego.mouseClikeado();
}
