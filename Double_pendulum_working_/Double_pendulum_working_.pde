PVector g = new PVector(0,9.801);
PVector accel = new PVector(0,0);
PVector intp = new PVector(60,0);
PVector p = new PVector(intp.x,intp.y);
PVector v = new PVector(0,0);
float distance = sqrt(intp.x*intp.x+intp.y*intp.y);
float angle= 90;
float r;
float angular_frequency = sqrt(g.y/distance);
float t=0;
void setup()
{
  size(800,800);
  stroke(255);
  fill(0);
  //frameRate(10);
}

void draw()
{
  background(0);
  translate(width/2,height/4);
  pendulum(0,0,0,0,0,2);
  println(distance);
}


void pendulum(float i, float j,float ang ,float x, float y, float q)
{
  if(q>0)
  {
  PVector a = new PVector(0,0); 
  r = degrees(atan((intp.x+1)/intp.y))*cos(angular_frequency*t);
  angle=r+ang;
  a.y = j + distance*cos(radians(angle));
  a.x = i + distance*sin(radians(angle));
  ellipse(a.x,a.y,10,10);
  line(x,y,a.x,a.y);
  t+=0.01;
  q--;
  pendulum(a.x,a.y,angle,a.x,a.y,q);
  }
}


void pendulum_1(float i, float j, float ang ,float x, float y, float q)
{
  if(q>0)
  {
    PVector v = new PVector(0,0);
    
    
    
    
  PVector a = new PVector(0,0); 
  r = degrees(atan((intp.x+1)/intp.y))*cos(angular_frequency*t);
  angle=r+ang;
  a.y = j + distance*cos(radians(angle));
  a.x = i + distance*sin(radians(angle));
  ellipse(a.x,a.y,10,10);
  line(x,y,a.x,a.y);
  t+=0.01;
  q--;
  pendulum(a.x,a.y,angle,a.x,a.y,q);
  }
}
