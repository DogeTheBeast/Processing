int l[] = new int[800];
int p = 0;
int x =0;
int y =0;

void settings()
{
  size(800,800);
}

void setup()
{
  for(int i=0;i<l.length;i++)
  {
    l[i] = i;
  }
  stroke(255);
  shuffle(l);
}

void draw()
{
  // if(p==0)
  // {
  //   shuffle(l);
  // }
  if(x==l.length)
  {
    x=0;
    y=x+1;
  }
  background(0);
  for(int j=x+1;j<l.length;j++)
  {
    if(l[x]>l[j])
    {
      swap(x,j);
    }
  }
  for(int m=0;m<l.length;m++)
  {
    stroke(map(l[m],0,l.length,255,0),green(l,m),map(l[m],0,l.length,0,255));
    line(m,height,m,height-l[m]);
  }
  x++;
}

void shuffle(int[] ar)
{
  for(int i=0; i<ar.length;i++)
  {
   int temp = int(random(0,ar.length));
   int j = ar[i];
   ar[i] = ar[temp];
   ar[temp] = j;
  }
}


float green(int[] ar,int a)
{
  if(ar[a]<l.length/2)
  {
    float f = map(ar[a],0,l.length/2,0,255);
    return f;
  }
  else
  {
    float f = map(ar[a],l.length/2,l.length,255,0);
    return f;
  }
}


void swap(int a, int b)
{
  int k = l[a];
  l[a] = l[b];
  l[b] = k;
}