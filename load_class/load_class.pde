Test test = new Test();
GrowingCircles growing_circles = new GrowingCircles();
 
void setup() 
{
  size(800, 800);
  frameRate(30);
}

void draw() { 
  background(204);
  
  
  
} 


  


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      
      //fillVal = 255;
       test.display();
    } else if (keyCode == DOWN) {
      //fillVal = 0;
      growing_circles.draw();
    } 
  } else {
    //fillVal = 126;
  }
}
 

 
