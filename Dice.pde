
void setup()
{
  noLoop();
  noStroke();
  size(500,500);
}
void draw()
{
  background(111,218,255);
 // Die bob = new Die(x,y);
    for(int y = 35; y < 475; y = y +75)
    {
      for(int x = 35; x < 475; x = x + 75)
      {
      Die bob = new Die(x,y);
      bob.show();
      }
    }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int numDots, myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numDots = ((int)(Math.random() * 6 + 1));
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(255);
    rect(myX,myY,50,50,7,7,7,7);
    fill(0);
    if (numDots == 1)
    {
      ellipse(25+myX,25+myY,10,10);
    }
    else if (numDots == 2)
    {
      ellipse(25+myX,16+myY,10,10);
      ellipse(25+myX,34+myY,10,10);
    }
    else if (numDots == 3)
    {
      ellipse(25+myX,12+myY,10,10);
      ellipse(25+myX,25+myY,10,10);
      ellipse(25+myX,38+myY,10,10);
    }
    else if (numDots == 4)
    {
      ellipse(15+myX,16+myY,10,10);
      ellipse(35+myX,16+myY,10,10);
      ellipse(15+myX,34+myY,10,10);
      ellipse(35+myX,34+myY,10,10);
    }
    else if (numDots == 5)
    {
      ellipse(15+myX,12+myY,10,10);
      ellipse(15+myX,25+myY,10,10);
      ellipse(15+myX,38+myY,10,10);
    }
  }
}