float r=10;

void setup()
{
  size(800,800);  
  noLoop();
}

tile[][] a = new tile[int(4*width/r)][int(4*height/r)];


void draw()
{  
  background(120);
  for(int i=0;i<a.length;i++)
  {
   for(int j=0;j<a[0].length;j++)
   {
     a[i][j] = new tile(map(i,0,a.length,0,width)+r,map(j,0,a[0].length,0,height)+r,r);
   }
  }
  for(int i=0;i<a.length;i++)
  {
   for(int j=0;j<a[0].length;j++)
   {
     a[i][j].display(int(10*noise(i,j)%4));
   }
  }
}
