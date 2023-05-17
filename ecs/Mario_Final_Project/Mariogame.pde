// Corbyn Becker | April 26 | Mario Game
Boolean play;
Mario italy;
Goomba tim;
int score;
float goombaDist;
PImage bg;

void setup() {
   loadImage("bg.jpg");
  play = false;
  size(809, 450);
  italy = new Mario();
  tim = new Goomba();
  score = 0;
  bg = loadImage("bg.jpg");
  
}

void draw() {
  
  println(goombaDist);
  if (!play) {
    startScreen();
  } else {
    background(0);
    drawBackground();
    infoPanel();
    italy.display();
    tim.display();
    tim.move();
    goombaDist = dist(italy.x, italy.y, tim.x, tim.y);
    if (italy.y > height) {
      gameOver();
    }
if(goombaDist<30){
score = score + 10;

}

    //italy.move(mouseX, mouseY);
  }
}
void keyPressed() {
  if (keyPressed) {
    if (key == 'w') {
      italy.move('w');
    } else if (key == 's') {
      italy.move('s');
    } else if (key == 'a') {
      italy.move('a');
    } else if (key == 'd') {
      italy.move('d');
    } else if (key == ' ') {
      play = true;
    }
  }
}
void drawBackground() {
  fill(0,0,200);
  bg.resize(800,450);
  imageMode(CORNERS);
 image(bg,0,0);
 
}

void startScreen() {
  background(0);
  fill(255);
  text("Welcome to Mario!", width/2, 400);
  text("Made by Corbyn Becker", width/2, 420);
  text("Press space bar to start the game!", width/2, 440);
}


void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  text("Game Over", width/2, 400);
  text("Score:", width/2, 420);
  text(":(", width/2, 440);
  noLoop();
}

void infoPanel () {
  fill(5, 5);
  rect(0, 0, width, 80);
  fill(0);
  text("Score: " + score, 20, 70);
}
