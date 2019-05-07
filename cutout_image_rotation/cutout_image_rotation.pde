int timer;
PImage image;
int r = 20;
float randomNumber = random(1,36);

void setup() {
  image = loadImage(int(randomNumber) + ".png");
  size(800,800); 
}

void draw() {
  
  
  if (millis() - timer >= 8000) {  
    randomNumber = random(1,35);
    image = loadImage(int(randomNumber) + ".png");
    timer = millis();
    //print(timer);
  }
  
  translate(width/2, height/2);
  rotate(r);
     
  r = r+2; 
  
  image(image,-200,20);
}
