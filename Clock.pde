class Clock extends clk
{
  int size;
  float x,y;
  
  Clock(int Size, float r, float q)
  {
    size = Size;
    x = r;
    y = q;
  }
  
  void time()
  {
    super.time();
  }
  PFont font;
  void display()
  {
    font = loadFont("Impact-48.vlw");
    textFont(font);
    fill(80,84,88);
    textSize(size);
    textAlign(CENTER);
    text(h + ":" + nf(m,2) + ":" + nf(s,2), x, y);
  }
}

class clk
{
  int s,m,h;
  clk()
  {
  }
  
  void time()
  {
    s = second();
    m = minute();
    h = hour();
  }
}