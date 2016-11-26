class Clock extends clk
{
  int size;
  float q,r;
  
  Clock(int Size, float x, float y)
  {
    size = Size;
    q = x;
    r = y;
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
    text(h + ":" + nf(m,2) + ":" + nf(s,2), q, r);
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