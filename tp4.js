//https://youtu.be/96pvCBD9ooY
var botonIniciar, botonCreditos, botonInstrucciones, botonReiniciar, botonVolverMenu, estado;
var posX, posY, velX, velY, x1, m1, m2;

function setup() {
  createCanvas(400,600);
  estado=0;
  posX= width/2;
  posY= height/2;
  velX= 6;
  velY= 6;
  x1= 165;
  m1= 0;
  m2= 0;
  
}
function draw() {
  print(mouseX);
  print(mouseY);
  botonIniciar= mouseX>150 && mouseY>180 && mouseX<2500 && mouseY<230 ;
  botonCreditos= mouseX>150 && mouseY>400 && mouseX<250 && mouseY<450 ;
  botonReiniciar= mouseX>150 && mouseY>380 && mouseX<250 && mouseY<410 ; 
  botonVolverMenu= mouseX>320 && mouseY>515 && mouseX<380 && mouseY<555 ;
  
  switch(estado){
    case 0:
    background(0);
    fill(255);
    rect(150,180,100,50);
    rect(150,400,100,50);
    textSize(40);
    text("Extreme \n   Pong",120,100);
    textSize(15);
    text("Instrucciones: \n-Se necesitan 2 juagdores. \n-Usar la raqueta para hacer rebotar la pelota y marcarle \nal rival. \n-El primero en llegar a 5 puntos gana el partido.",15,500);
    stroke(255);
    line(0,300,400,300);
    noFill();
    ellipse(200,300,100,100);
    fill(0);
    textSize(20);
    text("INICIAR",163,212);
    text("CREDITOS",148,430);
    break;
    case 1:
    //la cancha
    background(0);
    stroke(255);
    line(0,300,400,300);
    noFill();
    ellipse(200,300,100,100);
    //paleta de los jugadores y movimiento
    fill(255);
    rect(x1,0,75,10);
    rect(mouseX,590,75,10);
    if(keyIsDown(LEFT_ARROW)){
    x1=x1-12;
    }
    if(keyIsDown(RIGHT_ARROW)){
    x1=x1+12;
    }
    //pelota y movimiento
    fill(255);
    ellipse(posX,posY,15);
    posX= posX + velX;
    posY= posY + velY;
    if(posX > width || posX < 0){
      velX *= -1;
    }
    if(posY > height || posY < 0){
      posX= 200;
      posY= 300;
      
    }
    //rebote de la pelota con las paletas
    if(posY > 580){
      if(posX > mouseX && posX < mouseX + 75){
        velY *= -1;
      }  
    }
    if(posY < 20){
      if(posX > x1 && posX < x1 + 75 ){
        velY *= -1;
      }
    }
    //marcadores
    if(posY > 600-10){
      posX= 200;
      posY= 300;
      m2++
    }
    if(posY < 10){
      posX= 200;
      posY= 300;
      m1++
    }
    textSize(40);
    fill(255);
    text(m2,20,250);
    text(m1,20,380);
    //ganador y perdedor
    if(estado === 1 && m1 === 5){
      GanarPerder(450,180);
    }
    if(estado === 1 && m2 === 5){
      GanarPerder(180,450);
    }
    break;
    case 2:
    background(0);
    stroke(255);
    line(0,300,400,300);
    noFill();
    ellipse(200,300,100,100);
    fill(255);
    ellipse(350,550,70,50);
    textSize(20);
    text("Director: Ricardo Barba \n\n\n\nProductor: Ricardo Barba \n\n\n\n\n\n\n\nProgramadaor: Ricardo Barba \n\n\n\nDisenador: Ricardo Barba ",80,100);
    fill(0);
    text("Menu",325,555);
    break;
  }
  
}
function mousePressed(){
  if(estado === 0 && botonIniciar){
    estado=1;
    posX= width/2;
    posY= height/2;
    velX= 6;
    velY= 6;
    m1= 0;
    m2= 0;
  }else if(estado===0 && botonCreditos){
    estado=2;
  }else if(estado === 1 && botonReiniciar){
    posX= width/2;
    posY= height/2;
    velX= 6;
    velY= 6;
    m1= 0;
    m2= 0;
  }else if(estado === 1 && botonVolverMenu){
    estado=0; 
  }else if(estado === 2 && botonVolverMenu){
    estado=0;
  }
}

function GanarPerder(y1, y2){
    posX=width/2;
    posY=height/2;
    velX=0;
    velY=0;
    text("Ganaste :)",115,y1); 
    text("Perdiste :(",115,y2);
    rect(150,380,100,30);
    ellipse(350,550,70,50);
    fill(0);
    textSize(20);
    text("Reiniciar",160,400);
    text("Menu",325,555);
}
