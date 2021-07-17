float noisex;
float noiser;
float x;
float y;
float scale=15;
int counter = 0;
PGraphics base;
float[][] array = new float [10000][3];

void setup()
{
	size(800,800);
	background(0);
	fill(0);
	stroke(255);
	// frameRate(10);
	noSmooth();
	// for(int i=0;i<array.length;i++)
	// {
	// 	array[i][0] = 
	// }
	// base = createGraphics(800,800);
}
void draw()
{
	background(0);
	x = 600*noise(noisex);
	y = width-x;
	// base.beginDraw();
	// base.stroke(255);
	// base.fill(0);
	// base.translate(400,400);
	// base.scale(scale);
	// base.translate(-400,-400);
	// base.ellipse(x,y,100*noise(noiser),100*noise(noiser));
	// base.scale(1/t);
	// base.endDraw();
	// image(base,0,0);
	for(int i=0;i<counter;i++)
	{
		circle(array[i][0],array[i][1],array[i][2]);
		array[i][2] = array[i][2]+scale;
	}
	array[counter][0] = 800*noise(noisex);
	array[counter][1] = width-array[counter][0];
	array[counter][2] = 600*noise(noiser);
	noisex+=0.5;
	noiser+=0.5;
	counter++;
}

void zoom(float x, float y)
{

}