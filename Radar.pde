class Radar 
{
  float rad = 100;
  float rx =700,ry = 100;
  float theta = 0.05f;
  float speed = 0.01f;
  int traillength = 150;
  
  void drawRadar()
  {
    theta += 0.005;
    
    
  
    float intensityChange = 100.0f / traillength;
    for(int i = 0; i < traillength; i ++)
    {
      float lineTheta = theta - (i * speed);
      stroke(0,0 - (i * intensityChange), 0);
      float x = rx + sin(lineTheta) * rad;
      float y = ry - cos(lineTheta) * rad;
      line (rx, ry, x, y);
    }
    
    noFill();
    stroke(0);
    ellipse(250,250,rad*2,rad*2);
    
  }
  
}