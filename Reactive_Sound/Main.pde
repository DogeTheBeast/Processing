//Variables
Block b[][] = new Block[11][11];
float l=1;
float tr = 0;
float tg =0;
float tb = 0; 
float a=0;
float e =1;
float[] f = new float[128];
float z = 1;
import processing.sound.*;
Amplitude amp;
FFT fft;
SoundFile sf;

void setup()
{
  for(int i=0;i<(b.length);i++)
  {
    for(int j = 0;j<(b[0].length);j++)
    {
      b[i][j] = new Block(map(j,-1,(b[0].length),0,width),map(i,-1,b.length,0,height));
    }
  }
  sf= new SoundFile(this, "bensound-dreams.mp3");
  sf.play();
  amp = new Amplitude(this);
  amp.input(sf);
  fft = new FFT(this,128);
  fft.input(sf);
}


void settings()
{
    size(800,800);
}


void draw()
{int N = 0;
int r1=(b.length)/2;
int r2=(b.length)/2;
int c1=(b[0].length)/2;
int c2=(b[0].length)/2;
z = z +f[0]*0.7;
  background(0);
  fft.analyze(f);
  e = map(noise(z),0,1,1.5,4);
  while(N<b.length*b[0].length)
      {
      for(int k=c1;k<=c2;k++)
      {
        N++;
      pushMatrix();
      translate(b[r1][k].bx,b[r1][k].by);
      b[r1][k].spin(radians(a));
      b[r1][k].make(tr,tg,tb,e);
      popMatrix(); 
     // println(e);
      }
      
      for(int k=r1+1;k<=r2;k++)
      {
        N++;
      pushMatrix();
      translate(b[k][c2].bx,b[k][c2].by);
      b[k][c2].spin(radians(a));
      b[k][c2].make(tr,tg,tb,e);
      popMatrix(); 
      }
      
      for(int k=c2-1;k>=c1;k--)
      {
        N++;
      pushMatrix();
      translate(b[r2][k].bx,b[r2][k].by);
      b[r2][k].spin(radians(a));
      b[r2][k].make(tr,tg,tb,e);
      popMatrix(); 
      }
      
      for(int k=r2-1;k>r1;k--)
      {
       N++;
      pushMatrix();
      translate(b[k][c1].bx,b[k][c1].by);
      b[k][c1].spin(radians(a));
      b[k][c1].make(tr,tg,tb,e);
      popMatrix(); 
      }
      r1--;
      r2++;
      c1--;
      c2++;
      l=l+f[9];
      a= map(noise(l),0,1,0,360);
      
      
      }
  if(a<109 || a>251)
      {
       tr+=8;
        tg-=8;
        tb-=8;
      }
      else if( a < 149.4 || a>210.6)
      {
        tb+=8;
        tr-=8;
        tg-=8;
      }
      else 
      {
        tg+=8;
        tr-=8;
        tb-=8;
      }
      
      if(tg<0)
      {tg=0;}
      if(tr<0)
      {tr=0;}
      if(tb<0)
      {tb=0;}
      
      if(tg>255)
      {tg=255;}
      if(tr>255)
      {tr=255;}
      if(tb>255)
      {tb=255;}   
}
