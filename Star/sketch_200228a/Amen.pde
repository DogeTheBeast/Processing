Star[] a = new Star[800];

float speed;
public void settings() {
 size (1200,1200); 
  
}


void setup()
{

for (int i=0 ;i <a.length;i++)
{
a[i] = new Star();
 
}


}


void draw()
{
 background(0);
    translate(width/2,height/2);
    speed = map(mouseX,0,width,0,50);
  for (int j = 0;j<a.length; j++)
  {a[j].update();
  a[j].circle();
  }
  
  
}
