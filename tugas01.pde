PImage bnuuy;
PFont impact;
float velY = 0, posY = 0, posX = 0, gravity = 0.1;


void setup() {
  size(800,600);
  bnuuy = loadImage("bnuuy_smaller.png");
  impact = loadFont("Impact-50.vlw");
  posX = width/2;
}

void draw() {
  background(0);
  
  if(mousePressed == true)
  {
    posY = mouseY;
    posX = mouseX;
    velY = 0;
  }
  else
  {
    velY = velY + gravity;
    posY = posY + velY;
  }
  
  if(posY>height)
  {
    posY = height;
    velY = 0-(velY*0.5);
  }
  
  imageMode(CENTER);
  image(bnuuy, posX, posY-(bnuuy.height/2)/*height/2*/);
  
  fill(14, 107, 227);
  textSize(50);
  textAlign(CENTER, CENTER);
  textFont(impact);
  
  text("bnuunby", width/2, 50);
  
  //saveFrame("frame-#####.tiff");
}
