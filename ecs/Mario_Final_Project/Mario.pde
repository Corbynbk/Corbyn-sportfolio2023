class Mario {
  int x, y;
  PImage M1;

  Mario () {
    x = width/2;
    y =height - 51;
    M1 = loadImage("MarioR.png");
  }

  void display() {
    imageMode(CENTER);
    M1.resize(50,90);
    image(M1, x, y);
  }

  void move(char dir) {
    if (dir == 'w') {
      y=y-10;
    } else if (dir=='s') {
      y=y+10;
    } else if (dir=='a') {
      x=x-10;
    } else if (dir=='d') {
      x=x+10;
    }
  }
}
