PImage bnuuy;
PFont impact;
float velX = 0, velY = 0, dX = 0, dY = 0, posX = 0, posY = 0, gravity = 0.1;


void setup() {
  size(800,600);
  bnuuy = loadImage("bnuuy_smaller.png");
  impact = loadFont("Impact-50.vlw");
  posX = width/2;
}

float bounce(float val, float mult)
{
  return (-val*mult);
}

void checkpos(PImage image)
{
  if(posX < image.width/2)
  {
    posX = image.width/2;
    velX = bounce(velX, 0.5);
  }
  
  if(posX > (width - (image.width/2)))
  {
    posX = width - (image.width/2);
    velX = bounce(velX, 0.5);
  }
  
  if(posY < image.height)
  {
    posY = image.height;
    velY = bounce(velY, 0.5);
  }
  
  if(posY > height)
  {
    posY = height;
    velY = bounce(velY, 0.5);
  }
}

void setpos(PImage image)
{
    if(mousePressed == true)
  {
    dX = posX;
    
    posX = mouseX;
    if(mouseX < image.width/2)
    {
      posX = image.width/2;
    }
    if(mouseX > (width - (image.width/2)))
    {
      posX = (width - (image.width/2));
    }
    
    dX -= posX;
    velX = -dX;
    
    dY = posY;
    
    posY = mouseY;
    if(mouseY < image.height)
    {
      posY = image.height;
    }
    if(mouseY > (height))
    {
      posY = (height);
    }
    
    dY -= posY;
    velY = -dY;
  }
  else
  {
    velX = velX*0.99;
    posX = posX + velX;
    
    velY = velY + gravity;
    posY = posY + velY;
  }
  
}

void draw() {
  background(0);
  
  setpos(bnuuy);
  checkpos(bnuuy);
  
  imageMode(CENTER);
  image(bnuuy, posX, posY-(bnuuy.height/2)/*height/2*/);
  
  fill(14, 107, 227);
  textSize(50);
  textAlign(CENTER, CENTER);
  textFont(impact);
  
  text("bnuunby", width/2, 50);
  
  //saveFrame("frame-#####.tiff");
}
