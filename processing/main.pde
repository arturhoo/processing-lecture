ArrayList<Dot> dots;
PVector v = new PVector(0, 0);
int numDots = 50;

void updateWind(int angle, float speed) {
  v = PVector.fromAngle(radians(angle + 90));
  v.mult(speed);
}

class Dot {
  float x, y;

  Dot(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void fixPosition() {
    if(x > width) { x = x % width; }
    else if (x < 0) { x += width; }
    if(y > height) { y = y % height; }
    else if (y < 0) { y += height; }
  }

  void move() {
    x += v.x;
    y += v.y * -1;
  }

  void draw() {
    fixPosition();
    stroke(255);
    ellipse(x, y, 5, 5);
  }
}

void setup() {
  size(800, 600);
  dots = new ArrayList<Dot>();
  for(int i=0; i < numDots; i++) {
    dots.add(new Dot(random(width), random(height)));
  }
}

void draw() {
  background(0);
  for(int i=0; i < numDots; i++) {
    dots.get(i).move();
    dots.get(i).draw();
  }
}
