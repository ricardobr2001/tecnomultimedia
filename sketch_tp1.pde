
String estado;
int c;
int miVariable;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PFont font;
int posX;
float x=0.0;
float y=480.0;
float targetX=30.0;
float targetY=190.0;
float easing=0.01;

void setup(){
  size(640,480);
  textSize(40);
  noStroke();
  estado="inicio";
  frameRate(60);
  img= loadImage("oso1.jpg");
  img2= loadImage("oso2.jpg");
  img3= loadImage("oso3.jpg");
  img4= loadImage("oso4.jpg");
  font=createFont("Times new roman", 40);
posX=0;
}

void draw(){
textFont(font);
if(estado.equals("inicio")){
  miVariable=frameCount;
  image(img,0,0);
  fill(255);
  circle(540,380,100);
  fill(0);
  text ("Buenos dias!\nHoy vamos a\nhablar de los\nosos polares!",30,miVariable);
  textSize(20);
  text("click aqui!",497,385);
} else if (estado.equals("p1")){
  image(img2,0,0,900,700);
  fill(0);
  float d = dist(x,y,targetX,targetY);
if(d>1.0){
  x +=(targetX-x) * easing;
  y +=(targetY-y) * easing;
}

  text("Los osos polares:\n-Son animales mamiferos\n-Son animles carnivoros\n-Su habitat es el hierlo Ártico", x,y-120);
  text("-Miden hasta 2.3m de longitud\n-Estan en peligro de extincion", x,y+170);
  c++;
  if(c>=600){
    estado="p2";
    c=0;
  }
} else if (estado.equals("p2")){
  image(img3,0,0,640,480);
  fill(0);
  text("Los osos polares:\n-Superan los 500 kg de peso\n-Su pelaje blanco les ayuda para \nla caza de focas marinas\n-La piel el oso blanco posee una\n gruesa capa grasa que lo aísla\n del frio",x,y-100);
  c++;
  if(c>=600){
    estado="p3";
    c=0;
  }
} else if(estado.equals("p3")){
  image(img4,0,0,640,480);
  text("Gracias por ver!",180,240);
  fill(255);
  circle(320,400,100);
  fill(0);
  textSize(15);
  text("Terminar",295,410);
} 
println(estado);
}

void mousePressed(){
  if(estado.equals("inicio")){
    if(dist(540,380,mouseX,mouseY)<50/2){
      estado="p1";
    }
  }
  if(estado.equals("p3")){
    estado="inicio";
  } 
}
