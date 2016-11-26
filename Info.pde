class Info 
{
  String name;
  float age;
  float id;
  
  public Info(String[] inf)
  {
    name = inf[0];
    age = float(inf[1]);
    id = float(inf[2]);
  }
  {



  
  if(mousePressed)
      {
        int i;
        for(i = 0; i < amount; i ++)
        {
          int thisone = first + i;
          if(thisone < counter)
          {
            text(thisone + " : " + info[thisone].name, 30,30 +i*20);
          }
        }
      }
}
}