import processing.serial.*;
Serial myPort;

//Image
//grandmotherImage
PImage[] grandmothers=new PImage[6];
//flowImage
PImage[] flows0=new PImage[2];
PImage[] flows1=new PImage[2];
PImage[] flows2=new PImage[2];

PImage[] fin=new PImage[2];

PImage[] f0=new PImage[2];
PImage[] f1=new PImage[2];
PImage[] f2=new PImage[2];

PImage[] ff0=new PImage[2];
PImage[] ff1=new PImage[2];
PImage[] ff2=new PImage[2];

PImage[] fff0=new PImage[2];
PImage[] fff1=new PImage[2];
PImage[] fff2=new PImage[2];

PImage[] ffff0=new PImage[2];
PImage[] ffff1=new PImage[2];
PImage[] ffff2=new PImage[2];

PImage[] fffff0=new PImage[2];
PImage[] fffff1=new PImage[2];
PImage[] fffff2=new PImage[2];

PImage[] ffffff0=new PImage[2];
PImage[] ffffff1=new PImage[2];
PImage[] ffffff2=new PImage[2];

PImage[] fffffff0=new PImage[2];
PImage[] fffffff1=new PImage[2];
PImage[] fffffff2=new PImage[2];

PImage[] ffffffff0=new PImage[2];
PImage[] ffffffff1=new PImage[2];
PImage[] ffffffff2=new PImage[2];

PImage[] fffffffff0=new PImage[2];
PImage[] fffffffff1=new PImage[2];
PImage[] fffffffff2=new PImage[2];

//bgImage
PImage[] bg=new PImage[2];
//etcImage
PImage pot=new PImage();
PImage water=new PImage();
//bg
PImage main = new PImage();
PImage dead = new PImage();
//start
PImage[] start=new PImage[2];
PImage start1=new PImage();

//globa variable
//pot
int[] potX1=new int[5];
int[] potY1=new int[5];
int[] potX2=new int[5];
int[] potY2=new int[5];
int potStage=0;
//flow
int[] flowX1=new int[5];
int[] flowY1=new int[5];
int[] flowState1=new int[5];
int[] flowX2=new int[5];
int[] flowY2=new int[5];
int[] flowState2=new int[5];
//water
int[] waterX1=new int[5];
int[] waterY1=new int[5];
int[] waterX2=new int[5];
int[] waterY2=new int[5];
int[] waterState1=new int[5];
int[] waterState2=new int[5];
//grandmother
int grandmotherX=0;
int grandmotherY=0;
int grandmotherpositionX=0;
int grandmotherpositionY=0;
//frame
int current=0;
int flowcurrent=0;
int bgcurrent=0;
int stcurrent=0;
//gameState
int gameState;
int kkey=0;
//dir
int grandmotherDir=1;
int grandDir=0;
//time
int start_time=0;
//flag
boolean flag1=false;
boolean flag2=false;

