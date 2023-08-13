//enlace video youtube recuperatorio: https://youtu.be/Ai3SABNdA4w

int c = 18;
PImage[] soldaditos = new PImage[c];
int estado;
boolean BotonIniciar, opcionA, opcionB, BotonCreditos;

void setup(){
  size(600,600);
  for(int i=0;i<18;i++){
    soldaditos[i]=loadImage("soldadito"+i+".jpg");
  }
  estado = 0;
 BotonIniciar= true;
 opcionA= true;
 opcionB= true;
 BotonCreditos= true;
 
}

void draw(){
  
  println(mouseX);
  println(mouseY);
  BotonIniciar= (botones(200,250,400,350));
  opcionA= (botones(510,515,590,590));
  opcionB= (botones(10,515,90,590));
  BotonCreditos= (botones(200,400,400,500));

  switch(estado){
    case 0:
    image(soldaditos[16],0,0,600,600);
    fill(128,64,0);
    rect(200,250,200,100);
    rect(200,400,200,100);
    fill(255);
    textSize(60);
    text("El Soldadito de Plomo",20,140);
    textSize(40);
    text("INICIAR",235,315);
    text("CREDITOS",215,465);
    break;
    case 1:
    ajustecuadrodetextoeimg(0,225,20,373,130);
    ajustebotonsgte();
    textSize(25);
    text("Una noche de navidad, un niño \n recibe una caja llena de soldaditos\n de plomo como regalo",230,50);
    break;
    case 2:
    ajustecuadrodetextoeimg(1,320,15,265,135);
    ajustebotonsgte();
    textSize(20);
    text("Entre los soldaditos, habia \n uno que destacaba del resto. \n Un soldadito de plomo habia \n sido fabricado con una pierna",325,40);
    break;
    case 3:
    ajustecuadrodetextoeimg(2,240,15,330,140);
    ajustebotonsgte();
    textSize(20);
    text("Por ser diferente al resto el niño lo \n aparta dejandolo encima de un cajon, \n y es ahi donde se enamora y conoce \n al amor de su vida: la bailarina",245,45);
    break;
    case 4:
    ajustecuadrodetextoeimg(3,232,25,370,170);
    ajustebotonsgte();
    textSize(15);
    text("El soldadito no paraba de observar a la bailarina. \n Pasaban horas y horas y el no se cansaba. \n Llego la noche y los juguetes cobraron vida, de repente \n un juguete sorpresa ve al soldadito mirando a la bailarina \n y le dice que no pierda su tiempo, que ella nunca se va a \n fijar en un soldado sin pierna como el.",235,50);
    break;
    case 5:
    ajustecuadrodetextoeimg(4,30,25,550,100);
    ajustebotonsgte();
    textSize(20);
    text("El dia siguiente, el niño coloca al soldadito de plomo en la \n ventana y en un descuido el juguete sorpresa lo empuja y lo \n bota a la calle.",40,50);
    break;
    case 6:
    ajustecuadrodetextoeimg(5,30,380,550,110);
    ajustebotonAyB();
    textSize(15);
    text("El soldadito cayo directo al suelo. Unos niños que caminaban por ahi lo vieron y \n jugaron un rato con el. Luego que crees que hicieron? \n A: Lo botaron en una barquito de papel por el agua de alcantarilla \n B: Lo dejaron botado porque vieron que solo tenia una pierna.", 40,400);
    break;
    case 7:
    ajustecuadrodetextoeimg(6,270,40,320,110);
    ajustebotonsgte();
    textSize(15);
    text("El soldadito llega a un rio donde fue devorado por \nun pez. Alli el soldadito se encuentra en serios \nproblemas y no sabe que hacer para salir y \nvolver a casa con su amada.",275,60);
    break;
    case 8:
    ajustecuadrodetextoeimg(7,270,40,320,130);
    ajustebotonsgte();
    textSize(15);
    text("De repente un milagro ocurrio. \nEl pez fue pescado y comprado por la ama de casa \n de la casa donde estaba. \n La empleado vio al soldadito dentro del pez y lo \nsaco, y lo puso encima de una mesa de luz.",275,60);
    break;
    case 9:
    ajustecuadrodetextoeimg(8,300,10,290,200);
    ajustebotonAyB();
    textSize(12);
    text("El soldadito no lo podia creer! En la misma mesa de luz \nse encontraba la baiilarina, y sin el juguete sorpresa \ncerca al fin podian estar juntos. Pero la alegria no iba a \ndurar mucho...\nDe repente un fuerte viento entra por la ventana y saca \nvolando al soldadito y a la bailarina. Que destino crees \nque tendran nuestros personajes? \nA: Se caen los dos al suelo.\nB: Caen dentro de la fogata de la chimenea.",305,30);
    break;
    case 10:
    ajustecuadrodetextoeimg(9,270,40,320,160);
    ajustebotonsgte();
    textSize(20);
    text("Oh no! El soldadito cayo junto a la \nbailarina directo a la fogata! \nPero a pesar de estar en llamas nada \nlos detiene de pasar de sus ultimos \nsegundos juntos.",280,60);
    break;
    case 11:
    ajustecuadrodetextoeimg(10,270,40,300,130);
    ajustebotonfin();
    textSize(20);
    text("Y asi juntos se hicieron cenizas. \nForjaron un amor verdadero y un \ncorazon con una flor quedo como \nprueba de su amor.",280,60);
    break;
    case 12:
    ajustecuadrodetextoeimg(11,270,40,320,160);
    ajustebotonsgte();
    textSize(19);
    text("Los niños dejaron al soldadito tirado \nen la vereda, como solo tenia una \npierna no le vieron caso llevarselo. \nTiempo despues pasa un camion de \nbasura y se lleva al soldadito de plomo.",280,60);
    break;
    case 13:
    ajustecuadrodetextoeimg(12,40,40,520,160);
    ajustebotonAyB();
    textSize(19);
    text("El soldadito viajo encima del camion de basura sin idea de a \ndonde iba a parar. De repente el camion pasa por un camino \nrocoso junto a un rio que hace que el soldadito de plomo se... \nA:Se caiga al rio. \nB:Se caiga dentro de una funda llena de plasticos.",50,60);
    break;
    case 14:
    ajustecuadrodetextoeimg(13,40,20,540,140);
    ajustebotonfin();
    textSize(19);
    text("El camion de basura llego a un basurero a las afueras de la ciudad. \nEl soldadito de plomo habia terminado rodeado de un monton de \nbasura, lejos de casa y lejos de su amada.",50,60);
    break;
    case 15:
    ajustecuadrodetextoeimg(14,270,40,320,110);
    ajustebotonsgte();
    textSize(20);
    text("El niño ve los juguetes, los recoge y \nlos deja encima de una repisa en la \nparte de arriba de su dormitorio.",275,60);
    break;
    case 16:
    ajustecuadrodetextoeimg(15,270,40,320,110);
    ajustebotonfin();
    textSize(15);
    text("El soldadito de plomo y la bailarina \nterminaron juntos por siempre, sin ningun juguete \ncerca, solos por siempre hasta que el tiempo los \nsepare.",275,60);
    break;
    case 17:
    image(soldaditos[17],0,0,600,600);
    fill(253,253,150);
    circle(550,550,80);
    fill(0);
    textSize(25);
    text("Volver",520,555);
    textSize(40);
    text("CREDITOS",220,110);
    text("Director:         Ricardo Barba",60,240);
    text("Guion:             Ricardo Barba",60,320);
    text("Programador:      Ricardo Barba",40,400);
    break;
  }
}

