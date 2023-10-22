
class juguete{
  
  constructor(){
    this.posX = 165;
    this.posY = 30;
    this.miColor = color(203,50,52);
    this.miColor1 = color(0,143,57);
    this.velX = 8;
  
  }
  
  dibujar(){
    noStroke();
    fill(this.miColor);
    rect(this.posX-10, this.posY, 70, 10)
    triangle(this.posX+25,this.posY-30,this.posX, this.posY, this.posX+50, this.posY);
    fill(this.miColor1);
    rect(this.posX, this.posY+10,50,40);
    if(keyIsDown(LEFT_ARROW)){
    this.posX=this.posX-12;
    }
    if(keyIsDown(RIGHT_ARROW)){
    this.posX=this.posX+12;
    }
    
    }
    
    
    
    
    
  
}
