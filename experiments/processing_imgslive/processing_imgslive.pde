import processing.video.*;

Capture video;
int thr0, thr1, thr2;
int cellSize;
color c0, c1, c2, c3;

void setup() {
  // canvas
  size(640, 480);
  background(0);
  
  // settings 
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  
  // variables
  thr0 = 40;
  thr1 = 60;
  thr2 = 80;
  cellSize = 20;
  
  // colors 
  c0 = color(247, 0, 13, 100);
  c1 = color(206, 87, 100, 100);
  c2 = color(7, 90, 84, 100);
  c3 = color(0, 0, 100, 100);
  
  video = new Capture(this, 640, 480);
  video.start();
}

void draw() {
  if(video.available() == true){
    video.read();
    // casting the video image to a PImage type (instead of Capture) 
    PImage img = video;
    recalc(img);
  }
  
}

void recalc(PImage img){
  background(0, 0, 100);
  
  img.loadPixels();
  int cols = img.width/cellSize;  // Number of columns
  int rows = img.height/cellSize; // Number of rows
    
  for(int i=0; i<cols; i++){
    for(int j=0; j<rows; j++){
      int x = i*cellSize;
      int y = j*cellSize;
      int loc = x + y*img.width;
      //float h = hue(img.pixels[loc]);         // hue in location
      //float s = saturation(img.pixels[loc]);  // saturation in location
      float b = brightness(img.pixels[loc]);  // brightness in location
      
      color c;
      if( b<=thr0 ) { 
        c = c0;
      } else if( b<=thr1 ) {
        c = c1;
      } else if( b<=thr2 ) {
        c = c2;
      } else {
        c = c3;
      }
      
      float size = map( b, 0, 100, cellSize*0.8, cellSize*1.1);
      
      pushMatrix();
      translate( x+cellSize/2, y+cellSize/2 );
      fill(c);
      ellipse(0, 0, size, size);
      popMatrix();
    }
  }
}


void keyPressed(){
  switch(key){
    case '+':
      cellSize++;
      break;
    case '-':
      if(cellSize>1){ cellSize--; }
      break;
    case 's':
      String file =  String.valueOf(day()) + String.valueOf(month()) + 
                    "_" + hour() + minute() + second() + ".jpg";
      save(file);
     case 'u':
       thr0++;
       break;
     case 'j':
       thr0--;
       break;
     case 'i':
       thr1++;
       break;
     case 'k':
       thr1--;
       break;
     case 'o':
       thr2++;
       break;
     case 'l':
       thr2--;
       break;
  }
}