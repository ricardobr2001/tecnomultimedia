class soldadito{
  
  constructor(){
    this.posY = 550;
    this.miColor = color(203,50,52);
    this.miColor1 = color(253,221,202);
  
  }
  
  dibujar(){
    noStroke();
    fill(this.miColor);
    rect(mouseX, this.posY, 70, 10)
    rect(mouseX+10,this.posY-20, 50,20);
    fill(this.miColor1);
    rect(mouseX+10, this.posY+10,50,40);
    
  
  }
}
