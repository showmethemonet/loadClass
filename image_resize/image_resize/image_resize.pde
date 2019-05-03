// image with pixel background  

int numPixelsWide, numPixelsHigh;
int blockSize = 10;
int blockSizeX = 10; 
int blockSizeY = 10; 
PImage img;
color movColors[];

void setup() {
 img = loadImage("img.jpg"); 
 size(800, 400);
 numPixelsWide = width / blockSize;
 numPixelsHigh = height / blockSize;
 movColors = new color[numPixelsWide * numPixelsHigh];
}

void draw() {
  background(200,0,100);
  int count = 0;
  
  for (int j = 0; j < numPixelsHigh; j++) {
    for (int i = 0; i < numPixelsWide; i++) {
      fill(movColors[j*numPixelsWide + i]);
      rect(i*blockSizeX, j*blockSizeY, blockSize, blockSize);
      movColors[count] = img.get(i*blockSize, j*blockSize);
        count++;
    }
  }
  
  if (mousePressed) {
     
    blockSizeX -= 1;
    blockSizeY -= 1;
    
    if(blockSizeX < 1 && blockSizeY < 1) {
     background(255,2,55);
     
     blockSizeX = 10;
     blockSizeY = 10; 
    print(blockSizeX); 
     
  }
  }
}
