
// florencia moran, comision 2. Trabajo practico n°3 Aventura grafica
/*Resolución de 600x600
 Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor
 Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
 Condicionales (if - else).
 Ciclos FOR
 Manejo de arreglos
 Eventos (mouse y/o teclado): modificación de variables.
 Algunas funciones matemáticas: dist(), map(), random();*/
//Historia de ricitos de oro con 3 finales distintos con 21 pantallas
PImage[] fondos;
int pantalla = 0;
int spacing = 50;
float diameter = 30;
String[] textos = new String[24];

void setup() {
  size(600, 600);
  //cargo las fotos
  fondos = new PImage[20];
  fondos[1] = loadImage("imagen1.jpg");
  fondos[3] = loadImage("madreloca.jpg");
  fondos[4] = loadImage("imagenfinal.png");
  fondos[5] = loadImage("imagen5.jpg");
  fondos[6] = loadImage("ricito.jpg");
  fondos[7] = loadImage("ricito2.jpg");
  fondos[8] = loadImage("casa.jpg");
  fondos[9] = loadImage("cabaña.jpg");
  fondos[10] = loadImage("osos.jpg");
  fondos[11] = loadImage("bosque.jpg");
  fondos[12] = loadImage("bosque2.jpg");
  fondos[13] = loadImage("cabañaD.jpg");
  fondos[14] = loadImage("ricito4.jpg");
  fondos[15] = loadImage("ricitos5.jpg");
  fondos[16] = loadImage("puerta.jpg");
  fondos[17] = loadImage("dormitorio.jpg");

  fondos[19] = loadImage("creditos.png");

  //cargo los textos de la aventura


  textos [1] = "estabas en tu habiracion tranqui jugando unas partida del lol";
  textos [2] = "Madre: ricitos siempre estas metida aca en tu habitacion encima un olor de encierro podes salir de una vez de tu habiracion y divertirte afuera como en mis tiempos";
  textos [3] = "tu madre no le importo tu opinion y te echo a patadas";
  textos [4] = "Ricitos: vieja de mierda, que le interesa si estoy afuera o adentro (murmura enojada)";
  textos [5] = "Ricitos: no me va dejar entrar asta que sea de noche, ¿ahora que hago?";
  textos [6] = "decide quedarse en la puerta asta que su madre le habra la puerta";
  textos [7] = "pasan 2 horas y la madre se arrepintio y la dejo entrar";

  textos [9] =" te adentraste al bosque buscando algo interesante";
  textos [10] ="encuentras una cabaña y notas que no hay nadie adentro";
  textos [11] ="te quedas afuera asta que venga el propiestario ya pasaron 4 horas tu madre debe estar preocupada";
  textos [12] ="el propiestario vino y resulto ser tres osos hambrientos";
  textos [13] ="los oso se pusieron muy felices y le agredecieron a dios por la comida";
  textos [14] ="entra a la casa y resulta que habia tres platos de avena";
  textos [15] ="tenia mucha hambre por todo lo que camino y se morfo todo";
  textos [16] = "Ricitos: que horrible que estaba, que ganas de vomitar";
  textos [17] ="30 minunos despues";

  textos [18] ="descubre que hay una puerta donde lleva un dormitorio con tres camas";
  textos [19] ="decide dormir en la cama mas pequeña porque era la mas comoda de todas";
  textos [20] ="se dormio 4 horas y se hizo de noche";
  textos [21] ="los osos volvieron de una cazaria fracasada y cuando vieron que alguien se comio su comida se enojaron mucho, pero luego vieron a ricitos de oros estando duermiendo y sepusieron muy feliz le dieron las gracias a dios y se la morfaron";
}
void draw() {



  background(0);
  if ( pantalla==0) {

    //muestro la pantalla 0 y el resto de las pantallas
    image( fondos[5], 0, 0, width, height);
    Botoncircular("Comienzo", 150, 500, 120);
    Botoncircular("Creditos", 450, 500, 120);
  } else if ( pantalla == 1 ) {
    image( fondos[1], 0, 0, width, height);
    textSize(30);
    //textAlign( CENTER );
    text( textos[1], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 2 ) {
    textSize(20);
    image( fondos[3], 0, 0, width, height);
    //textAlign( CENTER );
    text( textos[2], 0, 100, 600, 600);
    Botoncircular("no me jodas ma", 150, 500, 120);
    Botoncircular("bueno ma(sale enojada)", 450, 500, 120);
  } else if ( pantalla == 3 ) {
    image( fondos[19], 0, 0, width, height);
    Botoncircular("inicio", 450, 500, 120);
  } else if ( pantalla == 4 ) {
    textSize(20);
    image (fondos[6], 0, 0, width, height);
    // textAlign( CENTER );
    text( textos[3], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 5 ) {
    textSize(20);
    textAlign( CENTER );
    text( textos[4], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 6 ) {
    image (fondos[6], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[5], 0, 100, 600, 600);
    Botoncircular("quedarse esperando", 150, 500, 120);
    Botoncircular("entrar al bosque", 450, 500, 120);
  } else if ( pantalla == 7 ) {
    image (fondos[7], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[6], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 8 ) {
    image( fondos[4], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[7], 0, 250, 600, 600);
    Botoncircular("Inicio", 150, 500, 120);
  } else if ( pantalla == 9 ) {
    image( fondos[11], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );

    textSize(20);
    textAlign( CENTER );
    text( textos[9], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 10 ) {
    image( fondos[9], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[10], 0, 100, 600, 600);
    Botoncircular("no entrar", 150, 500, 120);
    Botoncircular("entrar", 450, 500, 120);
  } else if ( pantalla == 11 ) {
    image( fondos[12], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[11], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 12 ) {
    image( fondos[10], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[12], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 13 ) {
    image( fondos[4], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[13], 0, 250, 600, 600);
    Botoncircular("Inicio", 150, 500, 120);
  } else if ( pantalla == 14 ) {
    image( fondos[13], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[14], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 15 ) {
    image( fondos[14], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[15], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 16 ) {
    float spacing = 80; // Espaciado entre los círculos
    float diameter = 30; // Diámetro de los círculos
    for (int i = 0; i < 3; i++) {
      float x = i * spacing + spacing/2;

      fill(250);
      ellipse(x, 200, diameter, 40);
    }

    textSize(20);
    textAlign( CENTER );
    text( textos[17], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 17 ) {

    image( fondos[15], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[16], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 18 ) {
    image( fondos[16], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[18], 0, 100, 600, 600);
    Botoncircular("Abrir", 150, 500, 120);
  } else if ( pantalla == 19 ) {


    image( fondos[17], 0, 0, width, height);
    //image( fondos[2], 0,0,width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[19], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 20 ) {
    image( fondos[17], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[20], 0, 100, 600, 600);
    Botoncircular("Siguiente", 150, 500, 120);
  } else if ( pantalla == 21 ) {
    image( fondos[10], 0, 0, width, height);
    textSize(20);
    textAlign( CENTER );
    text( textos[21], 0, 250, 600, 600);
    Botoncircular("Inicio", 150, 500, 120);
  }
}
//puse el mouse clicked para que sea mas ordenado en vez de mousePressed
void mouseClicked() {
  if ( pantalla==0) {
    //muestro la pantalla 0 y el resto de las pantallas
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=1;
    }
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=3;
    }
  } else if ( pantalla == 1 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=2;
    }
  } else if ( pantalla == 2 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=4;
    }
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=5;
    }
  } else if ( pantalla == 3 ) {
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=0;
    }
  } else if ( pantalla == 4 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=5;
    }
  } else if ( pantalla == 5 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=6;
    }
  } else if ( pantalla == 6 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=7;
    }
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=9;
    }
  } else if ( pantalla == 7 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=8;
    }
  } else if ( pantalla == 8 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=0;
    }
  } else if ( pantalla == 9 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=10;
    }
  } else if ( pantalla == 10 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=11;
    }
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=14;
    }
  } else if ( pantalla == 11 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=12;
    }
  } else if ( pantalla == 12 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=13;
    }
  } else if ( pantalla == 13 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=0;
    }
  } else if ( pantalla == 14 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=15;
    }
  } else if ( pantalla == 15 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=16;
    }
  } else if ( pantalla == 16 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=17;
    }
  } else if ( pantalla == 17 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=18;
    }
  } else if ( pantalla == 18 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=19;
    }
  } else if ( pantalla == 19 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=20;
    }
  } else if ( pantalla == 20 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=21;
    }
  } else if ( pantalla == 21) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=0;
    }
  }
}
