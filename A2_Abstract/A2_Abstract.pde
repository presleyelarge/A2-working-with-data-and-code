float redX, redY;
float yellowX, yellowY;
float greenX, greenY;
float blueY;
float dotX, dotY;

void setup() {
  size(600, 600);
  randomizeShapes();
}

void draw() {
  background(250, 240, 230);
  noStroke();
  fill(50, 100, 255);
  rect(0, blueY, width, height - blueY);

  fill(255, 0, 0);
  ellipse(redX, redY, 150, 150);

  noFill();
  stroke(0);
  strokeWeight(8);
  ellipse(redX, redY, 170, 170);

  noStroke();
  fill(255, 230, 0);
  ellipse(yellowX, yellowY, 100, 100);

  fill(0, 180, 0);
  ellipse(greenX, 400, 160, 90);

  fill(0);
  ellipse(dotX, dotY, 20, 20);
  ellipse(dotX - 20, dotY + 25, 15, 15);
  ellipse(dotX - 40, dotY + 50, 10, 10);

  stroke(0);
  strokeWeight(3);
  line(redX, redY, greenX, 400);
  line(yellowX, yellowY, dotX, dotY);

  starLines(500, 100, 5, 50);
  starLines(100, 500, 6, 40);
}

void randomizeShapes() {
  redX = random(100, 300);
  redY = random(100, 250);
  yellowX = random(350, 500);
  yellowY = random(100, 250);
  greenX = random(200, 400);
  blueY = random(380, 450);
  dotX = random(420, 520);
  dotY = random(360, 420);
}

void mousePressed() {
  randomizeShapes();
}

void starLines(float x, float y, int points, float length) {
  for (int i = 0; i < points; i++) {
    float angle = TWO_PI / points * i;
    float x2 = x + cos(angle) * length;
    float y2 = y + sin(angle) * length;
    line(x, y, x2, y2);
  }
}
