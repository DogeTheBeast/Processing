float x;
float y;

void setup()
{
  size(800,800);
  noLoop();
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  line(0,0,width/2-20,0);
  line(0,0,-width/2+20,0);
  line(0,0,0,height/2-20);
  line(0,0,0,-height/2+20);
  for(int i=0;i<500;i++)
  {
    x = random(-width/2+20,width/2-20);
    if(i%2 ==0)
    {
      y=1; 
    }
    else
    {
      y=-1; 
    }
    stroke(random(0,255));
    line(0,x,y*x,x);
    line(y*x,x,y*x,0);
  }
}