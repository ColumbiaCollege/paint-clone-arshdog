int size;
int green;
int red;
int blue;
void setup() {
  size(500, 500);
  background(255);
  ellipseMode(CENTER);
  noStroke();
  size = 10;
  fill(0, 255, 0);
  rect(0, 0, 50, 50);
  fill(0, 100, 0);
  rect(50, 0, 50, 50);
}
void draw() {
  //green
  fill(0, 255, 0);
  rect(0, 0, 50, 50);
  //red
  fill(0, 0, 255);
  rect(200, 0, 50, 50);
  //blue 
  fill(255, 0, 0);
  rect(100, 0, 50, 50);

  //dark green
  fill(0, 100, 0);
  rect(50, 0, 50, 50);
  //dark red
  fill(100, 0, 0);
  rect(150, 0, 50, 50);
  //dark blue  
  fill(0, 0, 100);
  rect(250, 0, 50, 50);

fill(red, green, blue);
  if (mousePressed) {
    ellipse(mouseX, mouseY, size, size);
  }
}
//boundaries for my colors 
int modulo255(int number) {
  if (number >255) {
    return number -255;
  } else if (number <0) {
    return number +255;
  } else {
    return number;
  }
}

void mousePressed() {
  //light green when mouse is clicked in these coordinates 
  if (mousePressed && mouseX <= 50 && mouseY < 50) {
    green = modulo255(green + 10);
  }
  //Dark Green when mouse is clicked in these coordinates  
  if (mousePressed && mouseX <= 100 && mouseX >= 50 && mouseY < 50) {
    green = modulo255(green - 10);
  }
  //light red when mouse is clicked in these coordinates 
  if (mousePressed && mouseX <= 150 && mouseX>100 && mouseY < 50) {
    red = modulo255(red + 10);
  }
  //dark red when mouse is clicked in these coordinates 
  if (mousePressed && mouseX <= 200 && mouseX >= 150 && mouseY < 50) {
    red = modulo255(red - 10);
  }
  //light blue when mouse is clicked in these coordinates 
  if (mousePressed && mouseX <= 250 && mouseX>200 && mouseY < 50) {
    blue = modulo255(blue + 10);
  }
  //dark blue when mouse is clicked in these coordinates 
  if (mousePressed && mouseX <= 300 && mouseX >= 250 && mouseY < 50) {
    blue = modulo255(blue - 10);
  }
}
