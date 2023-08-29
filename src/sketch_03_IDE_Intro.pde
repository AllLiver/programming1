// Oliver Fedderson | 24 Aug 2023 03-IDE Intro

// Declaring variables
float xspeed, yspeed;
int xpos, ypos, wdth, ht;
int xpos1, ypos1;
float xspeed1, yspeed1;
int xpos2, ypos2;
float xspeed2, yspeed2;

void setup() { // Runs once on start
  // Sets window size
  fullScreen();
  // size(displayWidth, displayHeight); // doesnt work on my computer, makes a tiny application frame
  // size(400, 400);

  // Sets background to white
  background(0);

  // Initializing variables
  // xspeed = 0; // commented to do challenge 4
  // yspeed = 10;

  xspeed = random(10, 20);
  yspeed = random(10, 20);

  xspeed1 = random(10, 20);
  yspeed1 = random(10, 20);

  xspeed2 = random(10, 20);
  yspeed2 = random(10, 20);

  wdth = 20;
  ht = 20;

  // No border
  noStroke();

  // Gets the center of the window
  xpos = width/2;
  ypos = height/2;

  xpos1 = width/2;
  ypos1 = width/2;

  xpos2 = width/2;
  ypos2 = width/2;

  // Sets the framerate
  // frameRate(60/2);
  frameRate(60);
}

void draw() { // Runs on a loop (60 fps means 60 loops per second)

  // Sets color of ball and background
  background(0);
  // fill(255); // commented so i can have different colors, this solves challenge 6

  // Makes a circle and moves it around ellipse(x, y, w, h)
  noStroke();
  
  fill(255, 0, 0);
  ellipse(xpos, ypos, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  
  fill(0, 255, 0);
  ellipse(xpos1, ypos1, wdth, ht);
  xpos1 += xspeed1;
  ypos1 += yspeed1;
  
  fill(0, 0, 255);
  ellipse(xpos2, ypos2, wdth, ht);
  xpos2 += xspeed2;
  ypos2 += yspeed2;

  if (xpos >= width-wdth/2 || xpos <= wdth/2) {
    // Inverts x direction if true
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2) {
    // Inverts y direction if true
    yspeed *= -1;
  }

  if (xpos1 >= width-wdth/2 || xpos1 <= wdth/2) {
    // Inverts x direction if true
    xspeed1 *= -1;
  }
  if (ypos1 >= height-ht/2 || ypos1 <= ht/2) {
    // Inverts y direction if true
    yspeed1 *= -1;
  }

  if (xpos2 >= width-wdth/2 || xpos2 <= wdth/2) {
    // Inverts x direction if true
    xspeed2 *= -1;
  }
  if (ypos2 >= height-ht/2 || ypos2 <= ht/2) {
    // Inverts y direction if true
    yspeed2 *= -1;
  }
}
