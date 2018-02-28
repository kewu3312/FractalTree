private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(400,400);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(300, 290, 180, 2*Math.PI/2, 4);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	if(branchLength <= FirstBranch)
  {

  }
  else
  {
    if(branchLength <= 50)
    {
     
      stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
    else
    {
      stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
    strokeWeight(branchWidth);
    double angle1 = angle + branchAngle;
    double angle2 = angle - branchAngle;
    int endX1 = (int)(Length*branchLength*Math.cos(angle1) + x);
    int endY1 = (int)(Length*branchLength*Math.sin(angle1) + y);
    int endX2 = (int)(Length*branchLength*Math.cos(angle2) + x);
    int endY2 = (int)(Length*branchLength*Math.sin(angle2) + y);
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
    drawBranches(endX1, endY1, branchLength*Length, angle1, branchWidth-.5);
    drawBranches(endX2, endY2, branchLength*Length, angle2, branchWidth-.5);
  }//your code here    
} 
