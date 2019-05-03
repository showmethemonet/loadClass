PImage img, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13,img14,img15,img16,img17,img18,img19,img20;

int frameSizeWidth = 650;
int r = 20;

void setup() {
  
  img = loadImage("bolt1-01.png");
  img2 = loadImage("bolt2-01.png");
  img3 = loadImage("bolt3-01.png");
  img4 = loadImage("bolt4-01.png");
  img5 = loadImage("bolt-5-01.png");
  img6 = loadImage("bolt-6-01.png");
  img7 = loadImage("bolt-7-01.png");
  img8 = loadImage("bolt-8-01.png");
  img9= loadImage("bolt-9-01.png");
  img10 = loadImage("bolt-10-01.png");
  img11 = loadImage("bolt-11-01.png");
  img12 = loadImage("bolt-12-01.png");
  img13 = loadImage("bolt-13-01.png");
  img14 = loadImage("bolt14-01.png");
  img15 = loadImage("bolt-15-01.png");
  img16= loadImage("bolt-16-01.png");
  img17 = loadImage("bolt-17-01.png");
  img18 = loadImage("bolt-18-01.png");
  img19 = loadImage("bolt-19-01.png");
  img20 = loadImage("bolt-20-01.png");
 
  
  size(600,600); 
  

}

void draw() {
  fill(200,0,200);
  rect(0,0,width,height);
  fill(50,100,random(100,120));
  ellipse(width/2 + 15,height/2,500,500); 
  fill(random(100,120),200,0);
  ellipse(width/2 + 15,height/2,200,200); 
  
  
  

  
  //for(int i = 1; i < 400; i = i +1) {
    //frameSizeWidth = frameSizeWidth + i; 
      
  
  img.resize(frameSizeWidth,frameSizeWidth);
  img2.resize(frameSizeWidth,frameSizeWidth);
  img3.resize(frameSizeWidth,frameSizeWidth);
  img4.resize(frameSizeWidth,frameSizeWidth);
  img5.resize(frameSizeWidth, frameSizeWidth);
  img6.resize(frameSizeWidth,frameSizeWidth);
  img7.resize(frameSizeWidth,frameSizeWidth);
  img8.resize(frameSizeWidth,frameSizeWidth);
  img9.resize(frameSizeWidth,frameSizeWidth);
  img10.resize(frameSizeWidth,frameSizeWidth);
  img11.resize(frameSizeWidth,frameSizeWidth);
  img12.resize(frameSizeWidth,frameSizeWidth);
  img13.resize(frameSizeWidth,frameSizeWidth);
  img14.resize(frameSizeWidth,frameSizeWidth);
  img15.resize(frameSizeWidth,frameSizeWidth);
  img16.resize(frameSizeWidth,frameSizeWidth);
  img17.resize(frameSizeWidth,frameSizeWidth);
  img18.resize(frameSizeWidth,frameSizeWidth);
  img19.resize(frameSizeWidth,frameSizeWidth);
  img20.resize(frameSizeWidth,frameSizeWidth); 
  //}  
    
  image(img, 0, 0);
  image(img2, 0, 0);
  image(img3, 0, 0);
  image(img4, 0, 0);
  image(img5, 0, 0);
  image(img6, 0, 0);
  image(img7, 0, 0);
  image(img8, 0, 0);
  image(img9, 0, 0);
  image(img10, 0, 0);
  image(img11, 0, 0);
  image(img12, 0, 0);
  image(img13, 0, 0);
  image(img14, 0, 0);
  image(img15, 0, 0);
  image(img16, 0, 0);
  image(img17, 0, 0);
  image(img18, 0, 0);
  image(img19, 0, 0);
  image(img20, 0, 0);
  
  rotate(r);
  
  r = r+2;
  
}
