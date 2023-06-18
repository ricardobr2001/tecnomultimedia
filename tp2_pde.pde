

//https://www.youtube.com/watch?v=nEt0PFn0BO4
PImage img;
int c;


void setup(){
  size(800,400);
  background(230);
  img= loadImage("ilusion.jpg");
  
}

void draw(){
  
  
  
  fill(255);
  rect(528,91,150,200);
  
  
  c++;
  if(c>=300){
    fill(random(100,150),random(100,150),random(100,150));
    rect(0,0,800,400);
    c=0;
  } 
else if(c>=800){
    fill(random(100,150),random(100,150),random(100,150));
    rect(0,0,800,400);
    c=0;
  
  }
  image(img,0,0,400,400);
  

  
  pushMatrix();
  
  int distX=60;
  int distY=20;
  fill(50);
  for(int y=0;y<=20;y++){
    for(int x=0;x<=20;x++){
  rect(distX*x+400,distY*y,30,10);
  }
  }
  for(int y=0;y<=20;y++){
    for(int x=0;x<=20;x++){
  rect(distX*x+430,distY*y+10,30,10);
  }
  }

  popMatrix();
  
  pushMatrix();
  fill(255);
  rect(528,91,150,200);
  if(key=='i'){
  fill(153,255,0);
  rect(528,91,150,200);
  }
  if(key=='l'){
  fill(255,153,153);
  rect(528,91,150,200);
  }
  if(key=='u'){
  fill(255,51,255);
  rect(528,91,150,200);
  }
  if(key=='s'){
  fill(0,102,255);
  rect(528,91,150,200);
  }
  if(key=='o'){
  fill(255,51,0);
  rect(528,91,150,200);
  }
  if(key=='n'){
  fill(153,153,204);
  rect(528,91,150,200);
  }


  
  popMatrix();
  pushMatrix();
  
  
  
  fill(0);
  int distx=20;
  int disty=100;
  for(int y=0;y<2;y++){
    for(int x=0;x<8;x++){
    rect(distx*x+528,disty*y+91,10,50);
    }
  
  }
  for(int y=0;y<2;y++){
    for(int x=0;x<7;x++){
    rect(distx*x+528+10,disty*y+91+50,10,50);
    }
  
  }
  popMatrix();

}

void keyPressed(){

if (key=='r'){
 resetearVariables();
}
}

void resetearVariables(){
  fill(230);
  rect(0,0,800,400);
  fill(255);
  rect(528,91,150,200);

}
