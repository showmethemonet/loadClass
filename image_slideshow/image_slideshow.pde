import milchreis.imageprocessing.*;

int timer;
PImage image2;
PImage cutout; 

boolean invertRedChannel = true;
boolean invertGreenChannel = true;
boolean invertBlueChannel = true;

void setup() {
  size(800, 400);
}

void draw() {
  
  
  
  if (millis() - timer >= 2000) {
    
    float test = random(1,10); 
    image2 = loadImage("frag" + int(test) + ".jpg");
    image(image2, 0, 0);
    //background(random(255));
    timer = millis();
    print(timer);
    
    if(mousePressed == true) {
      image(image2, 0, 0); 
    } 
      
    else {
      PImage pimage = InvertColors.apply(
        image2, 
        invertRedChannel, 
        invertGreenChannel, 
        invertBlueChannel);
        image(pimage, 0, 0);
      }
    
  }
  
  cutout = loadImage("mart.png");
  //int test = 1; 
 // if (test < 200) {
   
   
  cutout.resize(300,400);
  image(cutout, 400, 0);
  cutout.resize(350,450);
   image(cutout, 200, 0);
  //}
  
  
  
  
  
}// end draw 

void keyPressed() {
  if (key == 'r') {
    invertRedChannel = !invertRedChannel;
  } 
  
  if (key == 'g') {
    invertGreenChannel = !invertGreenChannel;
  }
  
  if (key == 'b') {
    invertBlueChannel = !invertBlueChannel;
  }
  
}
