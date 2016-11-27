//MAIN STARS
class Stars 
{ 
  void drawStars1()
  {
    //Star One
    pushMatrix();
    translate(width - 640, height*0.2);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star One part two
    pushMatrix();
    translate(width - 640, height*0.2);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
  
  void drawStars2()
  {
    //Star Two
    pushMatrix();
    translate(width - 400, height*0.85);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star Two part two
    pushMatrix();
    translate(width - 400, height*0.85);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
    
  void drawStars3()
  {
    //Star Three
    pushMatrix();
    translate(width - 80, height*0.5);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star Three part two
    pushMatrix();
    translate(width - 80, height*0.5);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
  
  void drawStars4()
  {
    //Star Four
    pushMatrix();
    translate(width + 70, height*0.2);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star Four part two
    pushMatrix();
    translate(width + 70, height*0.2);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
  
  void drawStars5()
  {
    //Star five
    pushMatrix();
    translate(width - 320, height*0.15);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star five part two
    pushMatrix();
    translate(width - 320, height*0.15);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
  
  void drawStars6()
  {
    //Star Six
    pushMatrix();
    translate(width - 680, height*0.7);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star Six part two
    pushMatrix();
    translate(width - 680, height*0.7);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
  
    void drawStars7()
  {
    //Star Seven
    pushMatrix();
    translate(width - 890, height*0.5);
    rotate(frameCount/-100.0);
    fill(239,240,143);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    //Star Seven part two
    pushMatrix();
    translate(width - 890, height*0.5);
    rotate(frameCount/-50.0);
    fill(255,255,214);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
   
   void star(float x, float y, float r1, float r2, int n)
   {
     float angle = TWO_PI/n;
     float halfAngle = angle/2;
     beginShape();
     
     for(float i = 0; i < TWO_PI; i += angle)
     {
       float sx = x + cos(i)*r2;
       float sy = y + sin(i)*r2;
       vertex(sx, sy);
       sx = x + cos(i+halfAngle)*r1;
       sy = y + sin(i+halfAngle)*r1;
       vertex(sx,sy);
      }
      endShape(CLOSE);
   } 
void mouseMoved() 
{
  if (mouseX > 700) 
  {
    width = width - 1;
  }
  else if(mouseX < 100)
  {
    width = width + 1;
  }
}
}


//BACKGROUND STARS
class RandStars
{ 
  void drawRandStars()
  {
    //Flashing Stars
    pushMatrix();
    translate(random(width),random(height));
    rotate(frameCount/-100.0);
    fill(255,255,255);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
  }
  
  void star(float x, float y, float r1, float r2, int n)
  {
    float angle = TWO_PI/n;
    float halfAngle = angle/2;
    
    beginShape();
    for(float i = 0; i < TWO_PI; i += angle)
    {
      float sx = x + cos(i)*r2;
      float sy = y + sin(i)*r2;
      vertex(sx,sy);
      sx = x + cos(i+halfAngle)*r1;
      sy = y + sin(i+halfAngle)*r1;
      vertex(sx,sy);
    }
    endShape(CLOSE);
  }
}

//STARTING FLASHING STARS
class FlashingStars
{ 
  void drawFlashStars()
  {
    //FirstStar
    pushMatrix();
    translate(random(width),random(height));
    rotate(frameCount/-100.0);
    fill(255,255,255);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();
    
    //SecondStar
    pushMatrix();
    translate(random(width),random(height));
    rotate(frameCount/-50.0);
    fill(185,180,180);
    noStroke();
    star(0,0,5,15,4);
    popMatrix();   
  }
  
  void star(float x, float y, float r1, float r2, int n)
  {
    float angle = TWO_PI/n;
    float halfAngle = angle/2;
    
    beginShape();
    for(float i = 0; i < TWO_PI; i += angle)
    {
      float sx = x + cos(i)*r2;
      float sy = y + sin(i)*r2;
      vertex(sx,sy);
      sx = x + cos(i+halfAngle)*r1;
      sy = y + sin(i+halfAngle)*r1;
      vertex(sx,sy);
    }
    endShape(CLOSE);
  }
}