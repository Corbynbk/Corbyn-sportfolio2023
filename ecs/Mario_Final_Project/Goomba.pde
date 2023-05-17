class Goomba {
  int x, y;
  PImage G1;

  Goomba() {
    x = width/2;
    y =height - 68;
    G1 = loadImage("Goomba1.png");
  }

  void display() {
    imageMode(CENTER);
    image(G1, x, y);
  }

  void move() {
    if (x<-50) {
      x = width;
    }
    x = x - 2;
  }
}
