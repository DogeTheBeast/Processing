class tile
{
 float x;
 float y;
 float r;
 tile(float x1, float y1, float r1)
 {
   x=x1;
   y=y1;
   r=r1;
 }
 
 void display(float a)
 {
   tile1();
   if(a==0)
   {
    tile1(); 
   }
   else if(a==1)
   {
    tile2(); 
   }
   else if(a==2)
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
   fill(255);
   beginShape();
   vertex(x-r,y-r);
   vertex(x-r,y+r);
   vertex(x+r,y+r);
   endShape(CLOSE);
   
   fill(0);
   beginShape();
   vertex(x-r,y-r);
   vertex(x+r,y+r);
   vertex(x+r,y-r);
   endShape(CLOSE);
   
   
 }
 
 void tile3()
 {
   fill(255);
   beginShape();
   vertex(x+r,y-r);
   vertex(x-r,y+r);
   vertex(x+r,y+r);
   endShape(CLOSE);
   
   fill(0);
   beginShape();
   vertex(x+r,y-r);
   vertex(x-r,y+r);
   vertex(x-r,y-r);
   endShape(CLOSE);
   
   
   
 }
 
 void tile2()
 {
   fill(0);
   beginShape();
   vertex(x-r,y-r);
   vertex(x-r,y+r);
   vertex(x+r,y+r);
   endShape(CLOSE);
   
   fill(255);
   beginShape();
   vertex(x-r,y-r);
   vertex(x+r,y+r);
   vertex(x+r,y-r);
   endShape(CLOSE);
   
 }
 
 void tile4()
 {
   fill(0);
   beginShape();
   vertex(x+r,y-r);
   vertex(x-r,y+r);
   vertex(x+r,y+r);
   endShape(CLOSE);
   
   fill(255);
   beginShape();
   vertex(x+r,y-r);
   vertex(x-r,y+r);
   vertex(x-r,y-r);
   endShape(CLOSE);
 }
 
 
 
}
