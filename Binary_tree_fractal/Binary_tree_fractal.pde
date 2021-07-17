import com.hamoid.*;
VideoExport videoExport;
float t=0;;

void setup()
{
  stroke(255);
  size(800,800,P3D);
  //videoExport = new VideoExport(this, "Random walk 2d.mp4");
  //  videoExport.startMovie();
}

void draw()
{
  background(0);
  camera(500,-500,500,0,0,0,0,1,0);
  //trees(0,0,map(mouseY,-height/2,height/2,-100,100),map(mouseX,-width/2,width/2,-180,180),7);
  trees(10,10,100,t,7);
  //videoExport.saveFrame();
  t+=0.1;
}


void trees(float x, float y, float r, float a, int t){
 if(0<t)
 {
   pushMatrix();
   translate(x,y);
   rotate(radians(a));
   line(0,0,0,-r);
   t--;
   trees(0,-r,r/1.5,a,t);
   rotate(radians(-2*a));
   line(0,0,0,-r);
   trees(0,-r,r/1.5,a,t);
   popMatrix();
 }
  
}

//void keyPressed() {
//  if (key == 'q') {
//    videoExport.endMovie();
//    exit();
//  }
//}
