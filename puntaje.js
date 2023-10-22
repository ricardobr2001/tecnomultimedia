
class puntaje{
  
  constructor(){
    this.posX = width/2;
    this.posY = height/2;
    this.miColor = color(255,165,0);
    this.miColor2 = color(255);
    this.m1 = 0;
    this.m2 = 0;
    this.velX = 6;
    this.velY = 6;
    this.posX = 165;
  }
    dibujar(){
    fill(this.miColor);
    ellipse(this.posX, this.posY, 20);
    textSize(40);
    fill(this.miColor2);
    text(this.m2,20,250);
    text(this.m1,20,380);
    this.posX= this.posX + this.velX;
    this.posY= this.posY + this.velY;
    if(this.posX > width || this.posX < 0){
      this.velX *= -1;
    }
    if(this.posY > height || this.posY < 0){
      this.posX= 200;
      this.posY= 300;
      
  }
    if(this.posY > 520){
      if(this.posX > mouseX && this.posX < mouseX + 50){
        this.velY *= -1;
      }
    }
    if(this.posY < 80){
      if(this.posX > this.posX && this.posX < this.posX + 50 ){
        this.velY *= -1;
      }
    }   
    if(this.posY > 600-10){
      this.posX= 200;
      this.posY= 300;
      this.m2++
    }
    if(this.posY < 10){
      this.posX= 200;
      this.posY= 300;
      this.m1++
    }

    }
}
