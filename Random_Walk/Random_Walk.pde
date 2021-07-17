//Random Walk based on random number generation
float x = 0;
float y = 0;
int i = 0;
void setup()
{
  size(800,800);
  stroke(255);
  background(0);
  frameRate(200);
}

void draw()
{
  translate(width/2,height/2);
  square(x,y,2.5);
  i = int(random(8));
  if(i==0)
  {
   x+=5; 
  }
  else if(i==1)
  {
   x-=5;
  }
  else if(i==2)
  {
   y+=5; 
  }
  else if(i==3)
  {
   y-=5; 
  }
}
