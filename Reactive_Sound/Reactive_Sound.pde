class Block
{
  float bx;
  float by;
  float br=255;
  float bg=255;
  float bb=255;
  float s=1;
  
  
Block(float x,float y)
{
  bx = x;
  by = y;
  
}
  
  void make(float br,float bg,float bb,float s)
  {fill(br,bg,bb);
    rect(-(5)/2,-(20*s)/2,5,20*s); 
  
  }
  void spin(float k)
  {    rotate(k);
  }
  
}
