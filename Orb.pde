class Orb {


  float dropSpeed;

  float x ;
  float y = 10;
  float place;
  int shade;
  int radius;
  int land;
  color ocolor;
  boolean checkCollision;
  boolean increaseSpeed;
  boolean gone = false;

  Orb(float place, float Oy, color _color) {
    x = place;
    y = Oy;
    dropSpeed = y + 1;
    ocolor = _color;
    radius = 50;
    checkCollision = true;
//  increaseSpeed = false;
  }



  void display () {

    fill (ocolor);
    noStroke();
    ellipse (x, y, radius, radius); 
    y = y + dropSpeed;
    if (y >= 470) {
      y = 470;
      dropSpeed = 0;
    }
  }
  
  boolean touchingOtherOrb(Orb newOrb) {
    if (checkCollision == true) {
      if (dist(x, y, newOrb.x, newOrb.y) <= radius) {
        //stop the orb from moving
        dropSpeed = 0;
        //stop the other orb from moving
        newOrb.dropSpeed = 0;
        checkCollision = false;
        return true;
      }    
      if (dist (x, y, myOrb.x, myOrb.y) <= radius) {
        dropSpeed = 0;
        newOrb.dropSpeed = 0;
        checkCollision = false;
        return true;
      }
    }
    return false;
  }

  //--------------------------------------------------
  /*
  
  boolean fall(Orb newOrb) {
    if (gone == true && checkCollision == false) {
      if (dist(x, y, newOrb.x, newOrb.y) > radius) {
        dropSpeed = y + 1;
        newOrb.dropSpeed = dropSpeed + 1;
        gone = false;
        checkCollision = true;
        return true;
      }
      if (dist(x, y, myOrb.x, myOrb.y) > radius) {
        dropSpeed = y + 1;
        newOrb.dropSpeed = dropSpeed + 1;
        gone = false;
        checkCollision = true;
        return true;
      }
    }
    return false;
  }

  */
  // --------------------------------------------------
}

