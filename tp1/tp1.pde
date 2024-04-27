// Castellano Dalmiro
//Tp1 comision 1

PImage panda; 
void setup(){
 size (800,400);
 panda = loadImage ("panda.jpg") ;
 panda.resize(400,400);
 image (panda,0,24);
 

}

void draw() {
  // Fondo marrón claro
  background(222, 184, 135); // Fondo marrón claro
  
  // Dibujar la cabeza del panda
  drawPandaFace(width/2, height/2, 200); // El tamaño de la cabeza es 200
}

void drawPandaFace(float x, float y, float size) {
  // Cabeza
  fill(255);
  stroke(0);
  ellipse(x, y, size, size);
  
  // Orejas
  fill(0);
  ellipse(x - size * 0.45, y - size * 0.3, size * 0.35, size * 0.35);
  ellipse(x + size * 0.45, y - size * 0.3, size * 0.35, size * 0.35);
  
  // Detalles de las orejas
  fill(255);
  ellipse(x - size * 0.45, y - size * 0.3, size * 0.25, size * 0.25); // Detalle oreja izquierda
  ellipse(x + size * 0.45, y - size * 0.3, size * 0.25, size * 0.25); // Detalle oreja derecha
  
  // Ojos
  fill(255);
  ellipse(x - size * 0.2, y - size * 0.1, size * 0.25, size * 0.25); // Ojo izquierdo
  ellipse(x + size * 0.2, y - size * 0.1, size * 0.25, size * 0.25); // Ojo derecho
  
  // Detalles de los ojos
  fill(0);
  ellipse(x - size * 0.2, y - size * 0.1, size * 0.15, size * 0.15); // Pupila izquierda
  ellipse(x + size * 0.2, y - size * 0.1, size * 0.15, size * 0.15); // Pupila derecha
  
  // Nariz
  fill(0); // Color negro
  ellipse(x, y + size * 0.15, size * 0.25, size * 0.2); // Nariz redondeada
}
