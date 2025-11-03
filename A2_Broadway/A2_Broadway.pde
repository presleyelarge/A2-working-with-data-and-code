int cell = 20;

color COL_BG   = color(250, 250, 250);
color COL_YEL  = color(245, 210, 40);
color COL_RED  = color(220, 40, 40);
color COL_BLUE = color(40, 70, 200);
color COL_GREY = color(200, 200, 200);

void setup() {
  size(800, 800);
  noLoop();
  rectMode(CORNER);
  noStroke();
}

void draw() {
  background(COL_BG);

  for (int y = 0; y < height; y += cell) {
    for (int x = 0; x < width; x += cell) {
      fill(COL_YEL);
      rect(x, y, cell, cell);
    }
  }

  for (int i = 0; i < 500; i++) {
    int x = int(random(width / cell)) * cell;
    int y = int(random(height / cell)) * cell;
    fill(COL_BG);
    rect(x, y, cell, cell);
  }

  for (int i = 0; i < 150; i++) {
    int x = int(random(width / cell)) * cell;
    int y = int(random(height / cell)) * cell;
    float r = random(100);
    if (r < 50) fill(COL_RED);
    else fill(COL_BLUE);
    rect(x, y, cell, cell);
  }

  for (int i = 0; i < 25; i++) {
    int x = int(random(width / (cell*4))) * cell*4;
    int y = int(random(height / (cell*4))) * cell*4;
    fill(COL_BG);
    rect(x, y, cell*4, cell*4);
    fill(random(1) > 0.5 ? COL_RED : COL_BLUE);
    rect(x + cell, y + cell, cell*2, cell*2);
  }
}
