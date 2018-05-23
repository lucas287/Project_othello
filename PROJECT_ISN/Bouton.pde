class Bouton {
  int x, y; // The x- and y-coordinates
  int size; // Dimension (width and height)
  color baseGray = color(128,128,128,255); // Default gray value
  color overGray = color(0,255,0,255); // Value when mouse is over the button
  color pressGray = color(0,0,0,0); // Value when mouse is over and pressed
  boolean over = false; // True when the mouse is over
  boolean pressed = false; // True when the mouse is over and pressed
  PImage bg;
 
  Bouton(int xp, int yp, int s, PImage bag) {
    x = xp;
    y = yp;
    size = s;
    bg= bag;
  }
 
  void update() {
    if ((mouseX >= x) && (mouseX <= x + size) &&
      (mouseY >= y) && (mouseY <= y + size)) {
      over = true;
    } else {
      over = false;
    }
  }
 
  boolean press() {
    if (over == true) {
      pressed = true;
      return true;
    } else {
      return false;
    }
  }
 
  void release() {
    pressed = false; // Set to false when the mouse is released
  }
 
  void display() {
    if (pressed == true) {
      fill(pressGray);
      stroke(255);
      rect(x, y, size, size);
    } else if (over == true) {
      fill(overGray);
      stroke(255);
      rect(x, y, size, size);
    } else {
      image(bg, x, y);
    }
    
  }
}