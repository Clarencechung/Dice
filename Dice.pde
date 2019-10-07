void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, mySize; 
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		mySize = 50;
	}
	void roll()
	{
		(int)(Math.random()*6 + 1);
	    fill(0);
	    textSize(24);
	    text(num,145,160);
	    if (num == 1)
	    ellipse(myX,myY, 10,10);
	}
	void show()
	{
		rect(myX,myY,)
	}
}
