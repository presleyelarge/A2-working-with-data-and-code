int cols = 4;           
int rows = 4;           
int cellSize = 150;     
int circlesPerCell = 6; 

color[] palette = {
  color(46, 83, 162),
  color(217, 186, 66),
  color(191, 46, 38),
  color(64, 122, 75),
  color(126, 69, 154),
  color(230, 123, 41),
  color(56, 105, 109),
  color(248, 232, 177),
  color(250, 240, 226),
  color(179, 96, 57)
};

void settings() {
  size(cols * cellSize, rows * cellSize);
}

void setup() {
  noLoop();
  noStroke();
  colorMode(RGB, 255);
}

void draw() {
  background(250);
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      float x0 = x * cellSize;
      float y0 = y * cellSize;
      color bg = randomColor();
      fill(bg);
      rect(x0, y0, cellSize, cellSize);
      drawConcentricCircles(x0, y0, cellSize);
    }
  }
}

void drawConcentricCircles(float x0, float y0, float size) {
  float cx = x0 + size / 2;
  float cy = y0 + size / 2;
  for (int i = circlesPerCell; i > 0; i--) {
    float r = size * (0.9 * i / circlesPerCell);
    color c = randomColor();
    fill(red(c) + random(-10, 10), green(c) + random(-10, 10), blue(c) + random(-10, 10));
    pushMatrix();
    translate(cx + random(-8, 8), cy + random(-8, 8));
    rotate(radians(random(-10, 10)));
    ellipse(0, 0, r + random(-8, 8), r + random(-8, 8));
    popMatrix();
  }
}

color randomColor() {
  return palette[int(random(palette.length))];
}
