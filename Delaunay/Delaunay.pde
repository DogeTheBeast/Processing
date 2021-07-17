PVector[] point = new PVector[100];
int i=0;
float slope = 0;
float intersectx = 0;
float intersecty = 0;
void setup()
{
  size(800,800);
  stroke(255);
}

void draw()
{
  background(0);
  circle(mouseX,mouseY,5);

// Perpendicular Bisector Loop
  for(int j=0;j<i-1;j++)
  {
    for(int k=j+1;k<i;k++)
    {
      line(point[j].x,point[j].y,point[k].x,point[k].y);
      slope = invert(findSlope(point[j],point[k]));
      // for(int l=0;l<(i*(i+1)/2);l++)
      // {
      //   if(intersection(invert(findSlope(point[j],point[k])),midpointx(point[j],point[l]),midpointy(point[j],point[l]),invert(findSlope(point[j],point[l+1])),midpointx(point[j],point[l+1]),midpointy(point[j],point[l+1])))
      //   {
      //     line(intersectx,intersecty,0,0);
      //   }
      // }
      // if(slope>1 || slope<-1)
      // {
      //   line(minFindIntercept(point[j],point[k]),0,maxFindIntercept(point[j],point[k]),height);
      // }
      // else
      // {
      //   line(0,minFindIntercept(point[j],point[k]),width,maxFindIntercept(point[j],point[k]));
      // }
      line(0,yvalue(0,slope,point[j],point[k]),width,yvalue(width,slope,point[j],point[k]));
    }
  }

// Circle Drawing Loop
  for(int j=0;j<i;j++)
  {
    circle(point[j].x,point[j].y,5);
  }

// Intersection Detection Loop
}

void mouseClicked()
{
  point[i] = new PVector(mouseX,mouseY);
  i++;
}

float findSlope(PVector v1, PVector v2)
{
  return ((v2.y-v1.y)/(v2.x-v1.x));
}

float midpointx(PVector v1, PVector v2)
{
  return ((v1.x+v2.x)/2);
}

float midpointy(PVector v1, PVector v2)
{
  return ((v1.y+v2.y)/2);
}

float xvalue(float y, float slope,PVector v1, PVector v2)
{
  return (((y-midpointy(v1,v2))/slope)+midpointx(v1,v2));
}

float yvalue(float x, float slope,PVector v1, PVector v2)
{
  return (((x-midpointx(v1,v2))*slope)+midpointy(v1,v2));
}

float invert(float x)
{
  return (-1/x);
}

boolean intersection(float slope1, float x1, float y1, float slope2, float x2, float y2)
{
  if(xintersection(slope1, x1,y1,slope2, x2, y2) && yintersection(slope1, x1, y1))
  {
    return true;
  }
  else
  {
    return false;
  }    
}


boolean xintersection(float slope1, float x1, float y1, float slope2, float x2, float y2)
{
  if(slope1 != slope2)
  {
    intersectx = (y2-y1+slope1*x1-slope2*x2)/(slope2-slope1);
    if(intersectx>width || intersectx<0)
    {
      return false;
    }
    else
    {
      return true;
    }
  }
  else
  {
    return false;
  }
}

boolean yintersection(float slope1, float x1, float y1)
{
  intersecty = slope1*(intersectx - x1)+y1;
  if(intersecty>height || intersecty<0)
  {
    return false;
  }
  else
  {
    return true;
  }
}