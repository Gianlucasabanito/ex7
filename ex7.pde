int num = 6;
sQuare[][] mysQuare = new sQuare[num][num];

void setup() {
  size(602, 602);
  for (int i = 0; i < mysQuare.length; i ++) {
    for (int j = 0; j < mysQuare.length; j ++) {
      mysQuare[i][j] = new sQuare(100 * i, 100 * j, 100);
    }
  }
}

void draw() {
  background(#202020);
  for (int i = 0; i < mysQuare.length; i ++) {
    for (int j = 0; j < mysQuare.length; j ++) {   
      mysQuare[i][j].display();
    }
  }
}

class sQuare {

  float xpos;
  float ypos;
  int boxsize;


  sQuare (float x, float y, int size) {
    xpos = x;
    ypos = y;
    boxsize = size;
  }

  void display() {


    stroke(#FFFFFF);
    strokeWeight(1);
    noFill();
    rectMode(CENTER);

    pushMatrix();
    translate(xpos+50, ypos+50);
    for (int r = 1; r < 5; ++r) {
      //pushMatrix();
    rect(0, 0, boxsize/4 * r, boxsize/4 * r);
      //popMatrix();
    }
    popMatrix();
  }
}