void setup(){
  size(1024,768);
  frameRate(6);
    
  grandmothers[0]=loadImage("grandma1.png");
  grandmothers[1]=loadImage("grandma2.png");
  grandmothers[2]=loadImage("grandma3.png");
  grandmothers[3]=loadImage("grandma4.png");
  grandmothers[4]=loadImage("grandma5.png");
  grandmothers[5]=loadImage("grandma6.png");
  
  fin[0]=loadImage("fin0.png");
  fin[1]=loadImage("fin1.png");
  
  f0[0]=loadImage("F1-1.png");
  f0[1]=loadImage("F1-2.png");
  f1[0]=loadImage("F1-3.png");
  f1[1]=loadImage("F1-4.png");
  f2[0]=loadImage("F1-5.png");
  f2[1]=loadImage("F1-6.png");
  
  ff0[0]=loadImage("FF2-1.png");
  ff0[1]=loadImage("FF2-2.png");
  ff1[0]=loadImage("FF2-3.png");
  ff1[1]=loadImage("FF2-4.png");
  ff2[0]=loadImage("FF2-5.png");
  ff2[1]=loadImage("FF2-6.png");
  
  fff0[0]=loadImage("FFF2-1.png");
  fff0[1]=loadImage("FFF2-2.png");
  fff1[0]=loadImage("FFF2-3.png");
  fff1[1]=loadImage("FFF2-4.png");
  fff2[0]=loadImage("FFF2-5.png");
  fff2[1]=loadImage("FFF2-6.png");
  
  ffff0[0]=loadImage("FF3-1.png");
  ffff0[1]=loadImage("FF3-2.png");
  ffff1[0]=loadImage("FF3-3.png");
  ffff1[1]=loadImage("FF3-4.png");
  ffff2[0]=loadImage("FF3-5.png");
  ffff2[1]=loadImage("FF3-6.png");
  
  fffff0[0]=loadImage("FFF3-1.png");
  fffff0[1]=loadImage("FFF3-2.png");
  fffff1[0]=loadImage("FFF3-3.png");
  fffff1[1]=loadImage("FFF3-4.png");
  fffff2[0]=loadImage("FFF3-5.png");
  fffff2[1]=loadImage("FFF3-6.png");
  
  ffffff0[0]=loadImage("F3-1.png");
  ffffff0[1]=loadImage("F3-2.png");
  ffffff1[0]=loadImage("F3-3.png");
  ffffff1[1]=loadImage("F3-4.png");
  ffffff2[0]=loadImage("F3-5.png");
  ffffff2[1]=loadImage("F3-6.png");
  
  fffffff0[0]=loadImage("FF1-1.png");
  fffffff0[1]=loadImage("FF1-2.png");
  fffffff1[0]=loadImage("FF1-3.png");
  fffffff1[1]=loadImage("FF1-4.png");
  fffffff2[0]=loadImage("FF1-5.png");
  fffffff2[1]=loadImage("FF1-6.png");
  
  ffffffff0[0]=loadImage("F2-1.png");
  ffffffff0[1]=loadImage("F2-2.png");
  ffffffff1[0]=loadImage("F2-3.png");
  ffffffff1[1]=loadImage("F2-4.png");
  ffffffff2[0]=loadImage("F2-5.png");
  ffffffff2[1]=loadImage("F2-6.png");
  
  fffffffff0[0]=loadImage("FFF1-1.png");
  fffffffff0[1]=loadImage("FFF1-2.png");
  fffffffff1[0]=loadImage("FFF1-3.png");
  fffffffff1[1]=loadImage("FFF1-4.png");
  fffffffff2[0]=loadImage("FFF1-5.png");
  fffffffff2[1]=loadImage("FFF1-6.png");
  
  main = loadImage("startview0.png");
  dead = loadImage("startview1.png");
  
  pot=loadImage("pot.png");
  water=loadImage("water.png");
  
  bg[0]=loadImage("bg0.jpg");
  bg[1]=loadImage("bg1.jpg");
  
  start[0]=loadImage("start0.png");
  start[1]=loadImage("start1.png");
  start1=loadImage("start2.png");
  
  for(int i=0;i<5;i++)
    flowState1[i]=0;
  for(int i=0;i<5;i++)
    flowState2[i]=0;
  for(int i=0;i<5;i++)
    waterState1[i]=0;
  for(int i=0;i<5;i++)
    waterState2[i]=0;
 
  gameState=0;
  
  println(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  
}

void draw(){
  current=(current+1)%6; 
  flowcurrent=(flowcurrent+1)%2;
  bgcurrent=(bgcurrent+1)%2;
     
  image(main,0,0);
  resetMatrix();
  image(start[stcurrent%2],365,580);
  if(kkey==1){
    stcurrent+=1;
    if(stcurrent>10){
      kkey=0;
      gameState=1;
    }
  }

  if(gameState==2){
    flag1=false;
    flag2=false;
    image(dead,0,0);
  }
  
  else if(gameState==1){
    background(255);
    
    //grandmother
    resetMatrix();
    image(bg[bgcurrent],0,0);
    translate(grandmotherX,grandmotherY);
    if(grandDir==1){
      translate(240,0);
      scale(-1,1);
    }
    image(grandmothers[current],50,5+grandmotherpositionY);
    
    //pot1
    resetMatrix();
    for(int i=0;i<5;i++){
      potX1[i]=100*i+290;
      image(pot,100*i+290,200);
    }
    for(int i=0;i<5;i++){
      potX2[i]=100*i+290;
      image(pot,100*i+290,540);
    }
    
    //water
    if(potStage==0){
      resetMatrix();
      for(int i=0;i<5;i++){
        if(waterState1[i]==1){  
          translate(waterX1[i],waterY1[i]);
          image(water,0,0);
        }
      }
    }
    if(potStage==1){
      resetMatrix();
      for(int i=0;i<5;i++){
        if(waterState2[i]==1){  
          translate(waterX2[i],waterY2[i]);
          translate(23,0);
          scale(-1,1);
          image(water,0,0);
        }
      }
    } 
    for(int i=0;i<5;i++){
      if(waterState1[i]==1){
        waterY1[i]+=50;
        if(waterY1[i]>250 && potStage==0)
          waterState1[i]=0;
        if(waterY1[i]>500 && potStage==1)
          waterState1[i]=0;
        if(waterY1[i]>800 && potStage==2)
          waterState1[i]=0;
      }
    }
    for(int i=0;i<5;i++){
      if(waterState2[i]==1){
        waterY2[i]+=50;
        if(waterY2[i]>250 && potStage==0)
          waterState2[i]=0;
        if(waterY2[i]>500 && potStage==1)
          waterState1[i]=0;
        if(waterY2[i]>800 && potStage==2)
          waterState2[i]=0;
      }
    }
    
    //collision
    if(potStage==0){
      for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
          if(waterState1[j]==1){
            if(waterX1[j]<potX1[i]+100 && potX1[i]<waterX1[j]+23 && waterY1[j]>205){
                waterState1[j]=0;
                flowState1[i]+=1;
                if(flowState1[i]>3)
                  flowState1[i]=3;
            }
          }
        }
      }
    }
    if(potStage==1){
      for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
          if(waterState2[j]==1){
            if(waterX2[j]<potX2[i]+100 && potX2[i]<waterX2[j]+23 && waterY2[j]>575){
                waterState2[j]=0;
                flowState2[i]+=1;
                if(flowState2[i]>3)
                  flowState2[i]=3;
            }
          }
        }
      }
    }
 
    //flow1
    resetMatrix();
    switch(flowState1[0]){
    case 1:
      image(f0[flowcurrent],potX1[0]+10,127);
      if(millis()-start_time > 10000){
          flowState1[0] = flowState1[0]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(f1[flowcurrent],potX1[0]+10,127);
      if(millis()-start_time > 10000){
          flowState1[0] = flowState1[0]-1;
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(f2[flowcurrent],potX1[0]+10,127);
      if(millis()-start_time > 10000){
          flowState1[0] = flowState1[0]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
  
    //flow2
    resetMatrix();
    switch(flowState1[1]){
    case 1:
      image(ff0[flowcurrent],potX1[1]+10,127);
      if(millis()-start_time > 10000){
          flowState1[1] = flowState1[1]-1;
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(ff1[flowcurrent],potX1[1]+10,127);
      if(millis()-start_time > 10000){
          flowState1[1] = flowState1[1]-1;
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(ff2[flowcurrent],potX1[1]+10,127);
      if(millis()-start_time > 10000){
          flowState1[1] = flowState1[1]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
  
    //flow3
    resetMatrix();
    switch(flowState1[2]){
    case 1:
      image(fff0[flowcurrent],potX1[2]+10,127);
      if(millis()-start_time > 10000){
          flowState1[2] = flowState1[2]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(fff1[flowcurrent],potX1[2]+10,127);
      if(millis()-start_time > 10000){
          flowState1[2] = flowState1[2]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(fff2[flowcurrent],potX1[2]+10,127);
      if(millis()-start_time > 10000){
          flowState1[2] = flowState1[2]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
    
    //flow4
    resetMatrix();
    switch(flowState1[3]){
    case 1:
      image(ffff0[flowcurrent],potX1[3]+10,127);
      if(millis()-start_time > 10000){
          flowState1[3] = flowState1[3]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(ffff1[flowcurrent],potX1[3]+10,127);
      if(millis()-start_time > 10000){
          flowState1[3] = flowState1[3]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(ffff2[flowcurrent],potX1[3]+10,127);
      if(millis()-start_time > 10000){
          flowState1[3] = flowState1[3]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
   
    //flow5
    resetMatrix();
    switch(flowState1[4]){
    case 1:
      image(fffff0[flowcurrent],potX1[4]+10,127);
      if(millis()-start_time > 10000){
          flowState1[4] = flowState2[4]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(fffff1[flowcurrent],potX1[4]+10,127);
      if(millis()-start_time > 10000){
          flowState1[4] = flowState1[4]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(fffff2[flowcurrent],potX1[4]+10,127);
      if(millis()-start_time > 10000){
          flowState1[4] = flowState1[4]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
   
    //flow6
    resetMatrix();
    switch(flowState2[0]){
    case 1:
      image(ffffff0[flowcurrent],potX2[0]+20,465);
      if(millis()-start_time > 10000){
          flowState2[0] = flowState2[0]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(ffffff1[flowcurrent],potX2[0]+20,465);
      if(millis()-start_time > 10000){
          flowState2[0] = flowState2[0]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(ffffff2[flowcurrent],potX2[0]+20,465);
      if(millis()-start_time > 10000){
          flowState2[0] = flowState2[0]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
    
    //flow7
    resetMatrix();
    switch(flowState2[1]){
    case 1:
      image(fffffff0[flowcurrent],potX2[1]+20,465);
      if(millis()-start_time > 10000){
          flowState2[1] = flowState2[1]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(fffffff1[flowcurrent],potX2[1]+20,465);
      if(millis()-start_time > 10000){
          flowState2[1] = flowState2[1]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(fffffff2[flowcurrent],potX2[1]+20,465);
      if(millis()-start_time > 10000){
          flowState2[1] = flowState2[1]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
    
    //flow8
    resetMatrix();
    switch(flowState2[2]){
    case 1:
      image(ffffffff0[flowcurrent],potX2[2]+20,465);
      if(millis()-start_time > 10000){
          flowState2[2] = flowState2[2]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(ffffffff1[flowcurrent],potX2[2]+20,465);
      if(millis()-start_time > 10000){
          flowState2[2] = flowState2[2]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(ffffffff2[flowcurrent],potX2[2]+20,465);
      if(millis()-start_time > 10000){
          flowState2[2] = flowState2[2]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
    
    //flow9
    resetMatrix();
    switch(flowState2[3]){
    case 1:
      image(fffffffff0[flowcurrent],potX2[3]+20,465);
      if(millis()-start_time > 10000){
          flowState2[3] = flowState2[3]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(fffffffff1[flowcurrent],potX2[3]+20,465);
      if(millis()-start_time > 10000){
          flowState2[3] = flowState2[3]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(fffffffff2[flowcurrent],potX2[3]+20,465);
      if(millis()-start_time > 10000){
          flowState2[3] = flowState2[3]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
    
    //flow10 
    resetMatrix();
    switch(flowState2[4]){
    case 1:
      image(ffffff0[flowcurrent],potX2[4]+20,465);
      if(millis()-start_time > 10000){
          flowState2[4] = flowState2[4]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;   
    case 2:
      image(ffffff1[flowcurrent],potX2[4]+20,465);
      if(millis()-start_time > 10000){
          flowState2[4] = flowState2[4]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    case 3:
      image(ffffff2[flowcurrent],potX2[4]+20,465);
      if(millis()-start_time > 10000){
          flowState2[4] = flowState2[4]-1; 
          image(dead, 0, 0);
          gameState=2;
      }
      break;
    }
  }//gameState=1
  
  if(flowState1[0]==3 && 
      flowState1[1]==3 && 
      flowState1[2]==3 &&
      flowState1[3]==3 &&
      flowState1[4]==3)
        flag1=true;
         
  if(flag1==true)
    println("flag1 on");
    
  if(flowState2[0]==3 && 
      flowState2[1]==3 && 
      flowState2[2]==3 &&
      flowState2[3]==3 &&
      flowState2[4]==3)
        flag2=true;
         
  if(flag2==true)
    println("flag2 on");     
  
  if(flag1==true&&flag2==true)
    gameState=3;
   
  if(gameState==3){
    image(fin[bgcurrent],0,0);
    if(keyPressed)
      exit();
  }  
}

void keyPressed(){
  if(keyCode==ENTER)
        kkey=1;
}

void serialEvent(Serial myPort){
  int inByte = myPort.read();
  if(inByte>0){
      if(grandmotherDir==1){
        grandmotherX+=10;
        if(grandmotherX>820){
          grandmotherDir=2;
          grandDir=1;
          potStage++;
          println("potstage : "+potStage);
        }
      }
      if(grandmotherDir==2){
        grandmotherY+=10;
        if(grandmotherY>290)
          grandmotherDir=3;
      }
      if(grandmotherDir==3){
        grandmotherX-=10;
        if(grandmotherX<10)
          grandmotherDir=4; 
      }
      if(grandmotherDir==4){
        grandmotherY-=10;
        if(grandmotherY<5){
          grandmotherDir=1;
          grandDir=0;
          potStage=0;
          println("potstage : "+potStage);
        } 
      }
      if(potStage==0){
        for(int i=0;i<5;i++){
          waterState1[i]=1;
          waterX1[i]=grandmotherX+290;
          start_time = millis(); 
          switch(potStage){
          case 0:  waterY1[i]=150;  break;
          case 1:  waterY1[i]=365;  break;
          case 2:  waterY1[i]=610;  break;
          }
          break;
        }
      }
      if(potStage==1){
        for(int i=0;i<5;i++){
          waterState2[i]=1;
          waterX2[i]=grandmotherX-70;
          start_time = millis();
          switch(potStage){
          case 0:  waterY2[i]=120;  break;
          case 1:  waterY2[i]=425;  break;
          case 2:  waterY2[i]=610;  break;
          }
          break;
        }
      }
  }
} 