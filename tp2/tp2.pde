// Serna, Julián Octavio
// Comisión 1

PImage theoffice, daniels, carell, fischer, krasinski, novak, wilson;
int posX, posY, tamX, tamY, altoBoton, anchoBoton, contadorAnimacion1;
PFont fuenteNueva;

void setup() {
  size(640, 480);
  theoffice = loadImage("the_office.jpg");
  daniels = loadImage("daniels.jpg");
  carell = loadImage("carell.jpg");
  fischer = loadImage("fischer.jpg");
  krasinski = loadImage("krasinski.jpg");
  novak = loadImage("novak.jpg");
  wilson = loadImage("wilson.jpg");
  posX = 0;
  posY = 0;
  tamX = 640;
  tamY = 480;
  altoBoton = 100;
  anchoBoton = 100;
  fuenteNueva = createFont("American-Typewriter-Regular.ttf", 39.4);
  textFont(fuenteNueva); 
}

void draw() {
  int animacion1;
  animacion1 = contadorAnimacion1;
  contadorAnimacion1 += 1;
  println (animacion1);
  println("X:", mouseX, "|", "Y:", mouseY);
  
//Pantalla 1
    if (animacion1>=0 && animacion1<100) {
    image(theoffice,0,0);
    fill(255);
    text("The Office",225,525-animacion1);
  //Pausa
  } else if (animacion1>=280 && animacion1<400) {
    noStroke();
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 2 
} if (animacion1>=400 && animacion1<560) { 
    fill(0);
    rect (posX,posY,tamX,tamY);
    float animacionX = map(animacion1,400,560,-250,210);
    fill(255);
    text("Creado por",animacionX,250);
  //Pausa
  } else if (animacion1>=620 && animacion1<700) { 
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 3
} if (animacion1>=700 && animacion1<800) {
    image(daniels,0,0);
    float animacionX = map(animacion1,700,800,-300,205);
    fill(0,0,0,125);
    rect(animacionX,400,240,50);
    fill(255);
    text("Greg Daniels",animacionX,440);
  //Pausa
  } else if (animacion1>=920 && animacion1<1020) {
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 4
  } if (animacion1>=1020 && animacion1<1180) { 
    fill(0);
    rect (posX,posY,tamX,tamY);
    float animacionX = map(animacion1,1020,1180,-300,140);
    fill(255);
    text("Protagonizado por",animacionX,250);
  //Pausa
  } else if (animacion1>=1240 && animacion1<1360) { 
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 5  
  } if (animacion1>=1360 && animacion1<1460) { 
    image(carell,0,0);
    float animacionX = map(animacion1,1360,1460,-800,65);
    fill(0,0,0,125);
    rect(animacionX,400,530,50);
    fill(255);
    textSize(34.5);
    text("Steve Carell como Michael Scott",animacionX,440);
  //Pausa
  } else if (animacion1>=1580 && animacion1<1700) {
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 6  
  } if (animacion1>=1700 && animacion1<1800) {
    image(wilson,0,0);
    float animacionX = map(animacion1,1700,1800,-800,35);
    fill(0,0,0,125);
    rect(animacionX,400,585,50);
    fill(255);
    text("Rainn Wilson como Dwight Schrute",animacionX,440);
  //Pausa
  } else if (animacion1>=1920 && animacion1<2040) {
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 7     
  } if (animacion1>=2040 && animacion1<2140) {
    image(krasinski,0,0);
    float animacionX = map(animacion1,2040,2140,-800,50);
    fill(0,0,0,125);
    rect(animacionX,400,560,50);
    fill(255);
    text("John Krasinski como Jim Halpert",animacionX,440);
  //Pausa
  } else if (animacion1>=2260 && animacion1<2380) {
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 8
  } if (animacion1>=2380 && animacion1<2480) {
    image(fischer,0,0);
    float animacionX = map(animacion1,2380,2480,-800,55);
    fill(0,0,0,125);
    rect(animacionX,400,550,50);
    fill(255);
    text("Jenna Fischer como Pam Beesley",animacionX,440);
  //Pausa
  } else if (animacion1>=2600 && animacion1<2720) {
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);

//Pantalla 9
  } if (animacion1>=2720 && animacion1<2820) {
    image(novak,0,0);
    float animacionX = map(animacion1,2720,2820,-800,70);
    fill(0,0,0,125);
    rect(animacionX,400,520,50);
    fill(255);
    text("B. J. Novak como Ryan Howard",animacionX,440);
  //Pausa
  } else if (animacion1>=2940 && animacion1<3060) {
    fill(0,0,0,0);
    rect(posX,posY,tamX,tamY);
    
//Pantalla 10    
  } if (animacion1>=3060) {
    fill(100);
    rect(posX, posY, tamX, tamY);
    if (mouseX>320-anchoBoton/2 && mouseX<320+anchoBoton/2 && mouseY>240-altoBoton/2 && mouseY<240+altoBoton/2) {
    fill(214,40,40); 
  } else {
    fill(255); 
  }
    rect(320-anchoBoton/2,240-altoBoton/2,anchoBoton,altoBoton);
    fill(255);
    text("Reiniciar",245,340);
  }
}

void mousePressed() {
  if (mouseX>320-anchoBoton/2 && mouseX<320+anchoBoton/2 && mouseY>240-altoBoton/2 && mouseY<240+altoBoton/2) {
  contadorAnimacion1 = 0;
  }
}
