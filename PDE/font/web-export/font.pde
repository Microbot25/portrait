/*
import gifAnimation.*;
GifMaker gifExport;
*/
float theta, diam;
PGraphics letras;
PFont font;
int paso =24;

 
void setup() {
  background(0);
  size(800, 500);
  noStroke();
  fill(82,255,92);
  //fill(102,0,0);
  
  //String[] fontList = PFont.list();
  //println(fontList);
  
  letras = createGraphics(width, height);
  //font = loadFont("wearealien!!-50.vlw");
  //font = loadFont("WeAreAlien");
  font = createFont("WeAreAlien", 32);
  
  
  Stuff();
  
   //gifExport = new GifMaker(this, "export.gif");
   //gifExport.setRepeat(0);             // make it an "endless" animation
}
 
void draw() {
  background(0);
 
  for (int x=paso/2; x<width; x+=paso) {
    for (int y=paso/2; y<height; y+=paso) {
      int c = letras.pixels[x+y*width];
      if (brightness(c)>50) {
        diam = paso*.5;
      } else {
        diam = map(sin(theta),-1,1,paso*.2,paso*.9);
        //diam = step*.9;
      }
 
 
      ellipse(x, y, diam, diam);
    }
  }
 
  theta += .05273;
 
  //if (frameCount%2==0 && frameCount < 121) saveFrame("image-####.gif");
  
  //gifExport.setDelay(1);
  //gifExport.addFrame();
}
 
void Stuff() {  
  letras.beginDraw();
  letras.noStroke();
  letras.background(0,0,255);
  letras.fill(0);
  letras.textFont(font, 500);
  letras.textAlign(CENTER, CENTER);
  letras.text("25", width/2, height/2);
  letras.endDraw();
  letras.loadPixels();
}

/*
void mousePressed() {
    gifExport.finish();                 // write file
}
*/


