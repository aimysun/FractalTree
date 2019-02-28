private double fractionLength = .9; 
private int smallestBranch = 100; 
private double branchAngle = .65;  
private int numBranch = (int)(Math.random()*3);
public void setup() 
{   
	size(800,800);    
	noLoop(); 
} 
public void draw() 
{   
	background(50);   
	stroke(255,0,255);   
	line(400,800,400,600);   
	drawBranches(400,600,200,3*Math.PI/2);  

} 

public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle; 
	double angle2 = angle - branchAngle;
	double angle3 = angle;
	branchLength = branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	//your code here 
	line(x, y, endX1, endY1);
	line(x, y, endX2,endY2);
	line(x,y,endX3, endY3);
	if(branchLength>smallestBranch) 
	{
		drawBranches(endX1, endY1, (int)(branchLength/1.2), angle1);
		drawBranches(endX2, endY2, (int)(branchLength/1.2), angle2);
		drawBranches(endX3, endY3, (int)branchLength/1.09, angle3);
	}
	if(branchLength<smallestBranch)
	{
		ellipse(endX1, endY1, 35,35);
		ellipse(endX2,endY2, 25,25);
		ellipse(endX3,endY3, 45,45);
	}
		

}
