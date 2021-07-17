line a[] = new line[20];
void setup()
{
 background(0);
  for (int i=0;i<20;i++)
  {
   a[i] = new line(); 
    
    
  }
  
  stroke(255);
  
  
}



void settings(){
  size (1200,1200);

  
}


void draw()
{
  translate(width/2,height/2);
  for (int j =0;j<20;j++)
  {
  a[j].angle();
  }
  
  
  
}
