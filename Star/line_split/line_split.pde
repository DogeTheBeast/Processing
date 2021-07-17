class line
{
float x;
float y;
float z;
float sx;
float sy;
float px = 0;
float py = 0;
float l = 200;
int k = 100;
int f = 0;



void angle()
{

  
  if (k>1)
  {
  z = z + random(0,45); 
  sx = (l*cos(z))+px;
  sy = (l*sin(z))+py;
  line(sx,sy,px,py);
  px=sx;
  py=sy; 
  l=l/1.2;
  k--;
  }
}


}
