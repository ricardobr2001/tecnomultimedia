PImage img;

void setup(){
  
size(800,800);
background(255);
img= loadImage("oso.jpg");
}

void draw(){

image(img,0,400,800,400);
  
println("X:");
println(mouseX);
println("Y:");
println(mouseY);

fill(58,100,134);
noStroke();
rect(0,200,800,200);

fill(134,125,104);
noStroke();
rect(0,0,800,50);

fill(250,184,3);
noStroke();
rect(0,50,800,200);

fill(250,226,3);
noStroke();
rect(0,125,800,50);

fill(52,25,4);
noStroke();
rect(0,330,800,30);

fill(21,10,1);
noStroke();
rect(125,225,100,25);
square(145,200,25);
square(185,200,25);

fill(200);
noStroke();
rect(513,290,25,60);
rect(355,290,25,60);
square(345,340,10);
square(505,340,10);

fill(229,234,192);
noStroke();
rect(338,166,250,125);
rect(380,290,50,60);
rect(538,290,50,60);
square(370,340,10);
square(528,340,10);

fill(247,250,227);
noStroke();
square(269,156,80);
circle(278,160,30);
circle(338,160,30);

fill(0);
noStroke();
square(295,187,25);
square(285,175,10);
square(320,175,10);

}
