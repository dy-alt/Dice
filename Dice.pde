 int total = 0;
 void setup()
  {
      noLoop();
      size(500,500);
      
  }
  void draw()
  {
    background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
        for(int y = 10; y <= 500; y = y+70) 
        {
          for(int x = 0; x <= 500; x = x+50)
          {
          Die one = new Die(x,y);
          one.roll();
          one.show();
          one.totalTable();
          }
        }
      
  }
  void mousePressed()
  {
      redraw();
      total = 0;
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      int myRoll;
      
      Die(int x, int y) 
      {
        myX = x;
        myY = y;
      }
      void roll()
      {
          myRoll = (int)(Math.random()*6)+1;
          total = total + myRoll;
          stroke(#000000);
          fill(#FFFFFF);
          if(myRoll == 1) {
            ellipse(myX+15,myY+15,10,10);
            total = total + 1;
          }
          else if(myRoll == 2) {
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+20,myY+20,10,10);
            total = total + 2;
          }
          else if(myRoll == 3) {
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+20,myY+20,10,10);
            total = total + 3;
          }
          else if(myRoll == 4) {
            ellipse(myX+10,myY+20,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+20,myY+20,10,10);
            ellipse(myX+20,myY+10,10,10);
            total = total + 4;
          }
          else if(myRoll == 5) {
            ellipse(myX+10,myY+20,10,10);
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+20,myY+20,10,10);
            ellipse(myX+20,myY+10,10,10);
            ellipse(myX+15,myY+15,10,10);
            total = total + 5;
          }
          else{
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+10,myY+15,10,10);
            ellipse(myX+10,myY+20,10,10);
            ellipse(myX+20,myY+10,10,10);
            ellipse(myX+20,myY+15,10,10);
            ellipse(myX+20,myY+20,10,10);
            total = total + 6;
          }
      }
      void show()
      {
          fill(255);
          
      }
      void totalTable() {
         stroke(204, 102, 0);
         fill(#000000);
         rect(200,460,100, 50);
         fill(127, 0, 0);
         textSize(15);
         text("Total = " + total, 205, 485);
      }
  }
