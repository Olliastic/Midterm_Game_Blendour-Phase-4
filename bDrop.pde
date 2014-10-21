class bDrop {

  color bDropShade;
  int r;
  int g;
  int b;


  bDrop() {
    bDropShade = color(r, g, b);
  }



  void display() {

    if (mySliderR.y == 550) {
      r = 0;
    }
    if (mySliderR.y == 540) {
      r = 128;
    }
    if (mySliderR.y == 530) {
      r = 255;
    }
    if (mySliderG.y == 550) {
      g = 0;
    }
    if (mySliderG.y == 540) {
      g = 128;
    }
    if (mySliderG.y == 530) {
      g = 255;
    }
    if (mySliderB.y == 550) {
      b = 0;
    }
    if (mySliderB.y == 540) {
      b = 128;
    }
    if (mySliderB.y == 530) {
      b = 255;
    }
    rectMode(CORNER);
    fill(r,g,b);
    stroke(0);
    strokeWeight(5);
    rect(10, 10, 380, 482);
  }
}

