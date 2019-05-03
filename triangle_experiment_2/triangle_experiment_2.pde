int canvasSize = 600;

int timer;
float randomNumber = random(1,36);

PImage image;
int imagePosRight = 0;
int imagePos2 = 395;
int imagePosDown = 0;
int imagePosUp = 395;

float colour1 = 100;
int colour2 = 50;
int colour3 = 250;

float tricolour1 = 100;
int tricolour2 = 50;
int tricolour3 = 250;
 
float a = canvasSize; // left
float b = 0; //middle
float c = canvasSize; // right

float a2 = 0; // left
float b2 = 600; //middle
float c2 = 0; // right

// triangle points
int adirection = 1;  
int bdirection = 1;  
int cdirection = 1;

// triangle points
int adirection2 = 1;  
int bdirection2 = 1;  
int cdirection2 = 1;  

// image direction
int imgdirection = 1;
int imgdirection2 = -1;
int imgDirectionDown = 1; 
int imgDirectionUp = -1; 

int newInt = width; 

void setup() {
  size(600,600); 
  frameRate(100);
  //image = loadImage("1.png");
  image = loadImage(int(randomNumber) + ".png");
  image.resize(200,250);
  
}

void draw() {
  
  if (millis() - timer >= 8000) {  
    randomNumber = random(1,36);
    image = loadImage(int(randomNumber) + ".png");
    image.resize(150,250);
    timer = millis();
    print(timer);
  }
    
  noStroke();  
  fill(colour1,colour2,colour3); 
  rect(0, 0, width, height); 
  fill(tricolour1, tricolour2, tricolour3); 
  triangle(300, b, 0, a, canvasSize,c); 
   triangle(300, b2, 0, a2, canvasSize,c2); 
  image(image,imagePos2,180);
  //rect(0,0,width/2, height/2);
  image(image,imagePosRight,180);
  //rect(width/2,0,400,height);
  image(image,225,imagePosDown);
  image(image,225,imagePosUp);
   
   // velocity of points
   a = a + adirection; 
   b = b + bdirection;
   c = c + cdirection;
   
   a2 = a2 - adirection2; 
   b2 = b2 - bdirection2;
   c2 = c2 - cdirection2;
   
   // image position plus movement 
   imagePosRight = imagePosRight + imgdirection;
   imagePos2 =  imagePos2 + imgdirection2;
   imagePosDown = imagePosDown + imgDirectionDown;
   imagePosUp = imagePosUp + imgDirectionUp;
    
    // color changes
   colour1 = colour1 + 1; 
   colour2 = colour2 - 1; 
   colour3 = colour3 + 1;  

   a = a-2; // must be minus 2 to compensate for velocity of b (+1)
   c = c-2;
   
   a2 = a2-2; // must be minus 2 to compensate for velocity of b (+1)
   c2 = c2-2;
   
   if ( a > height) {
     adirection = +1; 
     //imgdirection = +1; 
     //colour1 = +1;
   }
   
   if ( a < 0) {
     adirection = +3; // must be +3 to compensate for previous velocity (-2 to begin with)
     //colour1 = +3;
     //imagePos = -1;  
   }
   
   if ( a2 > height) {
     adirection2 = -1; 
     //imgdirection = +1; 
     //colour1 = +1;
   }
   
   if ( a2 < 0) {
     adirection2 = -3; // must be +3 to compensate for previous velocity (-2 to begin with)
     //colour1 = +3;
     //imagePos = -1;  
   }
   
   
   if (b > height) {
     bdirection = -1;
     imgdirection = -1;
     imgdirection2 = +1;
     imgDirectionDown = -1;
     imgDirectionUp = +1;
     //colour2 = -1;
     //imagePos = -1;
   }
   
   if (b < 0) {
     imgdirection = +1;
     imgdirection2 = -1;
     bdirection = +1;
     colour2 = +1;
     imgDirectionDown = +1;
     imgDirectionUp = -1;
   }
   
   if (b2 > height) {
     bdirection2 = +1;
   }
   
   if (b2 < 0) {
     bdirection2 = -1;
   }
   
   if ( c > height) {
     cdirection = +1;
     colour3 = +1;
   }
   
   if ( c < 0) {
     cdirection = +3;
     colour3 = -1;
   }
   
   if ( c2 > height) {
     cdirection2 = -1;
   }
   
   if ( c2 < 0) {
     cdirection2 = -3; 
     
   }  
   
}
