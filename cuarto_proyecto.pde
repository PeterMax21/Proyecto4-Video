import processing.video.*;
Movie mov;
cambiaColores una;

void setup() 
{  
  size(1280,720);
  mov = new Movie(this,"Sabrina.mp4");  
  mov.loop();
  una= new cambiaColores();
}
  
  
void movieEvent(Movie movie)
{  
  mov.read();
}

void draw()
{
  image(mov,0,0);
  mov.loadPixels();
  if(mouseX>0 && mouseX<640)
  {
    tint(255,0,0);
  }
  
  if(mouseX>640 && mouseX<1280)
  {
    tint(0,255,0);
  }
  
  if(mouseY>360 && mouseY<720)
  {
    tint(0,0,255);
  }
  
  if(mouseX>= 640 && mouseY>360)
  {
    noTint();
  }
  //una.cambiaColores();
  strokeWeight(3);
  line(mouseX,0,mouseX,height);
  line(0,mouseY,width,mouseY);
}
