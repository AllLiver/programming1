// Oliver Fedderson | Aug 25 2023 | Shapes

void setup () {

  // Sets window size and background color
  size(650, 550);
  background(150);
}

void draw () {

  // Draws grid
  textSize(12);

  for (int i = 0; i <= width; i += 50) {
    fill(0);
    line(i, 0, i, height);
    fill(255);
    text(i, i, 10);
  }

  for (int i = 0; i <= height; i += 50) {
    fill(0);
    line(0, i, width, i);
    fill(255);
    text(i, 0, i);
  }

  // Draws first row
  fill(255, 255, 0);
  rect(20, 20, 120, 120);
  rect(180, 20, 120, 120, 20);
  rect(340, 20, 120, 120, 20, 10, 30, 50);
  rect(500, 40, 120, 85);

  // Draws second row
  fill(255, 0, 0);
  circle(20+(120/2), 300-(120/2), 120);
  ellipse(180+(120/2), 300-(120/2), 120, 80);
  ellipse(400, 300-(120/2), 80, 120);
  fill(0, 0, 255);
  triangle(500, 300, 560, 180, 620, 300);

  // Draws the third row
  triangle(20, 420, 30, 340, 130, 460);
  fill(0, 255, 255);
  quad(180, 460, 180, 340, 300, 340, 300, 380);
  quad(360, 400, 400, 340, 440, 400, 400, 460);
  quad(500, 340, 620, 400, 500, 460, 560, 400);
}