void mousePressed(){
  if(estado == 0 && BotonIniciar){
    estado=1;
  }else if(estado==1 && opcionA){
    estado=2;
  }else if(estado==2 && opcionA){
    estado=3;
  }else if(estado==3 && opcionA){
    estado=4;
  }else if(estado==4 && opcionA){
    estado=5;
  }else if(estado==5 && opcionA){
    estado=6;
  }else if(estado==6){
    if(opcionA){
      estado=7;
    }
    if(opcionB){
      estado=12;
    }
  }else if(estado==7 && opcionA){
    estado=8;
  }else if(estado==8 && opcionA){
    estado=9;
  }else if(estado==9){
    if(opcionB){
    estado=10;
    }
    if(opcionA){
      estado=15;
    }
  }else if(estado==10 && opcionA){
    estado=11;
  }else if(estado==11 && opcionA){
    estado=0;
  }else if(estado==12 && opcionA){
    estado=13;
  }else if(estado==13){
    if(opcionB){
      estado=14;
    }
    if(opcionA){
      estado=7;
    }    
  }else if(estado==14 && opcionA){
    estado=0;
  }else if(estado==15 && opcionA){
    estado=16;
  }else if(estado==16 && opcionA){
    estado=0;
  }else if(estado==0 && BotonCreditos){
    estado=17;
  }else if(estado==17 && opcionA){
    estado=0;
  }

}

void ajustebotonAyB(){
  fill(128,64,0);
  circle(550,555,80);
  circle(50,555,80);
  fill(255);
  textSize(25);
  text("A",543,560);
  text("B",43,560);

}

void ajustebotonsgte(){
  fill(128,64,0);
  circle(550,550,80);
  fill(255);
  textSize(25);
  text("Sgte",530,555);

}

void ajustebotonfin(){
  fill(128,64,0);
  circle(550,550,80);
  fill(255);
  textSize(25);
  text("FIN",535,555);
}

void ajustecuadrodetextoeimg(int n, int x, int y, int l, int a){
  image(soldaditos[n],0,0,600,600);
  fill(128,64,0);
  rect(x,y,l,a);
  fill(255);
  
}

boolean botones(int a, int b, int c, int d){
  return mouseX>a && mouseY>b && mouseX<c && mouseY<d ;

}
