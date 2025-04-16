PImage miImagen;

void setup(){
 size(800,400);
 background(153,219,218);
 miImagen = loadImage("johnnybravo.jpg");
}

void draw(){
 image(miImagen, 0, 0, 400, 400);
 println("X:", mouseX, "|", "Y:", mouseY);
 
 //Rectángulos inferiores del fondo
 stroke(0);
 strokeWeight(2);
 fill(133,143,216);
 rect(400,356,400,44);
 strokeWeight(3);
 fill(133,180,216);
 rect(400,348,400,10);
 
 //Tanque de agua
 line(485,327,483,347);
 line(507,327,509,347);
 line(485,327,503,348);
 line(507,327,489,348);
 fill(0);
 bezier(463,296,477,305,509,305,527,296);
 fill(133,180,216);
 rect(476,321,39,6);
 triangle(465,294,495,270,525,294);
 fill(133,143,216);
 quad(476,297,478,320,513,320,515,297);
 
 //Brazo izquierdo
 strokeWeight(1);
 fill(0);
 bezier(692,305,720,279,755,269,792,264);
 quad(692,304,800,400,800,272,792,264);
 fill(55,132,211); //Detalles en azul:
 triangle(695,305,701,301,719,314);
 triangle(770,341,800,383,800,373);
 
 //Pecho
 fill(0);
 bezier(452,366,500,331,646,305,692,305);
 quad(452,365,502,400,692,400,692,306);
 bezier(692,305,750,325,766,346,810,400);
 triangle(692,306,692,400,810,400);
 
 //Brazo derecho
 fill(55,132,211);
 triangle(456,366,462,362,507,400); //Detalle en azul
 fill(0);
 bezier(409,353,433,357,456,360,502,400);
 quad(400,368,400,400,503,400,410,353);
 
 //Cuello
 strokeWeight(2.5);
 stroke(250,222,177);
 fill(250,222,177);
 bezier(513,338,600,385,705,350,660,336); //"Base" del cuello
 quad(526,269,514,339,660,337,605,251); //Cuello en sí
 stroke(0);
 fill(0);
 bezier(530,246,517,287,514,306,512,345); //Línea negra derecha
 bezier(595,237,616,261,638,294,663,343); //Línea negra izquierda
 
 //Orejas
 strokeWeight(3);
 fill(250,222,177);
 bezier(520,211,502,211,506,234,522,234); //Oreja derecha
 bezier(609,213,625,214,619,235,605,236); //Oreja izquierda
 
 //Pelo
 fill(250,226,43);
 quad(502,167,543,261,583,265,626,170);
 noStroke();
 beginShape(); //Forma geométrica (pentágono) del pelo:
 vertex(518,168);
 vertex(505,100);
 vertex(604,10);
 vertex(652,31);
 vertex(611,171);
 endShape();
 stroke(0);
 strokeWeight(4.5); //Líneas curvas del pelo:
 bezier(517,169,495,121,503,88,519,90);
 bezier(536,161,517,92,530,60,547,64);
 bezier(612,172,670,51,660,2,629,24);
 bezier(588,161,638,46,626,-23,592,24);
 bezier(562,160,612,45,580,14,563,49);

 //Contorno de la cabeza
 fill(250,222,177);
 quad(516,169,529,286,596,288,613,172);
 strokeWeight(6);
 stroke(250,222,177);
 line(521,169,608,172); //Separación entre la frente y el pelo
 
 //Ceja
 strokeWeight(3.5);
 stroke(0);
 bezier(528,195,537,180,544,180,551,183);
 
 //Lentes
 fill(0);
 bezier(557,211,562,209,566,208,573,212); //Puente entre lentes
 strokeWeight(4); 
 bezier(523,210,535,207,545,206,557,211); //Curva superior del lente derecho
 bezier(523,209,524,240,556,240,557,211); //Curva inferior del lente derecho
 bezier(573,212,585,207,595,208,604,212); //Curva superior del lente izquierdo
 bezier(573,212,574,240,605,241,604,212); //Curva inferior del lente izquierdo
 
 //Nariz
 strokeWeight(1);
 triangle(563,211,564,239,567,211); //Tabique
 strokeWeight(2.5);
 noFill();
 bezier(558,247,557,246,564,247,564,249); //Fosa nasal derecha
 bezier(565,249,565,249,568,246,571,247); //Fosa nasal izquierda
 
 //Boca
 fill(255,255,255);
 bezier(541,254,541,268,553,275,558,263); //Dientes
 fill(0);
 bezier(541,254,547,260,550,261,562,263); //Mueca
}
