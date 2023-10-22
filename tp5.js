//https://youtu.be/d6Ih1oMnrL0

let objCuarto;
let estado;


function setup(){
  createCanvas(400,600);
  estado = 0;
  objCuarto =  new cuarto();
  

}


function draw() {
   background(161,130,98);
   
 switch(estado){
   case 0:
   botonContinuar= mouseX>150 && mouseY>470 && mouseX<250 && mouseY<520 ;
   rect(500,225,100,50);
   fill(255);
   textSize(20);
   text("Preambulo:\nEl soldadito de plomo esta de regreso\nen casa. En busca de su bailarina se \ntopa con su enemigo, el juguete sorpresa. \nEste le dice que si la quiere volver a ver \ntiene que ganarle en una partida de pong \na 5 puntos.\nAyuda al soldadito de plomo a vencer a \nsu enemigo para recuperar a su amada!\nUtiliza el mouse para mover y tratar de \nanotarle al juguete sorpresa.\nNo existe el limite de tiempo, solo importa \ntu habilidad para alcanzar la victoria.\nBuena suerte!!\n\n\n                        Continuar",15,100);    
   break;
   
   case 1:
   objCuarto.dibujar();
   break;
}

}

function mousePressed(){
  if(estado === 0 && botonContinuar){
    estado=1;
  }
}
