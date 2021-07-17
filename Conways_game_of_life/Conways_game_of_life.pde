float[][] array = new float[100][2];
float[][] life = new float[array.length][array.length];
int start=0;

import com.hamoid.*;
VideoExport videoExport;

void setup()
{
  size(1000,1000);
  for(int i =0;i<array.length;i++)
  {
    array[i][0] = i*width/array.length;
    array[i][1] = i*height/array.length;
  }
  for(int i =0;i<life.length;i++)
  {
    for(int j=0;j<life[0].length;j++)
    {
    life[i][j] = int(random(0,1.5));
    }
  }
  //frameRate(15);
  // videoExport = new VideoExport(this, "Conways game of life.mp4");
  // videoExport.setFrameRate(15);
  // videoExport.startMovie();
}

void draw()
{
  background(0);
  stroke(70);
  for(int i=0;i<array.length;i++)
  {
   line(array[i][0],0,array[i][0],height); 
   line(0,array[i][1],width,array[i][1]);
  }
  stroke(255);
  for(int i =0;i<life.length;i++)
  {
    for(int j=0;j<life.length;j++)
    {
     if(life[i][j] ==1)
     {
       fill(255);
       rect(i*width/array.length,j*height/array.length,width/array.length,height/array.length);
       noFill();
      } 
    }
  }
  if(start ==1)
  {
   test();
  }
     // videoExport.saveFrame();
}

void test()
{ float[][][] sum = new float[array.length][array.length][2];
  for(int x = 0;x<array.length;x++)
  {
    for(int y = 0;y<array.length;y++)
    {
     if(life[x][y]==0 && x!=0 && y!=0 && x!=array.length-1 && y!= array.length-1)
     {
       sum[x][y][0] = life[x-1][y-1]+life[x-1][y]+life[x-1][y+1]+life[x][y-1]+life[x][y+1]+life[x+1][y-1]+life[x+1][y]+life[x+1][y+1];
       sum[x][y][1] = life[x][y];
     }
     else if(life[x][y]==1 && x!=0 && y!=0 && x!=array.length-1 && y!= array.length-1)
     {
      sum[x][y][0] = life[x-1][y-1]+life[x-1][y]+life[x-1][y+1]+life[x][y-1]+life[x][y+1]+life[x+1][y-1]+life[x+1][y]+life[x+1][y+1];
      sum[x][y][1] = life[x][y];
     }
    }
  }
  
  for(int i=0;i<array.length;i++)
  {
   for(int j=0;j<array.length;j++)
   {
     if(sum[i][j][1] == 0)
     {
       if(sum[i][j][0] == 3)
       {
        life[i][j] = 1; 
       }
       else
       {
        life[i][j] = 0; 
       }
     }
     else if(sum[i][j][1] == 1)
     {
      if(sum[i][j][0] == 2 || sum[i][j][0] == 3)
      {
       life[i][j]=1; 
      }
      else
      {
       life[i][j]=0; 
      }
     }
   }
  }
}
void mousePressed()
{
  int mx = mouseX*array.length/width;
  int my = mouseY*array.length/height;
  if(life[mx][my] ==0)
  {
  life[mx][my] = 1;
  }
  else if(life[mx][my] ==1)
  {
   life[mx][my]=0; 
  }
}
void keyPressed()
{
 if(key == 'q')
 {
   if(start==0)
   {
   start=1;
   }
   else if(start ==1)
   {
    start = 0; 
   }
 }
 else if(key =='s')
 {
  // videoExport.endMovie();
  exit();
 }
}
