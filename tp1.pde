//Florencia Moran
//legajo 91344/4
PImage delfin0;
PImage delfin1;


PImage delfin4;
PImage delfin5;
PImage delfin6;
PImage fondo;
PImage fondoMalo;
PImage delfinMalo;

float f1, r, g;
String estado;
int c;


int y, y2, y3, y4, y5;
void setup() {
  size (640, 480);

  y=500;
  y2=500;
  y3=500;
  y4=500;
  y5=500;
  r=255;
  //g=255;
  f1=255;
  estado= "menu";
  //textAlign(CENTER,CENTER);
  delfin0= loadImage("delfin0.png");
  delfin1= loadImage("delfin1.png");

  delfin4= loadImage("delfin4.png");
  delfin5= loadImage("delfin5.png");
  delfinMalo= loadImage("delfinMalo.png");
  fondo = loadImage("fondo.png");
  delfin6= loadImage("delfin6.jpg");
  fondoMalo= loadImage("fondoMalo.png");
}
void draw() {
  f1-=3;


  if (estado.equals ("menu")) {
    pushStyle();



    image(delfin0, 0, 0, 640, 480);
    fill(151, 192, 210);

    fill(0);
    circle(width/2, height/4*3, 50);
    fill(250);
    text("play", 308, height/4*3);





    popStyle();
  }
  //pantalla 1
  if (estado.equals ("p1")) {
    pushStyle();

    println();
    background(0);
    image(fondo, 0, 0, 640, 480);




    textSize(20);
    fill(250);

    text("Los delfines son mamíferos acuáticos caracterizados por una boca curvada\n que les otorga una sonrisa permanente. Por ello y por otros rasgos, como\n su carácter curioso y simpático, son unos de los animales que más gustan\n a las personas. Actualmente, existen 43 especies de delfines diferentes, de\n los cuales 38 son especies marinas y 5 son especies de río.\n Los delfines son cetáceos carnívoros y, también, son odontocetos,\n es decir, que tienen dientes. Se caracterizan por tener dos aletas laterales\n y una aleta triangular en su parte superior, junto con una cola horizontal\n que usan para impulsarse y un hocico en forma de pico", 20, y);
    //tiempo

    if ( y >= 80 ) {
      y--;
    }
    c++;
    if (c >= 1800) {
      estado= "p2";
      y=500;
      c= 0;
      popStyle();
    }
  }
  //pantalla 2
  if (estado.equals ("p2")) {
    pushStyle();
    println();
    background(0, 0, 250);
    image(delfin4, 0, 0, 640, 480);
    textSize(20);
    text("Los delfines presentan una distribución global, es decir, que están por\n todo el mundo, desde el Ecuador hasta regiones subpolares evitando\n aguas extremadamente frías, aunque la mayoría de las especies se \ncentren en zonas temperadas y áreas tropicales.Normalmente, habitan\n mares poco profundos en zonas de plataformas continentales y, aunque\n la mayoría de las especies de delfines son marinos, también hay algunas\n que viven en aguas dulces. La distribución y el hábitat de los delfines es\n diferente para cada especie, aunque todos serán capaces de cambiar su\n hábitat cuando sea necesario para sobrevivir", 23, y2);

    if ( y2 >= 80 ) {
      y2--;
    }
    c++;
  }
  if (c >= 1800) {
    estado= "p3";
    y2=500;
    c= 0;

    popStyle();
  }
  //pantalla 3
  if (estado.equals ("p3")) {
    pushStyle();
    image(delfin5, 0, 0, 640, 480);
    textSize(27);
    fill(0);
    text("Reproducción de los delfines\n . Amamantan a sus crías hasta los dieciocho meses\n y permanecen con su madre hasta los tres años.\n Durante este tiempo, otro delfín les hace de niñera\n (ya sea macho o hembra) y será el único delfín que la\n madre permitirá que se acerque a la cría. Los delfines\n tienen más de una pareja a lo largo de su vida y, en\n general, dan a luz a una sola cría cada vez. ", 25, y3);
    if ( y3 >= 40 ) {

      y3--;
    }


    c++;
  }
  if (c >= 1800) {
    estado= "p4";
    y3=500;
    c= 0;
    popStyle();
  }

  //pantalla 4
  if (estado.equals("p4")) {
    pushStyle();
    background(250);
    image(delfin6, 0, 0, 640, 480);


    fill(25);
    textSize(20);
    text("Otras características notables y entrañables de los delfines son, por\n ejemplo, que disfrutan de la compañía de los perros, cuidan a sus amigos\n enfermos, juegan e incluso salvan a ballenas, son capaces de pedir ayuda,\n de ayudar al humano a pescar o de hacer cosas por simple diversión.", 25, y4);
    if ( y4 >= 40 ) {
      y4--;
    }

    if (c >= 1500) {
      background(0);
      image(delfin1, 0, 0, 400, 480);
      r-=0.9;

      fill(r, g, 0 );
      text("pero no todo es bueno", 400, 200);
    }

    c++;
  }
  if  (c >= 1800) {
    estado= "p5";
    y4=500;
    c= 0;
    r=250;
  }
  //pantalla 5
  if (estado.equals("p5")) {
    pushStyle();

    image(fondoMalo, 0, 0, 640, 480);
    fill(250, 0, 0);
    textSize(20);
    text("los delfines matan a las crias para que las madres vuelvan a entrar en celo\n despues se juntan en grupo para intimar con ella y si esta se reciste los\n delfines machos la golpearan asta que esta ceda o muera, e de decir que\n son necrofilicos(cuidado cuando interactuen con un delfin porque se a\n registrado que pueden llegar a sentir atraccion hacia las personas). como\n habia dicho, los delfines hacen cosas con la finalidad de divertise\n pero eso no significa que sean moralmente buenas despues de todo los \n delfines golpean y muerden cuidadosamente a los pez globo para que no\n mueran rapido y puedan soltar la toxina  que  los delfines usan para\n drogarse  y se van pasando el pez como si pelota se tratase, asta que el\n pez globo muera sino que gracia tendria para esos psicopatas del mar", 25, y5);
    if ( y5 >= 40 ) {

      y5--;
    }

    c++;
  }
  if  (c >= 1800) {
    estado= "fin";
    y5=500;
    c= 0;
    popStyle();
  }

  //pantalla fin
  if (estado.equals("fin")) {

    image(delfinMalo, 0, 0, 640, 480);
    fill(0);
    text("con esto podemos llegar a la conclucion que los delfines no son unos\n angeles, pero tampoco hay que mirarlo como si el diablo se tratace\n despues de todo ese puesto ya a sido ganado por un ser peludo que le\n encanta torturar a cualquier ser vivo existente (gato)", 40, height/2);
    circle(width/2, height/4*3, 50);
  }
}



void mousePressed() {
  if (estado.equals("menu")) {
    if (dist(width/2, height/4*3, mouseX, mouseY)<50/2) {
      estado= "p1" ;
    }
  }
  if (estado.equals("fin")) {
    if (dist(width/2, height/4*3, mouseX, mouseY)<50/2) {
      estado= "menu" ;
    }
  }
}
