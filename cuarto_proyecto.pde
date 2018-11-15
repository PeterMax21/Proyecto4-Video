import processing.video.*;
Movie mov;
cambiaColores una;

void setup() 
{  
  size(640,360);
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
  if(mouseX>0 && mouseX<320)
  {
    tint(255,0,0);
  }
  
  if(mouseX>320 && mouseX<640)
  {
    tint(0,255,0);
  }
  
  if(mouseY>180 && mouseY<360)
  {
    tint(0,0,255);
  }
  
  if(mouseX>= 320 && mouseY>180)
  {
    noTint();
  }
  //una.cambiaColores();
  strokeWeight(3);
  line(mouseX,0,mouseX,height);
  line(0,mouseY,width,mouseY);
}
