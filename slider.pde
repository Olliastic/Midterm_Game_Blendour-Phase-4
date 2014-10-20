class slider {


  int selectedButton = 0;
  int swipe = 490;
  int x;
  int y;




  slider(int _x, int _y) {
    x = _x;
    y = _y;
  }



  void display() {
    rectMode(CENTER);
    rect(x, y, 60, 20);
  }
}

