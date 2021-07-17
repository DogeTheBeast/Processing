class Star
{
float x; 
float y;
float z;
float u;
float sx;
float sy;
float r;
float px;
float py;
float b;

  Star() {
    u = 8;
    x = random(-width/2,width/2);
    y = random(-height/2,height/2); 
    z = random(width/2);
    b = z;
  }
  
  void circle()
  { 
  sx = map(x/z,0,1,0,width/2);
  sy = map(y/z,0,1,0,height/2);


  
  
  r = map(u/z,0,1,0,80);
  ellipse(sx,sy,r,r);
    px = map(x/b,0,1,0,width/2);
  py = map(y/b,0,1,0,height/2);
  
  line(px,py,sx,sy);

  b=z;
  }
  
void update()
{
  fill(255);
  noStroke();
    z=z-speed;
  if (z<1)
  { z=width/2;
    x = random(-width/2,width/2);
    y = random(-height/2,height/2);  
    b = z;
}
}
}
