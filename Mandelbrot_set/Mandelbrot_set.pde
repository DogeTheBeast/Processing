color black;
color white;
Complex a;
Complex temp;
float scale=1;
float x = 400;
float y = 400;
float cutoff = 4;

void setup()
{
	size(800,800);
	// noLoop();
	black = color(0,0,0);
	white = color(255,255,255);
	noSmooth();
}

void draw()
{
	background(0);
	base(x,y);
}

void base(float x, float y)
{
	for(float i=x-400/scale;i<x+400/scale;i++)
	{
		for(float j=y-400/scale;j<y+400/scale;j++)
		{
			a = new Complex(map(i,x-400/scale,x+400/scale,-2,2),map(j,y-400/scale,y+400/scale,-2,2));
			temp = a;
			for(int k = 0;k<10;k++)
			{
				if(a.modulus()>cutoff/scale)
				{
					set(int(i),int(j),white);
					break;
				}
				a = a.multi(a);
				a = a.add(temp);
			}
		}
	}
}

void mousePressed()
{
	x = -mouseX;
	y = -mouseY;
	scale-=0.1;
	println(scale);
}