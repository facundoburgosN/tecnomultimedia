void setup() {
  size(500, 500);
  background(96, 46, 121);
  textSize(35);
}
/*
Colores:
 Fondo (96, 46, 121)
 Uniforme 1 y 2 (0,19,140 - 0,16,93)
 Gorro(255,213,0)
 Cara verde-amarillo-marrón (0,18,48 - 232,186,0 - 113,89,0)
 Táser (gris - 98,138,255)
 */
void draw() {
  //fondo
  background(96, 46, 121);
  strokeWeight(3);
  line(0, 50, 500, 50);
  line(0, 150, 500, 150);
  line(0, 250, 500, 250);
  line(0, 350, 500, 350);
  line(0, 450, 500, 450);
  strokeWeight(1);
  line(0, 100, 500, 100);
  line(0, 200, 500, 200);
  line(0, 300, 500, 300);
  line(0, 400, 500, 400);

  //Pico
  stroke(0);
  fill(232, 186, 0);
  strokeWeight(2);
  triangle(250, 190, 250, 310, 460, 300);
  triangle(250, 190, 250, 286, 480, 289);
  fill(0);
  circle(385, 262, 5 );

  //Cabeza-cuello
  stroke(0);
  fill(255);
  circle(250, 300, 80);
  fill(0, 118, 48);
  ellipse(250, 250, 250, 125);
  noStroke();
  fill(96, 46, 121);
  rect(123, 200, 105, 100);
  stroke(1);
  strokeWeight(3);
  line(120,250,180,250);
  strokeWeight(1);
  line(120,200,180,200);
  strokeWeight(2);
  fill(0, 118, 48);
  ellipse(198, 250, 100, 112);
  noStroke();
  ellipse(205, 250, 112, 113);

  //cuerpo
  stroke(0);
  fill(0, 19, 140);
  quad(207, 320, 290, 320, 275, 450, 220, 450);
  fill(0, 16, 93);
  rect(220, 450, 55, 80);

  //Táser
  fill(115);
  quad(375, 420, 380, 380, 385, 380, 380, 420);
  rect(370, 380, 50, 14);
  noStroke();
  fill(96, 46, 121);
  circle(420, 387, 14);
  stroke(98, 138, 255);
  line(420, 393, 420, 380);
  stroke(255, 213, 0);
  line(390, 392, 400, 382);
  line(385, 392, 395, 382);

  //Brazo
  stroke(0);
  strokeWeight(15);
  line(250, 365, 320, 410);
  line(320, 410, 385, 405);

  //Interior del Brazo
  stroke(255);
  strokeWeight(10);
  line(250, 365, 320, 410);
  line(320, 410, 385, 405);

  //Hombro
  stroke(0);
  fill(0, 16, 93);
  strokeWeight(2);
  circle(250, 365, 40);

  //Cara
  fill(0);
  circle(290, 230, 40 );
  fill(113, 89, 0);
  circle(295, 230, 25 );
  fill(0);
  circle(297, 230, 5 );
  quad(272, 205, 315, 210, 315, 220, 270, 220);

  //Gorro policial
  rect(170, 170, 130, 30);
  triangle(300, 170, 300, 200, 400, 200);
  fill(0, 19, 140);
  quad(165, 150, 165, 170, 300, 170, 300, 120);
  fill(255, 213, 0);
  ellipse(300, 145, 10, 20);

  //Texto
  fill(255);
  text("El Patocia", 170, 90);
}
