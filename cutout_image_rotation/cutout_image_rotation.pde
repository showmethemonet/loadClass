int timer;
PImage image;
float r = 20;
float randomNumber = random(1,36);

void setup() {
  image = loadImage(int(randomNumber) + ".png");
  size(800,800); 
}

void draw() {
  
  
  if (millis() - timer >= 3000) {  
    randomNumber = random(1,36);
    image = loadImage(int(randomNumber) + ".png");
    timer = millis();
    //print(timer);
  }
  
  translate(width/2, height/2);
  rotate(r);
  
  noStroke();
  color c = get((int)random(width), (int)random(height));
  fill(c);
  ellipse(0, 0, random(10, 100), random(12, 20));
  
  r = r+0.5; 
  
  image(image,-200,20);
}
