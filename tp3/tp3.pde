//Castellano Dalmiro
//Tp3 Comision 1
// Video explicación del código: https://youtu.be/CQ-GS51J0-Y
PImage img; // Obra original elegida
int tamanoCuadricula = 8; // Tamaño de la cuadrícula
color fondo = 255; // Color de fondo 

void setup() {
  size(800, 400); // Tamaño del lienzo
  img = loadImage("F_34.jpg"); 
  img.resize(400, 400); // Redimensionar el tamaó de la obra a 400x400
  background(fondo); // Fondo inicial
}

void draw() {
  background(fondo);
  image(img, 0, 0); // Dibujar la obra original a la izquierda
  dibujarCuadrado(400, 0); // Dibujar el patrón generado a la derecha
}

void mousePressed() {
  fondo = color(random(255), random(255), random(255)); // Cambiar el fondo a un color aleatorio al hacer clic
}

void dibujarCuadrado(float desplazamientoX, float desplazamientoY) {
  float tamanoCelda = 400.0 / tamanoCuadricula; // Tamaño de cada celda en la cuadrícula
  stroke(50); // Color de las líneas 
  strokeWeight(4); // Grosor de las líneas 
  
  for (int i = 0; i < tamanoCuadricula; i++) { 
    for (int j = 0; j < tamanoCuadricula; j++) { // Cambiar 'j <= tamanoCuadricula' a 'j < tamanoCuadricula' para omitir la última fila (para que quede mas alineado)
      float x = desplazamientoX + i * tamanoCelda;
      float y = desplazamientoY + j * tamanoCelda;
      dibujarLineas(x, y, tamanoCelda / 2);
    }
  }
}

void dibujarLineas(float x, float y, float radio) {
  // Líneas horizontales y verticales
  line(x - radio, y, x + radio, y);
  line(x, y - radio, x, y + radio);
  
  // Dibujar líneas diagonales
  line(x - radio, y - radio, x + radio, y + radio);
  line(x - radio, y + radio, x + radio, y - radio);
  
  // Círculos negros en las intersecciones
  if (mousePressed && dist(mouseX, mouseY, x, y) < 10) {
    fill(0); // Relleno negro
  } else {
    fill(255); // Sin relleno
  }
  ellipse(x, y, 5, 5); // Círculo en el centro
}

void keyPressed() {
  if (key == 'k' || key == 'k') {
    reiniciarPatron();
  }
}

void reiniciarPatron() {
  // Reiniciar el color de fondo a blanco
  fondo = 255;
  // Reiniciar cualquier otra variable si es necesario
  redraw(); // Volver a dibujar el patrón
}
