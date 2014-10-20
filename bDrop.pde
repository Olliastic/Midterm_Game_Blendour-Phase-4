class bDrop {

  color bDropShade;
  int r = 255;
  int g = 255;
  int b = 255;



  bDrop() {
    bDropShade = color(r, g, b);
  }



  void display() {
    rectMode(CORNER);
    fill(r, g, b);
    stroke(0);
    strokeWeight(5);

    rect(10, 10, 380, 482);
    if (mySliderR.y == 540) {
      r = 128;
    }
    if (mySliderG.y == 540) {
      g = 128;
    }
    if (mySliderB.y == 540) {
      b = 128;
    }
  }
}

