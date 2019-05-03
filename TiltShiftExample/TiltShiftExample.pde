int timer;
PImage image; 

void setup() {
  size(800, 400);
}

void draw() {
  if (millis() - timer >= 2000) {
    float test = random(1,10); 
  image = loadImage("frag" + int(test) + ".jpg");
  image(image, 0, 0);
    //background(random(255));
    timer = millis();
    print(timer); 
  }
}
