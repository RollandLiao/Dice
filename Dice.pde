Die bob;
void setup()
{
  noLoop();
  noStroke();
  size(500,500);
}
void draw()
{
  background(111,218,255);

    for(int y = 35; y < 475; y = y +75)
    {
      for(int x = 35; x < 475; x = x + 75)
      {
        bob = new Die(x,y);
    //  Die bob = new Die(x,y);
      bob.show();
      }
    }
    textSize(20);
    bob.roll();
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
    fill(0);
    text("Roll: "+ numDots,35,490);
    
  }
  void show()
  {
    fill((int)(Math.random() * 200),100 * ((int)(Math.random()*2+1)),100 * ((int)(Math.random()*2+1)));
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
      ellipse(15+myX,38+myY,10,10);
      ellipse(25+myX,25+myY,10,10);
      ellipse(35+myX,12+myY,10,10);
      ellipse(35+myX,38+myY,10,10);
    }
    else if (numDots == 6)
    {
      ellipse(15+myX,12+myY,10,10);
      ellipse(15+myX,25+myY,10,10);
      ellipse(15+myX,38+myY,10,10);
      ellipse(35+myX,12+myY,10,10);
      ellipse(35+myX,25+myY,10,10);
      ellipse(35+myX,38+myY,10,10);
    }
  }
}