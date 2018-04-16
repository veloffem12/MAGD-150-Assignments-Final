int red;
int green;
int blue;
float deltaMouseX; 
float deltaMouseY;
float w = 20;
float h = 20;
int start = 0;
int stop = 0;
int elapse = 0;

void setup(){
  size(500,500);
  surface.setResizable(true);
  background(25);
  frameRate(10);
}
void draw(){
  red = (red + 0) % 256;
  green = (green + 0) % 256;
  blue = (blue + 21) % 256;
  fill(red, green, blue);
 
  w = (w * 1.5) % (height / 5);
  h = (h * 1.5) % (height / 5);
  
  ellipse(mouseX, mouseY, w, h);
  println("(" + mouseX + ", " + mouseY + ")");
  println(dist(mouseX,mouseY, pmouseX, pmouseY));
  
  deltaMouseX = mouseX - pmouseX;
  deltaMouseY = mouseY - pmouseY;
  
  println("delta: (" + deltaMouseX + ", " + deltaMouseY + ")");
float x1 = width * 0.5;
float y1 = height * 0.5;
 float h1 = min(width, height) * 0.5;
  float w1 = h1;
  
  float x2 = width * 0.25;
float y2 = height * 0.25;
float w2 = w * 1.5;
float h2 = constrain(w2, 0, height);

strokeWeight(5);
stroke(#1E3CF5);
fill(#021BB7);
ellipse(x2, y2, w2, h2);
float x3 = width * 0.75;
float y3 = height * 0.50;
float w3 = w * 1.5;
float h3 = constrain(w3, 0, height);

strokeWeight(5);
stroke(#1E3CF5);
fill(#021BB7);
ellipse(x3, y3, w3, h3);
float x4 = width * 0.25;
float y4 = height * 0.75;
float w4 = w * 1.5;
float h4 = constrain(w4, 0, height);

strokeWeight(5);
stroke(#1E3CF5);
fill(#021BB7);
ellipse(x4, y4, w4, h4);

float x5 = width * 0.75;
float y5 = height * 1.0;
float w5 = w * 1.5;
float h5 = constrain(w5, 0, height);

strokeWeight(5);
stroke(#1E3CF5);
fill(#021BB7);
ellipse(x5, y5, w5, h5);

float x6 = width * 0.75;
float y6 = height * 0.0;
float w6 = w * 1.5;
float h6 = constrain(w6, 0, height);

strokeWeight(5);
stroke(#1E3CF5);
fill(#021BB7);
ellipse(x6, y6, w6, h6);




}