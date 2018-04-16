int rectX, rectY;      
int circleX, circleY;  
int rectSize = 20;     
int circleSize = 100;
int posX, posY, sizeX, sizeY;
color a;
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;
boolean rectClick = false;

void setup() {
  size(500, 500);
  rectColor = color(#DA02DB);
  rectHighlight = color(#DA02DB);
  circleColor = color(0);
  circleHighlight = color(#DA02DB);
  baseColor = color(0);
  currentColor = baseColor;
  circleX = width/2;
  circleY = height/2;
  rectX = 480;
  rectY = 480;
  ellipseMode(CENTER);
  sizeX = 80;
  sizeY = 80;
  background(currentColor);
}

void draw() {

  update(mouseX, mouseY);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
  if(rectClick){
  randomizePos();
  colorize();
  displayEllipse();
  }
   
  fill(#DA02DB);
  stroke(255);
  rect(480,0,20,20);
  rect(0,480,20,20);
  rect(0,0,20,20);
  fill(255); text("Pick A Corner",220,250);
  fill(255);
  textSize(10);
  text("Pick Me",0,10);
  text("Pick Me",0,490);
  text("Pick Me",462,10);
  text("Pick Me",462,490);
  
}


void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
  ellipse(circleX, circleY, circleSize, circleSize);
  
}

void mousePressed() {
  if (circleOver) {
    currentColor = circleColor;
    background(0);
    rectClick= false;
  }
  if (rectOver) {
    currentColor = rectColor;
    rectClick = true;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
void randomizePos(){
  posX = round(random(150,350));
  posY = round(random(0,500));
}
void colorize(){
  a = color(random(255),0,random(255));
}
void displayEllipse(){
  fill(a);
  ellipse(posX, posY, sizeX, sizeY);
}