//Walker hello;
 Walker []betteroldpplhome;
void setup(){
 size(800,800); 
 
 // hello=new Walker(-100,-100,255);
 betteroldpplhome=new Walker[500];
 for(int i=0; i<betteroldpplhome.length;i++)
 betteroldpplhome[i]=new Walker((int)(Math.random()*800),(int)(Math.random()*800),255);
}

void draw(){
background(150);
//hello.walk();
//hello.show();
for(int i=0;i<betteroldpplhome.length;i++){
 betteroldpplhome[i].walk();
 betteroldpplhome[i].show();
 betteroldpplhome[i].follow();
}
}





class Walker {
 int myX,myY,myCol;
 Walker(int x,int y, int col){
  myX=x;
  myY=y; 
  myCol=col; 
 }
  void walk(){
   myX=myX+(int)(Math.random()*7)-3;
   myY=myY+(int)(Math.random()*7)-3;
    
    
  }
  void show(){

    if(dist(mouseX,mouseY,myX,myY)<25){
      fill(myCol,myCol,0);
      ellipse(myX,myY,40,40);
    fill(0);
    ellipse(myX+8,myY-8,10,10);
    ellipse(myX-8,myY-8,10,10);
    arc(myX,myY+2,10,10,0,PI);
    
    }
    else{
      fill(myCol,0,0);
      ellipse(myX,myY,40,40);
    fill(0);
     ellipse(myX+8,myY-8,10,10);
    ellipse(myX-8,myY-8,10,10);
    line(myX-3,myY+2,myX+3,myY+2);
    line(myX-15,myY-24,myX-1,myY-10);  
      line(myX+15,myY-24,myX+1,myY-10); 
    }
    fill(255);
  }
   void follow(){
     if(mouseX-myX<=0){//moves left
      myX=myX-(int)(Math.random()*2)-2; 
     }
    if(mouseX-myX>0){//moves right
      myX=myX+(int)(Math.random()*2)+2; 
     }
     if(mouseY-myY<=0){//move up
      myY=myY-(int)(Math.random()*2)-2; 
     }
      if(mouseY-myY>0){//move down
      myY=myY+(int)(Math.random()*2)+2; 
     }
   }
    
    
  }
  
  
  
  
  
