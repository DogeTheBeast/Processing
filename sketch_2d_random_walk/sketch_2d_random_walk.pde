import com.hamoid.*;
VideoExport videoExport;

void setup()
{
  size(800,800);
  background(255);
  stroke(#f5d164);
  fill(#f5d164);
  noSmooth();
  videoExport = new VideoExport(this, "Random walk 2d.mp4");
  videoExport.startMovie();
}

int x=0;
int y=0;
int s=6;
int i;


void draw()
{
  translate(width/2, height/2);
  for(int c=0; c<400;c++)
  {
  i = int(random(1,5));
  if(i%4 ==0)
  {
    y=y+s;
  }
  else if(i%4 ==1)
  {
    x=x+s;
  }
  else if(i%4 ==2)
  {
    y=y-s;
  }
  else if(i%4 ==3)
  {
    x=x-s;
  }
  
  
  ellipse(x,y,s,s);
  //rect(x-(s/2),y-(s/2),x+(s/2),y-(s/2),x+(s/2),y+(s/2),x-(s/2),y+(s/2));
  videoExport.saveFrame();
  }
  println(x);
  x=int(random(-width/2,width/2));
  y=int(random(-height/2,height/2));
}

void keyPressed() {
  if (key == 'q') {
    videoExport.endMovie();
    exit();
  }
}
