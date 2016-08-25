void setup()
{
  size(400,400);
}
int holeX = 200;
void draw()
{
	background(218,255,252);
	letter();
	hole();
	rod();
	fish();
}
void hole()
{
	stroke(0);
	strokeWeight(5);
	fill(255);
	ellipse(holeX,300,250,50);
	holeX+=2;
	if(holeX>600){
		holeX=-200;
	}
}
void fish()
{
	noStroke();
	fill(160,160,160);
	triangle(mouseX,mouseY+20,mouseX-15,mouseY+35,mouseX+15,mouseY+35); //triangle(200,220,185,235,215,235)
	ellipse(mouseX,mouseY,20,50);
	stroke(0);
	strokeWeight(4);
	point(mouseX-4,mouseY-20);
}
void rod()
{
	//fishing line
	stroke(0);
	strokeWeight(2);
	line(mouseX,mouseY,mouseX,mouseY-155);
	//fishing rod
	stroke(102,51,0);
	strokeWeight(10);
	line(450, 250, mouseX, mouseY-155);
	
}

void letter()
{
	stroke(255);
	strokeWeight(20);
	line(100,50,100,250);
	line(300,50,300,250);
	line(100,50,300,250);
}

