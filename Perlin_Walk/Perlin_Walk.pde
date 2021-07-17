//Random Walk based on perlin noise
float x = 0;
float y = 0;
int i = 0;
float p =0;
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
  i = int(10*noise(p)%4);
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
  p++;
}
