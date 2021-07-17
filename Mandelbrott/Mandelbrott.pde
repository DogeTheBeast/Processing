float[][] p  = new float[100][2];
float r;
float d = 1;
float o = 2*PI/p.length;
void setup()
{  r=600;
 for(int i=0;i<p.length;i++)
 { p[i][0]=(cos(o*(i+1)))*r/2; 
   p[i][1]=(sin(o*(i+1)))*r/2; 
  }
}

void settings()
{
  size(800,800); 
}

void draw()
{ 
  translate(width/2,height/2);
  background(0);
  stroke(255);
  ellipse(0,0,r,r);
  fill(0);
  for(int i=0;i<p.length;i++)
  {
   line(p[i][0],p[i][1],(p[(int)(i*d)-p.length*(int)(i*d/p.length)][0]),p[(int)(i*d)-p.length*(int)(i*d/p.length)][1]);
  }
  d+=+0.005;
}
