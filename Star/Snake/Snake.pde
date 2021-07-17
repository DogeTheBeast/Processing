class fruit
{
  float x;
  float y;
  int z= 1;
  int b = 0;
  float sx = -10;
  float sy = -10;
  int a=90;

void keyPressed()
{
  if (key == 119)
  {
   a=0;
  }
}

void snake_block()
  {
        fill(0,255,0);
    clear();
    
    
    if (sx == -width/2 || sx == (width/2)-20)
    {
      sx = -10;
      sy = -10;
      
      
    }
    else{
    sx = sx-(1*cos(a));
    rect(sx,sy,20,20);
    }
   
}
  
  void food()
{
  if (z>0)
  {
 x = random(-width/2 +20,width/2 -20);
 y = random(-height/2 +20,height/2 -20);
 fill(255,0,0);
 noStroke();
 rect(x,y,20,20); 
 z--;
  }
}
  

  }
  

  
  
  
  
  
