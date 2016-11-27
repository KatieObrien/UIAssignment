Clock clk1 = new Clock(40,80,40);

FlashingStars flashstar = new FlashingStars();

Stars star = new Stars();

RandStars randStar = new RandStars();

Info info = new Info();

Radar radar = new Radar();

PFont font;

boolean[]keys = new boolean[1000];

/*
Info[] info;
String[] lines;
int counter;
int amount = 3;
int first;
*/

void setup()
{
  size(800,500);
  
  /*
  font = loadFont("AppleSDGothicNeo-ExtraBold-28.vlw");
  textFont(font,40);
  int i;
  lines = loadStrings("StarInfo.txt");
  info = new Info[lines.length];
  for(i = 0; i < lines.length; i ++)
  {
    String[] inf = split(lines[i], TAB);
    if(inf.length == 3)
    {
      info[counter] = new Info(inf);
      counter ++;
    }
  }
  if(counter != info.length)
  {
    info = (Info[]) subset(info, 0, counter);
  }
  */
 
}

void keyPressed()
{
  keys[keyCode]=true;
}

boolean checkKey(int k)
{
  if(keys.length >= k)
  {
    return keys[k] || keys[Character.toUpperCase(k)];
  }
  return false;
}

void draw()
{
    font = loadFont("AnonymousPro-Bold-48.vlw");
    textFont(font);
    background(0);
    fill(255);
    text("Welcome", 310,height/2);
    textFont(font,32);
    text("Press space key to initiate system", 110, 300);
  
    flashstar.drawFlashStars();
  
    if(checkKey(' '))
    {
    
      background(0);
  
      //Stars
      star.drawStars1();
      star.drawStars2();
      star.drawStars3();
      star.drawStars4();
      star.drawStars5();
      star.drawStars6();
      star.drawStars7();
      star.mouseMoved();
  
      //Flashing background Stars
      randStar.drawRandStars();
      
      //Bar - top
      fill(50,145,237);
      stroke(147,147,147);
      triangle(-1,-1,-1,90,300,-1);
      triangle(801,-1,801,90,500,-1);
      noStroke();
      rect(-1,-1,801,50);
      stroke(147,147,147);
      line(137,48,663,48);
      
      //Bar - bottom
      fill(50,146,237);
      stroke(147,147,147);
      triangle(-1,501,-1,410,300,501);
      triangle(801,501,801,410,500,501);
      noStroke();
      rect(-1,452,801,50);
      stroke(147,147,147);
      line(137,452,663,452);
      
      //Square
      rect(550,-1,460,100);
      
      //Words
      stroke(80,84,88);
      fill(85,85,85);
      font = loadFont("AppleSDGothicNeo-ExtraBold-28.vlw");
      textFont(font,26);
      text("X:",20,490);
      text(mouseX,53,490);
      text("Y:",110,490);
      text(mouseY,143,490);
      
      text("Captain Control Board",650,490);
      
      //Clock
      clk1.time();
      clk1.display();
      
      //Radar
      radar.drawRadar();
      
      info.mouseMoved();
      /*
      //Star Info
      fill(255);
      int i;
      for(i=0;i<amount;i++)
      {
        int current = first + i;
        if(current < counter)
        {
          fill(255);
          text(current + " : " + info[current].name, 400, 250);
        }
      }
      */
 
    }
}