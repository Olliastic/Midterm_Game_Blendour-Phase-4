
slider mySliderR;
slider mySliderG;
slider mySliderB;
Orb myOrb;
bDrop myBdrop;
ArrayList<Orb> myOrbs;
int placement = 550;
int r;
int g;
int b;
int x;
int y;
color shaders[];
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
boolean selection = true;
boolean selectR = false;
boolean selectB = false;
boolean selectG = false;


void setup() {
  size (400, 600);
  myBdrop = new bDrop();
  mySliderR = new slider(50, placement);
  mySliderB = new slider(200, placement);
  mySliderG = new slider(350, placement);
  myOrbs = new ArrayList<Orb>();
  shaders = new color[27];
  shaders[0] = color(0);
  shaders[1] = color(255, 255, 255);
  shaders[2] = color(255, 0, 0);
  shaders[3] = color(0, 255, 0);
  shaders[4] = color(0, 0, 255);
  shaders[5] = color(128, 255, 255);
  shaders[6] = color(255, 128, 255);
  shaders[7] = color(255, 255, 128);
  shaders[8] = color(128, 128, 255);
  shaders[9] = color(255, 128, 128);
  shaders[10] = color(128, 255, 128);
  shaders[11] = color(128, 0, 0);
  shaders[12] = color(0, 128, 0);
  shaders[13] = color(0, 0, 128);
  shaders[14] = color(255, 128, 0);
  shaders[15] = color(0, 255, 128);
  shaders[16] = color(128, 255, 0);
  shaders[17] = color(255, 0, 128);
  shaders[18] = color(0, 128, 255);
  shaders[19] = color(128, 0, 255);
  shaders[20] = color(128, 128, 128);
  shaders[21] = color(0, 128, 128);
  shaders[22] = color(128, 0, 128);
  shaders[23] = color(128, 128, 0);
  shaders[24] = color(0, 255, 255);
  shaders[25] = color(255, 0, 255);
  shaders[26] = color(255, 255, 0);


  //this isn't needed. the following code just reassigns based on what already exists.
  /*
  for (int i = 0; i < 27; i++) {
   shaders[i] = color(shaders[int(random(27))]);
   }
   */
  myOrb = new Orb(random(10, 390), 0, shaders[int(random(27))]);
}



void keyPressed() {


  if (key == CODED) {
    if (keyCode == UP && selectR == true) {
      mySliderR.y = 540;
      println("MovingDown");
    }
  }

  switch (key) {
  case 'r':
    selectR = true;
    selectG = false;
    selectB = false;
    println("Red is on");
    break;
  case 'g':
    selectR = false;
    selectG = true;
    selectB = false;
    println("Green is on");
    break;
  case 'b':
    selectR = false;
    selectG = false;
    selectB = true;
    println("Blue is on");
    break;
  default:
    break;
  }
}


void draw() {


  background(255);
  myBdrop.display();


  for (int i = 0; i < myOrbs.size (); i++) {
    Orb orb = myOrbs.get(i);
    orb.display();
    //now that we've displayed it, let's go through and compare it to all of the other orbs
    //to see if they're touching
    //we start with the orb we're on and continue until the end.
    //if there's 5 orbs, 0 gets tested against 1,2,3,4
    //1 gets tested against 2,3,4
    //2 gets tested against 3,4
    //3 gets tested against 4.

    for (int j = i + 1; j < myOrbs.size (); j++) {
      Orb otherOrb = myOrbs.get(j);

      if (orb.touchingOtherOrb(otherOrb) == true) {
        newOrb();
      }
    }
  }
  if (myOrbs.size() > 0) {
    Orb orb = myOrbs.get(myOrbs.size()-1);
    if (orb.y >= 480) {
      newOrb();
    }
  } else {
    newOrb();
  }
  fill(red);
  mySliderR.display();
  fill(green);
  mySliderG.display();
  fill(blue);
  mySliderB.display();
}


void newOrb() {
  Orb newOrb = new Orb(random(50, 300), 0, shaders[int(random(27))]);
  myOrbs.add(newOrb);
}

