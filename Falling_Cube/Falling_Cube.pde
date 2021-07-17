PVector a = new PVector(0,1,0);
float t =0;
void setup()
{
 size(800,800,P3D); 
}

void draw()
{background(0);
 pushMatrix();
 translate(a.x,a.y,a.z);
 box(100);
 popMatrix();
 camera(300,-300,300,0,0,0,0,1,0);
 if(a.y>=800)
 {
   a.y = -800;
 }
 if(int(a.y)<0)
 {
  a.y = a.y -(0.1*a.y);
 }
 else if(int(a.y)==0)
 {
  a.y++; 
 }
 else{
   a.y = a.y+(0.1*a.y);
 }
 println(a.y);
}
