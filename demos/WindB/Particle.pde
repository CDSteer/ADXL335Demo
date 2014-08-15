public class Particle {
  PVector position,pposition,speed;
  float col;
  float r;
  float g;
  float b;

  public Particle(float x, float y) {
    position = new PVector(random(x,x+140), 89);
    pposition = position;
    speed = new PVector(0,0);
    col = random(30,100);
  }

  void draw() {
    line(position.x,position.y,pposition.x,pposition.y);
    r = random(1,255);
    g = random(1,255);
    b = random(1,255);
    fill(r,g,b);
    ellipse(position.x,position.y,20,20);
  }

  void calculate(float xA, float yA) {
    position = new PVector(xA, yA);
    pposition = position;
    // position.x = position.x + xA;
    // position.y = position.y + yA;
    // gravity();

  }

  void gravity() {
    speed.y += .00005;
    speed.x += .00001;
    position.add(speed);
  }
}
