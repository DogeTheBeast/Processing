class tile
{
 float x;
 float y;
 float r;
 float c;
 tile(float x1, float y1, float r1, float c1)
 {
   x=x1;
   y=y1;
   r=r1;
   c=c1;
 }
 
 void display()
 {
   if(c==1)
   {
    tile1(); 
   }
   else if(c==2)
   {
    tile2(); 
   }
   else if(c==3)
   {
    tile3();
   }
   else
   {
    tile4(); 
   }
 }
 
 void tile1()
 {
   noStroke();
   fill(0);
   square(x-r,y-r,2*r);
   fill(255);
   arc(x-r,y-r,2*r,2*r,0,HALF_PI);
   arc(x+r,y+r,2*r,2*r,PI,3*HALF_PI);
   
 }
 
 void tile2()
 {
   noStroke();
   fill(0);
   square(x-r,y-r,2*r);
   fill(255);
   arc(x+r,y-r,2*r,2*r,HALF_PI,PI);
   arc(x-r,y+r,2*r,2*r,3*HALF_PI,2*PI);
 }
 void tile3()
 {
   noStroke();
   fill(255);
   square(x-r,y-r,2*r);
   fill(0);
   arc(x-r,y-r,2*r,2*r,0,HALF_PI);
   arc(x+r,y+r,2*r,2*r,PI,3*HALF_PI);
   
 }
 
 void tile4()
 {
   noStroke();
   fill(255);
   square(x-r,y-r,2*r);
   fill(0);
   arc(x+r,y-r,2*r,2*r,HALF_PI,PI);
   arc(x-r,y+r,2*r,2*r,3*HALF_PI,2*PI);
 }
}
