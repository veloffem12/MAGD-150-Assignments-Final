void setup(){
size(500,500);
}

void draw(){
background(22,163,247);
fill(247,240,22);
  triangle(400,180,450,190,420,220);
  quad(55,95,65,65,75,95,85,85);//butterfly
  noFill();
  arc(220,250,120,120,0,HALF_PI);
  arc(370,60,120,120,0,HALF_PI);
  arc(140,150,120,120,0,HALF_PI);
  arc(360,220,120,120,0,HALF_PI);
  arc(240,110,120,120,0,HALF_PI);
  fill(32,247,25);
  
  arc(200,150,60,60,PI,TWO_PI,CHORD);
  colorMode(HSB,360,100,100,100);
  fill(color(100,0,10,60));
  beginShape();
  vertex(400,30);
  vertex(430,55);
  vertex(370,90);
  vertex(470,40);
  endShape(CLOSE);
  
colorMode(RGB,255,255,255);
fill(255,0,0);
  beginShape(TRIANGLE_STRIP);
  vertex(250,200);
  vertex(260,250);
  vertex(270,200);
  vertex(280,250);
  vertex(290,200);
  vertex(300,250);
  vertex(310,200);
  endShape();
  
fill(color(#FF5703));
  beginShape(TRIANGLE_STRIP);
  vertex(270,60);
  vertex(280,110);
  vertex(290,60);
  vertex(300,110);
  vertex(310,60);
  vertex(320,110);
  vertex(330,60);
  endShape();
}