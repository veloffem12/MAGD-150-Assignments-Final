Rain[] ws;
int count;

void setup() {
  surface.setResizable(true);
  surface.setTitle("Objects");
  pixelDensity(displayDensity());
  size(500, 500);
  background(0);
  colorMode(HSB, 359, 99, 99);
  
  
  count = max(width, height) / 10;
  ws = new Rain[count];
  for(int i = 0; i < count; ++i) {
    ws[i] = new Rain();
  }
}

void draw() {
  rect(0, 0, width, height);
  
  for(int i = 0; i < count; ++i) {
    ws[i].draw();
  }
}