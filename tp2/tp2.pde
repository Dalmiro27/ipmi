//Castellano Dalmiro
//Tp2 Comision 1
PImage bienvenidos;
PImage strangerThings;
PImage friends;
PImage simuladores;
PImage got;

PFont fuente;

int botonX = 20;
int botonY = 20;
int botonAncho = 100;
int botonAlto = 40;

int pantallaActual = 1;
int tiempoUltimoCambio = 0;
int intervaloCambio = 380;

int transparencia = 0;
int transparencia1 = 0;
int transparencia2 = 0;
int transparencia3 = 0;
int transparencia4 = 0;

String texto = "Stranger Things: Una serie de ciencia ficción\nque sigue a un grupo de niños que descubren\nmisterios sobrenaturales en su ciudad.";
String texto2 = "Friends: Una comedia sobre un grupo de amigos\nque navegan por la vida y el amor en Nueva York.";
String texto3 = "Los Simuladores: Una serie argentina sobre un grupo\nde personas que resuelven problemas\nmediante operativos de simulación.";
String texto4 = "Game of Thrones: Una serie épica de fantasía\nque sigue la lucha por el trono de hierro.";
String texto5 = "¿Estás listo para conocer algunas\nde las mejores series y películas?";
String texto6 = "¡Bienvenidos a la presentación\nde series y películas!";

void setup() {
  size(800, 600);
  fuente = createFont("Arial Bold", 24);
  textFont(fuente);
  
  bienvenidos = loadImage("data/bienvenidos.jpg");
  strangerThings = loadImage("data/stranger_things.jpg");
  friends = loadImage("data/friends.jpg");
  simuladores = loadImage("data/simuladores.jpg");
  got = loadImage("data/got.jpg");
}

void draw() {
  println("X: " + mouseX + " ; Y: " + mouseY);
  if (frameCount - tiempoUltimoCambio >= intervaloCambio) {
    cambiarPantalla();
    tiempoUltimoCambio = frameCount; 
  }
  
  if (pantallaActual == 1) {
    pantalla1();
  } else if (pantallaActual == 2) {
    pantalla2();
  } else if (pantallaActual == 3) {
    pantalla3();
  } else if (pantallaActual == 4) {
    pantalla4();
  } else if (pantallaActual == 5) {
    pantalla5();
    int botonX = width - botonAncho;
    int botonY = height - botonAlto;
    fill(0);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
  }
}

void pantalla1() {
  background(255);
  if (bienvenidos != null) {
    bienvenidos.resize(800, 600);
    image(bienvenidos, 0, 0);
  }
  fill(245, 245, 220, transparencia);
  textSize(50);
  textAlign(CENTER, CENTER);
  text(texto6, width / 2, height / 2);
  if (transparencia < 255) {
    transparencia += 3;
  }
}

void pantalla2() {
  background(255);
  if (strangerThings != null) {
    strangerThings.resize(800, 600);
    image(strangerThings, 0, 0);
  }
  fill(245, 245, 220, transparencia1);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(texto, width / 2, height / 2);
  if (transparencia1 < 255) {
    transparencia1 += 3;
  }
}

void pantalla3() {
  background(255);
  if (friends != null) {
    friends.resize(800, 600);
    image(friends, 0, 0);
  }
  fill(245, 245, 220, transparencia2);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(texto2, width / 2, height / 2);
  if (transparencia2 < 255) {
    transparencia2 += 3;
  }
}

void pantalla4() {
  background(255);
  if (simuladores != null) {
    simuladores.resize(800, 600);
    image(simuladores, 0, 0);
  }
  fill(245, 245, 220, transparencia3);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(texto3, width / 2, height / 2);
  if (transparencia3 < 255) {
    transparencia3 += 3;
  }
}

void pantalla5() {
  background(255);
  if (got != null) {
    got.resize(800, 600);
    image(got, 0, 0);
  }
  fill(245, 245, 220, transparencia4);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(texto4, width / 2, height / 2);
  if (transparencia4 < 255) {
    transparencia4 += 3;
  }
}

void mousePressed() {
  if (pantallaActual == 5 &&
      mouseX >= width - botonAncho && mouseX <= width &&
      mouseY >= height - botonAlto && mouseY <= height) {
    reiniciarJuego();
  }
}

void reiniciarJuego() {
  pantallaActual = 1;
  tiempoUltimoCambio = frameCount;
  transparencia = 0;
  transparencia1 = 0;
  transparencia2 = 0;
  transparencia3 = 0;
  transparencia4 = 0;
}

void cambiarPantalla() {
  if (pantallaActual < 5) {
    pantallaActual++;
  }
  transparencia = 0;
  transparencia1 = 0;
  transparencia2 = 0;
  transparencia3 = 0;
  transparencia4 = 0;
}
