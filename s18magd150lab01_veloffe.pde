void setup(){
size(500,500);
}

void draw(){
background(0);

strokeWeight(130);
stroke(255);
point(25,250);
strokeWeight(15);
point(490,250);

stroke(255);
strokeWeight(5);
strokeCap(SQUARE);
line(10,250,490,250);

stroke(255);
strokeWeight(5);
strokeCap(ROUND);
line(25,10,25,490);

stroke(150);
strokeWeight(5);
line(400,50,490,250);
line(400,450,490,250);
strokeJoin(BEVEL);

fill(255);
stroke(100);
strokeWeight(10);
ellipse(100,250,25,60);
ellipseMode(CORNER);
ellipse(400,250,30,40);

fill(200);
stroke(100);
strokeWeight(10);
rect(200,225,30,50);
noStroke();
rect(300,200,40,100);
}