// Corbyn Becker | April 17 | etch a sketch
int x, y;
PImage pic;
void setup() {
  size (800, 658);
  
  x = width/2;
  y = width/2;
  pic = loadImage("Etch.png");
  
}

void draw() {
  image(pic,0,0);
  strokeWeight(10);
  stroke(144,255,80);
  //background(100);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      //move up
      moveUp(5);
    } else if (key == 's' || key == 'S') {
      //move down
      moveDown(5);
    } else if (key == 'a' || key == 'A') {
      //move left
      moveLeft(5);
    } else if (key == 'd' || key == 'D') {
      //move right
      moveRight(5);
    }
  }
}

void mousePressed() { //used for saving image
saveFrame("line-######.png");
}

void keyPressed() { //used for drawing lines
}

void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}
void moveUp (int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y = y - rep;
}
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y = y + rep;
}
