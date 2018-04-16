class Rain {

  float x, y, radius, xSpeed, ySpeed, xDir, yDir;
  color fill;

  Rain() {
    this(random(10, width - 50), //the different size rain drops because they are all different
      random(10, height - 50), 
      random(10, 50));
  }

  Rain(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;

    xSpeed = random(1, radius / 10.0);//slow down the speed to make it glow more
    ySpeed = random(1, radius / 10.0);

    float theta = random(TWO_PI);
    xDir = cos(theta);
    yDir = sin(theta);

    fill = color(random(0, 255), 
      random(0, 100),
      100);
  }

  public String toString() {
    return "[ " +x + ", " + y + ", " + radius + " ]";
  }

  void draw() {
    bounce();
    showRain();
    thunder();
    ellipseMode(RADIUS);


 
  }
  void showRain(){
    fill(random(255),random(255),random(255));//Random colors to show when a rain drop gets in your eye
    ellipse(x, y, radius, radius);
  }
  void thunder(){//thunder screensaver to wake you up when you fall asleep, for college kids
    strokeWeight(30);//lightning
    stroke(#FFE203);
    line(200,0,150,150);
    line(150,150,350,150);
    line(350,150,200,500);
    noStroke();
  }
  void bounce() {
    x += xSpeed * xDir;//rain going bouncing off walls
    y += ySpeed * yDir;

    if (x - radius < 0 || x + radius > width) {
      xDir *= -1;
      
    }
    if (y - radius < 0 || y + radius > height) {
      yDir *= -1;
    }
  }
}