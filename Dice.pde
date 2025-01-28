int totalSum;

void setup()
{
  size(400,450);
  noLoop();
  
}
void draw()
{
  //your code here
  background(150,0,0);
  totalSum = 0; 
  
  for(int j=0;j<320;j+=60){
  for(int i=0;i<320;i+=60){
  //translate(300,300);
  //rotate(random(0,4));
  Die bob = new Die(15+i,15+j);
  bob.show();
  totalSum+=bob.dieValue;
 
}

}
textSize(20);
text("Total Sum: " + totalSum, 20,410);

}
void mousePressed()
{
  //bob.roll();
  redraw();

}
class Die //models one single dice cube
{
  //variable declarations here
  int xPos; 
  int yPos;
  int dieValue;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    xPos = x;
    yPos = y; 
    roll();
  }
  void roll()
  {
    //your code here
    dieValue = (int)(Math.random()*6)+1;
  }
  void show()
  {
    //print(dieValue);
    fill(255);
    rect(xPos+10,yPos+10,50,50,10);
    fill(0);
    
    if(dieValue==1){
    ellipse(xPos+25,yPos+25,5,5);
    }else if (dieValue==2){
    ellipse(xPos+25,yPos+25,5,5);
    ellipse(xPos+45,yPos+45,5,5);
    }else if (dieValue==3){
    ellipse(xPos+25,yPos+25,5,5);
    ellipse(xPos+45,yPos+45,5,5);
    ellipse(xPos+35,yPos+35,5,5);
     }else if (dieValue==4){
    ellipse(xPos+25,yPos+25,5,5);
    ellipse(xPos+45,yPos+25,5,5);
    ellipse(xPos+25,yPos+45,5,5);
    ellipse(xPos+45,yPos+45,5,5);
     }else if (dieValue==5){
    ellipse(xPos+25,yPos+25,5,5);
    ellipse(xPos+45,yPos+25,5,5);
    ellipse(xPos+25,yPos+45,5,5);
    ellipse(xPos+45,yPos+45,5,5); 
    ellipse(xPos+35,yPos+35,5,5); 
     }else if (dieValue==6){
    ellipse(xPos+25,yPos+25,5,5);
    ellipse(xPos+25,yPos+35,5,5);
    ellipse(xPos+25,yPos+45,5,5);
    ellipse(xPos+45,yPos+25,5,5);    
    ellipse(xPos+45,yPos+35,5,5);
    ellipse(xPos+45,yPos+45,5,5);
    }
}
}
