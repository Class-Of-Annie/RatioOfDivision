//declaring variables needed across whole program
float x1 = 20.0;
float y1 = 10.0;

float x2 = 5.0;
float y2 = 10.0;




//SETUP - instructions here are followed once when program starts
void setup() {
  size(400, 400);
  ellipseMode(CENTER);
  fill(255);
}

//DRAW - instructions here are followed in order, then repeated unless told not to
void draw() {

  println("Point 1 is at (" + x1 + ", " + y1 + ")");
  println("Point 2 is at (" + x2 + ", " + y2 + ")");
  
  ellipse(convertToPixelX(x1), convertToPixelY(y1),5,5);
  ellipse(convertToPixelX(x2), convertToPixelY(y2),5,5);
  
  drawAxes();
  
  noLoop();  //prevents repetition
  
  
}


//OTHER METHODS - ones that I made up to handle tedious things related to drawing

//method that draws x and y axes
void drawAxes() {
  line(0, 200, 400, 200);
  line(200, 0, 200, 400);
}

//method to turn Cartesian coordinates into pixel coords for drawing
float convertToPixelX(float x) {
  float xP = (5.0*x)+100;
  return xP;
}

float convertToPixelY(float y) {
  float yP = -1*(5.0*y)+100;
  return yP;
}

