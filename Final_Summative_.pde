import processing.sound.*;
SoundFile file;
String music = "Wake Of The Martyrs.mp3";
String music1;
PImage pewdiepie;
PImage Tseries;
int Counter1 = 80000000;
int Counter2 = 80000000;
int lastTime = 0;

void setup()
{
  size(800, 800);
  music1 = sketchPath("Wake Of The Martyrs.mp3");
  file = new SoundFile(this, music1);
  file.jump(10);
  file.loop();
  pewdiepie = loadImage("pewdiepie.png");
  Tseries = loadImage("T-series.png");
}

void draw()
{
  background(0);
  textSize(50);
  text("PEWDIEPIE", 100,100);
  text("T-SERIES", 500,100);
  image(pewdiepie, 100,150);
  image(Tseries, 500,150);
  text(Counter1, 100,500);
  text(Counter2, 500,500);
  
  if(millis() -lastTime > 2000)
  {
   lastTime = millis(); 
   Counter1 +=(int)random(-10,10); 
   Counter2 +=(int)random(-10,10);
  }
  
}

void keyReleased()
{
  if(key == ' ')
  {
   Counter1 ++; 
  }
  
  if(keyCode == UP)
  {
   Counter2 ++; 
  }
}
