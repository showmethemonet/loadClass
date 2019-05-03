int timer;
PImage image;
PImage bolt;
int r = 860;
float randomNumber = random(1,36);

void setup() {
  image = loadImage("brick.png");
  size(800,800); 
  frameRate(200);
}

void draw() {
   image = loadImage("brick.png");
   bolt = loadImage("bolt.png");
   
  
  if (millis() - timer >= 8000) {  
    randomNumber = random(1,36);
    
    timer = millis();
    print(timer);
  }
  
  translate(width/2, height/2);
  rotate(r);
     
  r = r+20; 
 
  bolt.resize(380,300);
  tint(200, 200, 100, 100);  // Tint blue
  image(bolt,0,0);
  
  bolt.resize(280,200);
  tint(200, 153, 204, 50);  // Tint blue
  image(bolt,0,0);
  bolt.resize(180,100);
  tint(0, 153, 204, 126);  // Tint blue
  image(bolt,0,0); 
 
  image.resize(120, 80);
  image(image,width/2,height/2);
  bolt.resize(120,80);
  tint(0, 0, 0, 126);  // Tint b
  image(bolt,0,0);
  
  
 
}
