float r=20;
float c;
void setup()
{ 
  noFill();
  noLoop();
}
void settings()
{
 size(800,800); 
}

tile[][] a = new tile[int(4*width/r)][int(4*height/r)];

void draw()
{  
  background(255);
  for(int i=0;i<a.length;i++)
  {
   for(int j=0;j<a[0].length;j++)
   {
     if((i+j)%2==0)
     {
      c= int((6-2*int(random(0,2)))%5);
     }
     else
     {
      c = int(random(2,4)); 
     }
     a[i][j] = new tile(map(i,0,a.length,0,width)+r,map(j,0,a[0].length,0,height)+r,r,c);
   }
  }
  for(int i=0;i<a.length;i++)
  {
   for(int j=0;j<a[0].length;j++)
   {
     a[i][j].display();
   }
  }
}
