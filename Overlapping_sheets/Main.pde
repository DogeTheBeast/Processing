sheets[] array = new sheets[100];


void setup()
{
 stroke(255);
 background(0);
 for(int i=0;i<array.length;i++)
 {
  array[i] = new sheets(random(-width/2+40,width/2-40),random(-height/2+40,height/2-40)); 
 }
}

void settings()
{
  size(800,800);
}
void draw()
{
  translate(width/2,height/2);
  for(int i=0;i<array.length;i++)
  {
    array[i].display(10*noise(i));
  }
}

void mouseClicked()
{
  background(0);
  noiseSeed(int(random(0,10))); 
}
