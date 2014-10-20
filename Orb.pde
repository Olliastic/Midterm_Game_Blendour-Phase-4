class Orb {


  float dropSpeed;
  float x;
  float y = 10;
  float place;
  int shade;
  int radius;
  int land;
  color ocolor;
  boolean checkCollision;

  Orb(float place, float Oy, color _color) {
    x = place;
    y = Oy;
    dropSpeed = y + 1;
    ocolor = _color;
    radius = 30;
    checkCollision = true;
  }



  void display () {
    fill (ocolor);
    noStroke();
    ellipse (x, y, radius, radius); 
    y = y + dropSpeed;
    //I removed the check against dropspeed, it's not needed.
    if (y >= 480) {
      y = 480;
      dropSpeed = 0;
    }
  }
  //I'm renaming your function so that the name equates more with what it's actually doing
  //I'm also going to return a boolean function because now our "end of the line" test for creating
  //a new orb won't work for stacking
  boolean touchingOtherOrb(Orb newOrb) {
    //the first conditional statement is checking to make sure we don't duplicate our logic,
    //which will result in a bunch of new orbs at the top of the screen and freezing
    if (checkCollision == true) {
      if (dist(x, y, newOrb.x, newOrb.y) <= radius) {
        //stop the orb from moving
        dropSpeed = 0;
        //stop the other orb from moving
        newOrb.dropSpeed = 0;
        //tell the orb to stop moving as well
        //we want it to check to see if we've already detected this one, otherwise we will keep
        //creating new orbs based on our logic in the main sketch
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



  void Stack (Orb newOrb) {
    if (dist(x, y, newOrb.x, newOrb.y) <= radius) {
      println("stacked");
    }
  }
}

