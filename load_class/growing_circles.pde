class GrowingCircles {

float r = 1; 

void setup() {
  size(640, 360);
  background(51);
  //noStroke();
  //noLoop();
}

void draw() {
  //drawTarget(width*0.25, height*0.4, 200, 4);
  drawTarget(width*0.5, height*0.5, 300, 10);
  //drawTarget(width*0.75, height*0.3, 120, 6);
  
   for(int i = 20; i <= 20; i = i + 20) {
     for (int i2 = 0; i2 < 10; i2++) {
        fill(i2*255);
     }
     //fill(random(180, 200),0,random(50,150));  
   ellipse(width*0.5,height*0.5,r,r);
     fill(random(100,200),random(100,200),100); 
    ellipse(width*0.5,height*0.5,i + r,i + r); 
    ellipse(width*0.5,height*0.5,i + r-20,i + r-20); 
    ellipse(width*0.5,height*0.5,i + r-40,i + r-40); 
    ellipse(width*0.5,height*0.5,i + r-60,i + r-60);
    ellipse(width*0.5,height*0.5,i + r-80,i + r-80);
    ellipse(width*0.5,height*0.5,i + r-100,i + r-100); 
   }
   
   r = r +1; 
   
   if (r > 300) {
    r = 1;  
     
   }
}

void drawTarget(float xloc, float yloc, int size, int num) {
  float grayvalues = 255/num;
  float steps = size/num;
  for (int i = 0; i < num; i++) {
    fill(i*grayvalues);
    //for(int i2 = 20; i2 <= 20; i2 = i2 + 20) {
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
    //}
    r = r + 0.2;
   
   if (r > 600) {
     r = 1;
     
   }
  }
  
 
  
  
}

}
