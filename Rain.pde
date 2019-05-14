 int maxRains=8;

class Rain
{
  
  int mode=0;
  PVector location;
  PVector velocity;
  PVector acceleration;
  Rain()
 {
   location=new PVector(random(width-1),-3*scale);
   velocity=new PVector(0,0);
   acceleration=new PVector(0,2.8);
 }  
 void Draw()
 {
   if(mode==0)
   {
     fill(143,0,255);//Purple
     
   }
   else if(mode==1)
   {
     fill(12,218,255);//Sky
     
   }
   else if(mode==2)
   {
     fill(255,250,12);//Yellow
     
   }
    else if(mode==3)
   {
     fill(0,255,67);//Radium Green
     
   }
   rect(location.x,location.y,width/(125),height/(18));
   
   update();
 }
 void update()
 {
   acceleration.y=random(0,0.5);
   velocity.add(acceleration);
   velocity.limit(100);
   location.add(velocity);
   if(location.y>=height)
   {
     
     location.y=0;
     location.x=random(width-1);
     velocity.y=0;
     delay(10);
     if(mode!=3)mode++;
     else mode=0;
     
   }
 }
}
