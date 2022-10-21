class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 280;
  }
  void walk()
  {
    if(mouseX > myX)
    myX = myX + (int)(Math.random()*5)-1;
    else
    myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
    myY = myY + (int)(Math.random()*5)-1;
    else
    myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    fill(0, 255, 0);
    stroke(0, 255, 0);
    circle(myX,myY,30);
    circle(myX,myY, 20);
  }
}

Walker rick;
Walker [] hillbillies = {new Walker(), new Walker(), new Walker()};
Walker [] saviors;
void setup()
{ 
  size(300,300);
  background(0);
  rick = new Walker();
  saviors = new Walker[100];
  int i = 0;
  while(i < saviors.length){
    saviors[i] = new Walker();
    i++;
  }
}
  void draw(){
    background(200);
    rick.walk();
    rick.show();
    hillbillies[0].walk();
    hillbillies[0].show();
     hillbillies[1].walk();
    hillbillies[1].show();
     hillbillies[2].walk();
    hillbillies[2].show();
    for(int i = 0; i < saviors.length; i++){
      saviors[i].walk();
      saviors[i].show();
      fill(0,255,0);
      noStroke();
      square(0,250,300);
      
    }
  }
