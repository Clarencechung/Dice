Die bob;
void setup()

{	size(500,500);
	noLoop();
}
void draw()
{
	background(192);
	int dots = 0;
	for (int y = 50; y< 450; y += 100)
	{
		for (int x = 50; x < 450; x += 100)
		{
			bob = new Die(x,y);
			bob.show();
			bob.roll();
			dots = dots + bob.dots;
		}
	}
	textSize(24);
	text("The sum is " + dots , 165, 480);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, mySize, dots;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		mySize = 100;
		dots = (int)(Math.random()*6 + 1);
	}
	void roll()
	{
	    fill(0);
	    if (dots == 1)
	   		ellipse (myX + 50, myY + 50, 20, 20);
		else if (dots == 2)
		{
			ellipse (myX + 25, myY + 25, 20, 20);
			ellipse (myX + 75, myY + 75, 20, 20);
		}
		else if (dots == 3)
		{
		    ellipse(myX + 25, myY + 50, 20, 20);
		    ellipse(myX + 50, myY + 50, 20, 20);
		    ellipse(myX + 75, myY + 50, 20, 20);
		}
		else if (dots == 4)
		{
			ellipse (myX + 25, myY + 25, 20, 20);
			ellipse (myX + 75, myY + 75, 20, 20);
			ellipse (myX + 25, myY + 75, 20, 20);
			ellipse (myX + 75, myY + 25, 20, 20);
	  	}
	  	else if (dots == 5)
	  	{
			ellipse (myX + 25, myY + 25, 20, 20);
			ellipse (myX + 75, myY + 75, 20, 20);
			ellipse (myX + 25, myY + 75, 20, 20);
			ellipse (myX + 75, myY + 25, 20, 20);
			ellipse (myX + 50, myY + 50, 20, 20);
	  	}
	  	else 
	  	{
	  		ellipse(myX + 25, myY + 35, 20, 20);
		    ellipse(myX + 50, myY + 35, 20, 20);
		    ellipse(myX + 75, myY + 35, 20, 20);
		    ellipse(myX + 25, myY + 65, 20, 20);
		    ellipse(myX + 50, myY + 65, 20, 20);
		    ellipse(myX + 75, myY + 65, 20, 20);
	  	}
	}
	void show()
	{
		fill(255);
		stroke(0);
		rect(myX,myY,mySize,mySize,20);
	}
}
