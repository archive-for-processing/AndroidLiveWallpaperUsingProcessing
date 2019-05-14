int scale=25;

Rain [] rain;

PFont font;
String text;
int textSize;
MarqueeText marquee;
void setup()
{
  frameRate(100);
  size(displayWidth, displayHeight);
  initialize();
}
void draw()
{
  background(0);
  
   drawAllRain();
   marquee.Draw();
  
}

void initialize()
{
  rain=new Rain[maxRains];

  for (int i=0; i<maxRains; i++)
  {
    rain[i]=new Rain();
  }
  
  text="";
  textSize=80;
  font=createFont("comicz.ttf",64);
  marquee=new MarqueeText(font,text,width/2,height/2,textSize);
  
}

void drawAllRain(){
  for (int i=0; i<maxRains; i++)
  {
    rain[i].Draw();
    
  };
  
}
