class sheets
{
  float x;
  float y;
  sheets(float x1,float y1)
  {
    x=x1;
    y=y1;
  }
  
  void display(float angle)
  {
    pushMatrix();
    rotate(angle);
   for(int i=0;i<100;i+=7)
   {
     line(x-i,y,x-i,y+90);
   }
   popMatrix();
  }
}
