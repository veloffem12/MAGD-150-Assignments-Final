// This makes it so there can be 100 rain drops.
// sun based off ex_1_7_transformations
PVector center1, scale,sample1,sample2;
float theta;
Rain[] rain = new Rain[100];

void setup() {
  size(600,400);
  smooth();
  for (int i =0; i < rain.length; i++) {
  rain[i] = new Rain(); 
  center1 = new PVector(width *.85, height*.15);
  scale = new PVector(width * .25, height *.1);
  theta = 0;
}
}
void draw() {
  background(#1CAAFF);
  for (int i=0; i < rain.length; i++){
  rain[i].update();
  rain[i].checkEdges();
  rain[i].display(); 
  theta = map (mouseX, 0, width, 0, TWO_PI);
  scale.y = map(mouseY,0, height, height * .075, width * .2);
  pushStyle();
  fill(#FFF41C);
  noStroke();
  rectMode(RADIUS);
  pushMatrix();
  translate(center1.x, center1.y);
  rotate(theta);
  scale(scale.x, scale.y);
  rect(0,0,1,1);
  sample1 = new PVector(screenX(1, 0), screenY(1, 0));
  popMatrix();
  popStyle();
  
  pushStyle();
  noStroke();
  ellipseMode(RADIUS);
//Sun shine on a bright summer day
  fill(#FFF41C);
  pushMatrix();
  translate(center1.x, center1.y);
  rotate(-theta);
  scale(scale.x, scale.y);
  ellipse(0, 0, 1, 1);
  sample2 = new PVector(screenX(1, 0), screenY(1, 0));
  popMatrix();
  popStyle();
  fill(#1CFF34);
  rect(0,320,600,100);
}
}