class Radar 
{
  float rad = 100;
  float rx =750,ry = 100;
  float theta = 0.05f;
  float speed = 0.01f;
  int traillength = 150;
  
  void drawRadar()
  {
    theta += 0.005;

    for(int i = 0; i < traillength; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(88-(i-5),88, 88);
      float x = rx + sin(lineTheta) * rad;
      float y = ry - cos(lineTheta) * rad;
      line (rx, ry, x, y);
    }
    
    noFill();
    stroke(88,88,88);
    ellipse(750,100,rad*2,rad*2);
    ellipse(750,100,137.5,137.5);
    ellipse(750,100,75,75);
    
  }
  
}