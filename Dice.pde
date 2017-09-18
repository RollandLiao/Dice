
void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
  background(111,218,255);
  Die bob = new Die(0,0);
  bob.show();
  
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
    for(int y = 35; y < 475; y = y +75)
    {
      for(int x = 35; x < 475; x = x + 75)
      {
        fill(255);
        rect(x,y,50,50,7,7,7,7);
        fill(0);
        if ((int)(Math.random() * 5 + 1) == 1)
        {
        ellipse(x+25,y+25,10,10);
        } 
        else if ((int)(Math.random() * 5 + 1) == 2)
        fill(255);
        ellipse(x+25,y+25,10,10);
        ellipse(x+25,y+25,10,10); 
      }
    }
  }
}