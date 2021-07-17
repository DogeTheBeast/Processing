float r = 200;
float s = 50;
float d = 5;

void setup() {
size(1000,1000);
}

void draw() {
translate(width/2,height/2);
background(0);
noFill();
stroke(255);
for(int i =-width/4;i<=width/4;i+=r/2)
{
for(int j=-height/4;j<=height/4;j+=r/2)
{
for(int k=0;k<s;k++)
{
ellipse(i,j,r-k*d,r-k*d);
}
}
  }
}
