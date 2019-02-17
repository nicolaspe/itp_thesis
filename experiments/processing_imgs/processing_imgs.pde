PImage img, newImg;
int thr0, thr1;
int cellSize;
color c0, c1, c2;

void setup() {
  // canvas
  size(720, 720);
  background(0);
  
  // settings 
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  
  // variables
  thr0 = 20;
  thr1 = 60;
  cellSize = 20;
  
  // colors 
  c0 = color(272, 52, 40, 100);
  c1 = color(285, 100, 100, 100);
  c2 = color(272, 0, 100, 100);
  
  // image
  img = loadImage("npe.jpg");
  newImg = new PImage(img.width, img.height);
  
  recalc();
}

void draw() {
  
}

void recalc(){
  background(0);
  
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
      } else {
        c = c2;
      }
      
      float size = map( b, 0, 100, cellSize*0.01, cellSize);
      
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
      cellSize--;
      break;
    case 's':
      String file =  String.valueOf(day()) + String.valueOf(month()) + 
                    "_" + hour() + minute() + second() + ".jpg";
      save(file);
  }
  this.recalc();
}