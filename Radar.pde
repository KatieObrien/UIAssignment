class Radar 
{
  float rad = 50;
  float rx =750,ry = 60;
  float theta = 0.05f;
  float speed = 0.01f;
  int trail = 150;
  
  void drawRadar()
  {
    theta += 0.005;

    for(int i = 0; i < trail; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(88+(i+5),88+(i+5), 88+(i+5));
      float x = rx + sin(lineTheta) * rad;
      float y = ry - cos(lineTheta) * rad;
      line (rx, ry, x, y);
    }
    
    noFill();
    stroke(88,88,88);
    ellipse(750,60,rad*2,rad*2);
    //ellipse(750,100,137.5,137.5);
    ellipse(750,60,50,50);
    
  }
  
}