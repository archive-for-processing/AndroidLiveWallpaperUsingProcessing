class MarqueeText
{
  PFont font;
  String text;
  int textSize;
  int x;
  int y;
  Thread animationThread;
  MarqueeText(PFont f,String s,int posX,int posY,int textsize)
  {
    font=f;
    text=s;
    x=posX;
    y=posY;
    textSize=textsize;
    textAlign(CENTER);
    textFont(font);
    textSize(textSize);
    
    
  }
  void Draw()
  {
    text = getCurrentTime();
    text(text,x-25,y);
    
  }
   public String getCurrentTime() {
        return hour()+" : "+minute()+" : "+second()+"";
    }
  void animate2()
  {
    int s=millis();
    int e=millis();
    
    while(e-s<1000)
    {
      text(text,x-25,y);
      e=millis();
    }
    
    s=millis();
    e=millis();
    
    //while(e-s<500)
    //{
    //  fill(0);
    //  rect(0,0,width,height);
    //  e=millis();
    //}
    s=millis();
    e=millis();
     while(e-s<1000)
    {
      text(text,x-25,y);
      e=millis();
    }
  }
  void animate1()
  {
    
    int s=millis();
    int e=millis();
    
    for(int i=0;i<text.length();i++)
    {
      s=millis();
      while(e-s<1000)
    {
      text(text.charAt(i),x,y);
      e=millis();
    }
    
    }
    
    //while(e-s<1000)
    //{
    //  text(text.charAt(0),x,y);
    //  e=millis();
    //}
    //s=millis();
    //e=millis();
    //while(e-s<1000)
    //{
    //  text(text.charAt(1),x,y);
    //  e=millis();
    //}
    //s=millis();
    //e=millis();
    //while(e-s<1000)
    //{
    //  text(text.charAt(2),x,y);
    //  e=millis();
    //}
    //s=millis();
    //e=millis();
    //while(e-s<1000)
    //{
      
    //text(text.charAt(3),x,y);
    
    //  e=millis();
    //}
    
   
  }
  
  
}
