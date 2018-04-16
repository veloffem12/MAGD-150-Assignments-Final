//making a rain class makes it so rain can be called on many times.
class Rain {

  PVector location;
  PVector velocity;
 //pvector acceleration allows the rainfall to increase over time.
  PVector acceleration;


  Rain() {
    // raindrops are droped in a random location
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(2, -2), random(2, -2));
    acceleration = new PVector(-.001, .05);//rain storm
    
  }

  void update() {
    location.add(velocity);
    velocity.add(acceleration);
  }

  void display() {
    stroke(0);
    strokeWeight(1);
    fill(0,0,255);
    ellipse(location.x, location.y, 10, 10);
  }
void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }
}