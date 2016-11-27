class Fuel
{
  
  float x = 120;
  
  void drawBar()
  {
    noStroke();
    fill(0);
    rect(600,5,150,40,20);
    fill(147,147,147);
    rect(615,10,x,30);
    fill(0);
    textSize(30);
    text("FUEL",675,37);
    
    //int time = second();
    if(x>0)
    {
      x = x -0.1;
    }
  }
}