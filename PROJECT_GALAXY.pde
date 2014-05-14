//Ethan Assing
//December 20,2012
//Computer Science Project Periodic Motion and Drag




PFont myFont =createFont("verdana", 12);
int starX=300, starY=300;
float titleY=600;
int PageNumber =1;
int buttonX=540, buttonY=575;
int mouthY=100;
int mouthVY=-2;
int star2Y=500;
int star3Y=350;
int star4Y=225;
int star5Y=300;
int star6Y=550;
int star7Y=355;
int star8Y=100;
int star9Y=400;
int star10Y=580;
int star11Y=75;
int star12Y=220;
int star13Y=550;
int star14Y=100;
int star15Y=75;
int star16Y=300;
float helpX=200, helpY=450;
int drag=0;
float sX=200;
float sY=590;
float uT=0, uT2=0, uT3=0;
float ufoX=250, ufoY=90;
float ufo2X=400, ufo2Y=140;
float ufo3X=150, ufo3Y=190;
int health=500;
float time=100;
float time2=350;
float ufo4X=150, ufo4Y=340;
float ufo5X=450, ufo5Y=340;
float uT4=0, uT5=0;
float bulX=300, bulY=230, bT=0;
float bul2X=300, bul2Y=230, bT2=0;
float bul3X=300, bul3Y=230, bT3=0;
float bul4X=300, bul4Y=230, bT4=0;
float bul5X=300, bul5Y=230, bT5=0;
float bul6X=300, bul6Y=230, bT6=0;
float bul7X=300, bul7Y=230, bT7=0;
float bul8X=300, bul8Y=230, bT8=0;
float bul9X=300, bul9Y=230, bT9=0;
float bul10X=300, bul10Y=230, bT10=0;
float bul11X=300, bul11Y=230, bT11=0;
float bul12X=300, bul12Y=230, bT12=0;
float bul13X=300, bul13Y=230, bT13=0;
float bul14X=300, bul14Y=230, bT14=0;
float bul15X=300, bul15Y=230, bT15=0;
int health2=1000;
int shield=3500;
int protect=1;
int bossH=15000 ;
int bossC1=#8E8582;
int bossC2=#62ED83;
int bossC3=#ffff00;
int bossC4=255;
int bossfade=200;
int attack=1;
float l1X=-999, l1Y;
int l1Go;
float l2X=-999, l2Y;
int l2Go;
int win=0;
int UFO=1;





void setup() {
  size(600, 600);
  frameRate(30);
  smooth();
}


void keyPressed() {
  if (key == ' ') {

    if (l1Go == 0) {
      l1Go= 1;
      l1X = sX;
      l1Y= sY-70;
    }
    if (l2Go == 0) {
      l2Go= 1;
      l2X = sX+140;
      l2Y= sY-70;
    }
  }
}







void mousePressed() {

  //turn from page 1
  if (dist(mouseX, mouseY, buttonX+50, buttonY-25)<=50) {




    if (win == 1) {

      PageNumber+=1;

      if (PageNumber == 3) {
        win = 0;
        UFO=1;
      }

      if (PageNumber ==4) {
        win=0;
        UFO=1;
      }

      if (PageNumber ==5) {

        win=0;
      }
    }
  }



  //Dragging Player
  if (mouseX>=sX+50 && mouseX<=sX+100 && mouseY>=sY-60 && mouseY<=sY-10) {

    drag=1;
  }
}

void mouseReleased() {
  drag=0;
}




void draw() {
  background(0);
  if (PageNumber ==1) {
    drawTitle();
  }

  if (PageNumber ==2) {
    drawAlien();
  }

  if (PageNumber ==3) {
    drawLevel();
  }

  if (PageNumber ==4) {
    drawLevel2();
  }

  if (PageNumber ==5) {
    drawBoss();
  }

  if (PageNumber ==6) {
    drawEnding();
  }

  //Game over
  if (health<=0 || health2<=0) {
    drawGameOver();
  }
}


void drawTitle() {
  //Stars
  fill(#ffff00);
  ellipse(starX, starY, 8, 8);
  ellipse(starX+200, starY+200, 8, 8);
  ellipse(starX-100, starY+50, 8, 8);
  ellipse(starX+50, starY-75, 8, 8);
  fill(#ff0000);
  ellipse(starX-200, starY, 8, 8);
  ellipse(starX+200, starY+250, 8, 8);
  ellipse(starX-150, starY+55, 8, 8);
  ellipse(starX+50, starY-200, 8, 8);
  fill(#00ff00);
  ellipse(starX-50, starY+100, 8, 8);
  ellipse(starX+60, starY+280, 8, 8);
  ellipse(starX-100, starY-225, 8, 8);
  ellipse(starX+80, starY-80, 8, 8);
  fill(#0000ff);
  ellipse(starX-250, starY+250, 8, 8);
  ellipse(starX-230, starY-200, 8, 8);
  ellipse(starX+240, starY-225, 8, 8);
  ellipse(starX+200, starY, 8, 8);
  //Title
  textFont(myFont, 25);
  fill(#ff0000);
  //Moverment
  titleY-=.99;

  text("Somewhere in space not far from earth", 25, titleY);
  text("A young glalatic pilot fighter has just passed", 25, titleY+100);
  text("His graduation exam and got a job. ", 25, titleY+200);
  text("However, after his first day on the job he", 25, titleY+300);
  text("he has put in a dangerous situation.", 25, titleY+400);
  text("This is the story of that day.", 25, titleY+500);


  //Next page
  fill(255);
  triangle(buttonX, buttonY, buttonX+50, buttonY, buttonX+25, buttonY-50);
  win=1;
}


void drawAlien() {
  //Next page
  fill(255);
  triangle(buttonX, buttonY, buttonX+50, buttonY, buttonX+25, buttonY-50);
  fill(#ffff00);
  ellipse(starX, starY, 8, 8);
  ellipse(starX+200, starY+200, 8, 8);
  ellipse(starX-100, starY+50, 8, 8);
  ellipse(starX+50, starY-75, 8, 8);
  fill(#ff0000);
  ellipse(starX-200, starY, 8, 8);
  ellipse(starX+200, starY+250, 8, 8);
  ellipse(starX-150, starY+55, 8, 8);
  ellipse(starX+50, starY-200, 8, 8);
  fill(#00ff00);
  ellipse(starX-50, starY+100, 8, 8);
  ellipse(starX+60, starY+280, 8, 8);
  ellipse(starX-100, starY-225, 8, 8);
  ellipse(starX+80, starY-80, 8, 8);
  fill(#0000ff);
  ellipse(starX-250, starY+250, 8, 8);
  ellipse(starX-230, starY-200, 8, 8);
  ellipse(starX+240, starY-225, 8, 8);
  ellipse(starX+200, starY, 8, 8);

  //Alien

  fill(#0CA729);
  ellipse(300, 300, 300, 400);
  fill(0);
  ellipse(225, 275, 100, 50);
  ellipse(340, 275, 100, 50);
  fill(0);
  ellipse(280, 425, 50, mouthY);
  strokeWeight(3);
  line(280, 340, 300, 320);
  line(250, 340, 230, 320);

  //Talking
  mouthY+=mouthVY;

  if (mouthY<=25) {
    mouthVY*=-1;
  }

  if (mouthY>=110) {
    mouthVY*=-1;
  }
  fill(#ff0000);
  text("Aliens had attacked the young pilot!", 50, 75);
  text("Their strange technology disabled his ship !", 0, 550);

  win=1;
}



void drawLevel() {



  //Star motion
  starY+=15;
  star2Y+=15;
  star3Y+=15;
  star4Y+=15;
  star5Y+=15;
  star6Y+=15;
  star7Y+=15;
  star8Y+=15;
  star9Y+=15;
  star10Y+=15;
  star11Y+=15;
  star12Y+=15;
  star13Y+=15;
  star14Y+=15;
  star15Y+=15;
  star16Y+=15;

  //Wrap

  if (starY>=650) {
    starY=-starY+500;
  }

  if (star2Y>=650) {
    star2Y=-star2Y+500;
  }


  if (star3Y>=650) {
    star3Y=-star3Y+500;
  }

  if (star4Y>=650) {
    star4Y=-star4Y+500;
  }

  if (star5Y>=650) {
    star5Y=-star5Y+500;
  }

  if (star6Y>=650) {
    star6Y=-star6Y+500;
  }


  if (star7Y>=650) {
    star7Y=-star7Y+500;
  }


  if (star8Y>=650) {
    star8Y=-star8Y+500;
  }


  if (star9Y>=650) {
    star9Y=-star9Y+500;
  }


  if (star10Y>=650) {
    star10Y=-star10Y+500;
  }


  if (star11Y>=650) {
    star11Y=-star11Y+500;
  }


  if (star12Y>=650) {
    star12Y=-star12Y+500;
  }

  if (star13Y>=650) {
    star13Y=-star13Y+500;
  }

  if (star14Y>=650) {
    star14Y=-star14Y+500;
  }


  if (star15Y>=650) {
    star15Y=-star15Y+500;
  }


  if (star16Y>=650) {
    star16Y=-star16Y+500;
  }

  //Shootiing




  fill(#ffff00);
  ellipse(starX, starY, 8, 8);
  ellipse(starX+200, star2Y, 8, 8);
  ellipse(starX-100, star3Y, 8, 8);
  ellipse(starX+50, star4Y, 8, 8);
  fill(#ff0000);
  ellipse(starX-200, star5Y, 8, 8);
  ellipse(starX+200, star6Y, 8, 8);
  ellipse(starX-150, star7Y, 8, 8);
  ellipse(starX+50, star8Y, 8, 8);
  fill(#00ff00);
  ellipse(starX-50, star9Y, 8, 8);
  ellipse(starX+60, star10Y, 8, 8);
  ellipse(starX-100, star11Y, 8, 8);
  ellipse(starX+80, star12Y, 8, 8);
  fill(#0000ff);
  ellipse(starX-250, star13Y, 8, 8);
  ellipse(starX-230, star14Y, 8, 8);
  ellipse(starX+240, star15Y, 8, 8);
  ellipse(starX+200, star16Y, 8, 8);



  //Model sprite
  noStroke();
  fill(#AFAAAD);
  //rect(sX, sY, 10, 10);
  rect(sX, sY-10, 10, 10);
  rect(sX, sY-20, 10, 10);
  rect(sX, sY-30, 10, 10);
  rect(sX, sY-40, 10, 10);
  rect(sX, sY-50, 10, 10);
  rect(sX+10, sY-30, 10, 10);
  rect(sX+20, sY-40, 10, 10);
  rect(sX+30, sY-50, 10, 10);
  rect(sX+40, sY-60, 10, 10);
  rect(sX+50, sY-70, 10, 10);
  rect(sX+60, sY-70, 10, 10);
  rect(sX+60, sY-80, 10, 10);
  rect(sX+60, sY-90, 10, 10);
  rect(sX+60, sY-100, 10, 10);
  rect(sX+60, sY-110, 10, 10);
  rect(sX+70, sY-110, 10, 10);
  rect(sX+70, sY-120, 10, 10);
  rect(sX+70, sY-130, 10, 10);
  rect(sX+70, sY-140, 10, 10);
  rect(sX+80, sY-110, 10, 10);
  rect(sX+80, sY-100, 10, 10);
  rect(sX+80, sY-90, 10, 10);
  rect(sX+80, sY-80, 10, 10);
  rect(sX+80, sY-70, 10, 10);
  rect(sX+90, sY-70, 10, 10);
  rect(sX+100, sY-60, 10, 10);
  rect(sX+110, sY-50, 10, 10);
  rect(sX+120, sY-40, 10, 10);
  rect(sX+130, sY-30, 10, 10);
  rect(sX+140, sY-30, 10, 10);
  rect(sX+140, sY-20, 10, 10);
  rect(sX+140, sY-10, 10, 10);
  //rect(sX+140,sY,10,10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-50, 10, 10);
  rect(sX+130, sY-10, 10, 10);
  rect(sX+120, sY-20, 10, 10);
  rect(sX+110, sY-20, 10, 10);
  rect(sX+100, sY-20, 10, 10);
  rect(sX+80, sY-20, 10, 10);
  rect(sX+80, sY-10, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY-20, 10, 10);
  rect(sX+60, sY-20, 10, 10);
  rect(sX+60, sY-10, 10, 10);
  rect(sX+40, sY-20, 10, 10);
  rect(sX+30, sY-20, 10, 10);
  rect(sX+20, sY-20, 10, 10);
  rect(sX+10, sY-10, 10, 10);
  //All Colored sqauares
  //Red
  fill(#ff0000);
  rect(sX+50, sY-20, 10, 10);
  rect(sX+50, sY-10, 10, 10);
  rect(sX+40, sY-10, 10, 10);
  rect(sX+30, sY-10, 10, 10);
  rect(sX+20, sY-10, 10, 10);
  rect(sX+90, sY-20, 10, 10);
  rect(sX+90, sY-10, 10, 10);
  rect(sX+100, sY-10, 10, 10);
  rect(sX+110, sY-10, 10, 10);
  rect(sX+120, sY-10, 10, 10);

  rect(sX, sY-70, 10, 10);
  rect(sX, sY-60, 10, 10);
  rect(sX+140, sY-60, 10, 10);
  rect(sX+140, sY-70, 10, 10);
  //Absolute MIDDLE
  rect(sX+70, sY-50, 10, 10);

  rect(sX+60, sY-50, 10, 10);
  rect(sX+80, sY-50, 10, 10);
  rect(sX+70, sY-60, 10, 10);
  rect(sX+60, sY-40, 10, 10);
  rect(sX+80, sY-40, 10, 10);
  fill(#2A51E8);
  rect(sX+40, sY-50, 10, 10);
  rect(sX+30, sY-40, 10, 10);
  rect(sX+100, sY-50, 10, 10);
  rect(sX+110, sY-40, 10, 10);
  //Rest of grey
  fill(#AFAAAD);
  rect(sX+10, sY-20, 10, 10);
  rect(sX+20, sY-30, 10, 10);
  rect(sX+30, sY-30, 100, 10);
  rect(sX+70, sY-40, 10, 10);
  rect(sX+40, sY-40, 20, 10);
  rect(sX+90, sY-40, 20, 10);
  rect(sX+90, sY-50, 10, 10);
  rect(sX+80, sY-60, 20, 10);
  rect(sX+50, sY-60, 20, 10);
  rect(sX+50, sY-50, 10, 10);
  rect(sX+130, sY-20, 10, 10);
  rect(sX+70, sY-100, 10, 40);

  if (drag==1) {

    sX+=.2*(mouseX-(sX+50)-25);
    sY+=.2*(mouseY-(sY-60)-25);
  }



  if (UFO==1) {



    //UFO #1
    strokeWeight(4);
    stroke(0);
    fill(#8E8582);
    ellipse(ufoX, ufoY, 95, 30);
    fill(#62ED83);
    ellipse(ufoX, ufoY-10, 50, 30);


    //Motion
    uT+=.11;
    ufoX= 250 +210*cos(uT);
    ufoY+=3;

    if (ufoY>=650) {
      ufoY=-50;
    }



    //UFO #2
    fill(#8E8582);
    ellipse(ufo2X, ufo2Y, 95, 30);
    fill(#62ED83);
    ellipse(ufo2X, ufo2Y-10, 50, 30);
    //Motion

    uT2+=.11;
    ufo2X= 400 +210*cos(uT2);
    ufo2Y+=4;

    if (ufo2Y>=650) {
      ufo2Y=-50;
    }



    //UFO #3
    fill(#8E8582);
    ellipse(ufo3X, ufo3Y, 95, 30);
    fill(#62ED83);
    ellipse(ufo3X, ufo3Y-10, 50, 30);

    //Motion

    uT3+=.13;
    ufo3X= 400 +210*cos(uT3);
    ufo3Y+=4;

    if (ufo3Y>=650) {
      ufo3Y=-50;
    }






    //Health Down
    if (dist(sX+50, sY-60, ufoX, ufoY)<=100) {
      health+=-2;
    }

    //Health Down#2
    if (dist(sX+50, sY-60, ufo2X, ufo2Y)<=100) {
      health+=-2;
    }


    //Health Down#3
    if (dist(sX+50, sY-60, ufo3X, ufo3Y)<=100) {
      health+=-2;
    }
  }
  //Health
  fill(255);
  text("Health", 450, 50);
  text((int)health, 550, 50);


  //Time

  time+=-.50;
  text("Survive", 400, 100);
  text((int)time, 500, 100);

  if (time<=0) {
    win=1;
    //Next page
    fill(255);
    triangle(buttonX, buttonY, buttonX+50, buttonY, buttonX+25, buttonY-50);

    time=0;
    UFO=0;
  }



  //Boundary right
  if (sX+140>=600) {
    sX=450;
  }

  //Boundary Left
  if (sX<=0) {
    sX=0;
  }


  //Boundary Up
  if (sY-140<=0) {
    sY=140;
  }

  //Boundary down
  if (sY+10>=600) {
    sY=590;
  }
}


void drawLevel2() {




  //Star motion
  starY+=15;
  star2Y+=15;
  star3Y+=15;
  star4Y+=15;
  star5Y+=15;
  star6Y+=15;
  star7Y+=15;
  star8Y+=15;
  star9Y+=15;
  star10Y+=15;
  star11Y+=15;
  star12Y+=15;
  star13Y+=15;
  star14Y+=15;
  star15Y+=15;
  star16Y+=15;

  //Wrap

  if (starY>=650) {
    starY=-starY+500;
  }

  if (star2Y>=650) {
    star2Y=-star2Y+500;
  }


  if (star3Y>=650) {
    star3Y=-star3Y+500;
  }

  if (star4Y>=650) {
    star4Y=-star4Y+500;
  }

  if (star5Y>=650) {
    star5Y=-star5Y+500;
  }

  if (star6Y>=650) {
    star6Y=-star6Y+500;
  }


  if (star7Y>=650) {
    star7Y=-star7Y+500;
  }


  if (star8Y>=650) {
    star8Y=-star8Y+500;
  }


  if (star9Y>=650) {
    star9Y=-star9Y+500;
  }


  if (star10Y>=650) {
    star10Y=-star10Y+500;
  }


  if (star11Y>=650) {
    star11Y=-star11Y+500;
  }


  if (star12Y>=650) {
    star12Y=-star12Y+500;
  }

  if (star13Y>=650) {
    star13Y=-star13Y+500;
  }

  if (star14Y>=650) {
    star14Y=-star14Y+500;
  }


  if (star15Y>=650) {
    star15Y=-star15Y+500;
  }


  if (star16Y>=650) {
    star16Y=-star16Y+500;
  }





  fill(#ffff00);
  ellipse(starX, starY, 8, 8);
  ellipse(starX+200, star2Y, 8, 8);
  ellipse(starX-100, star3Y, 8, 8);
  ellipse(starX+50, star4Y, 8, 8);
  fill(#ff0000);
  ellipse(starX-200, star5Y, 8, 8);
  ellipse(starX+200, star6Y, 8, 8);
  ellipse(starX-150, star7Y, 8, 8);
  ellipse(starX+50, star8Y, 8, 8);
  fill(#00ff00);
  ellipse(starX-50, star9Y, 8, 8);
  ellipse(starX+60, star10Y, 8, 8);
  ellipse(starX-100, star11Y, 8, 8);
  ellipse(starX+80, star12Y, 8, 8);
  fill(#0000ff);
  ellipse(starX-250, star13Y, 8, 8);
  ellipse(starX-230, star14Y, 8, 8);
  ellipse(starX+240, star15Y, 8, 8);
  ellipse(starX+200, star16Y, 8, 8);



  //Model sprite
  noStroke();
  fill(#AFAAAD);
  //rect(sX, sY, 10, 10);
  rect(sX, sY-10, 10, 10);
  rect(sX, sY-20, 10, 10);
  rect(sX, sY-30, 10, 10);
  rect(sX, sY-40, 10, 10);
  rect(sX, sY-50, 10, 10);
  rect(sX+10, sY-30, 10, 10);
  rect(sX+20, sY-40, 10, 10);
  rect(sX+30, sY-50, 10, 10);
  rect(sX+40, sY-60, 10, 10);
  rect(sX+50, sY-70, 10, 10);
  rect(sX+60, sY-70, 10, 10);
  rect(sX+60, sY-80, 10, 10);
  rect(sX+60, sY-90, 10, 10);
  rect(sX+60, sY-100, 10, 10);
  rect(sX+60, sY-110, 10, 10);
  rect(sX+70, sY-110, 10, 10);
  rect(sX+70, sY-120, 10, 10);
  rect(sX+70, sY-130, 10, 10);
  rect(sX+70, sY-140, 10, 10);
  rect(sX+80, sY-110, 10, 10);
  rect(sX+80, sY-100, 10, 10);
  rect(sX+80, sY-90, 10, 10);
  rect(sX+80, sY-80, 10, 10);
  rect(sX+80, sY-70, 10, 10);
  rect(sX+90, sY-70, 10, 10);
  rect(sX+100, sY-60, 10, 10);
  rect(sX+110, sY-50, 10, 10);
  rect(sX+120, sY-40, 10, 10);
  rect(sX+130, sY-30, 10, 10);
  rect(sX+140, sY-30, 10, 10);
  rect(sX+140, sY-20, 10, 10);
  rect(sX+140, sY-10, 10, 10);
  //rect(sX+140,sY,10,10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-50, 10, 10);
  rect(sX+130, sY-10, 10, 10);
  rect(sX+120, sY-20, 10, 10);
  rect(sX+110, sY-20, 10, 10);
  rect(sX+100, sY-20, 10, 10);
  rect(sX+80, sY-20, 10, 10);
  rect(sX+80, sY-10, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY-20, 10, 10);
  rect(sX+60, sY-20, 10, 10);
  rect(sX+60, sY-10, 10, 10);
  rect(sX+40, sY-20, 10, 10);
  rect(sX+30, sY-20, 10, 10);
  rect(sX+20, sY-20, 10, 10);
  rect(sX+10, sY-10, 10, 10);
  //All Colored sqauares
  //Red
  fill(#ff0000);
  rect(sX+50, sY-20, 10, 10);
  rect(sX+50, sY-10, 10, 10);
  rect(sX+40, sY-10, 10, 10);
  rect(sX+30, sY-10, 10, 10);
  rect(sX+20, sY-10, 10, 10);
  rect(sX+90, sY-20, 10, 10);
  rect(sX+90, sY-10, 10, 10);
  rect(sX+100, sY-10, 10, 10);
  rect(sX+110, sY-10, 10, 10);
  rect(sX+120, sY-10, 10, 10);

  rect(sX, sY-70, 10, 10);
  rect(sX, sY-60, 10, 10);
  rect(sX+140, sY-60, 10, 10);
  rect(sX+140, sY-70, 10, 10);
  //Absolute MIDDLE
  rect(sX+70, sY-50, 10, 10);

  rect(sX+60, sY-50, 10, 10);
  rect(sX+80, sY-50, 10, 10);
  rect(sX+70, sY-60, 10, 10);
  rect(sX+60, sY-40, 10, 10);
  rect(sX+80, sY-40, 10, 10);
  fill(#2A51E8);
  rect(sX+40, sY-50, 10, 10);
  rect(sX+30, sY-40, 10, 10);
  rect(sX+100, sY-50, 10, 10);
  rect(sX+110, sY-40, 10, 10);
  //Rest of grey
  fill(#AFAAAD);
  rect(sX+10, sY-20, 10, 10);
  rect(sX+20, sY-30, 10, 10);
  rect(sX+30, sY-30, 100, 10);
  rect(sX+70, sY-40, 10, 10);
  rect(sX+40, sY-40, 20, 10);
  rect(sX+90, sY-40, 20, 10);
  rect(sX+90, sY-50, 10, 10);
  rect(sX+80, sY-60, 20, 10);
  rect(sX+50, sY-60, 20, 10);
  rect(sX+50, sY-50, 10, 10);
  rect(sX+130, sY-20, 10, 10);
  rect(sX+70, sY-100, 10, 40);


  if (drag==1) {

    sX+=.2*(mouseX-(sX+50)-25);
    sY+=.2*(mouseY-(sY-60)-25);
  }


  if (UFO ==1) {


    //UFO #1
    strokeWeight(4);
    stroke(0);
    fill(#8E8582);
    ellipse(ufoX, ufoY, 95, 30);
    fill(#62ED83);
    ellipse(ufoX, ufoY-10, 50, 30);


    //Motion
    uT+=.11;
    ufoX= 250 +210*cos(uT);
    ufoY+=3;

    if (ufoY>=650) {
      ufoY=-50;
    }



    //UFO #2
    fill(#8E8582);
    ellipse(ufo2X, ufo2Y, 95, 30);
    fill(#62ED83);
    ellipse(ufo2X, ufo2Y-10, 50, 30);
    //Motion

    uT2+=.11;
    ufo2X= 400 +210*cos(uT2);
    ufo2Y+=4;

    if (ufo2Y>=650) {
      ufo2Y=-50;
    }



    //UFO #3
    fill(#8E8582);
    ellipse(ufo3X, ufo3Y, 95, 30);
    fill(#62ED83);
    ellipse(ufo3X, ufo3Y-10, 50, 30);

    //Motion

    uT3+=.13;
    ufo3X= 400 +210*cos(uT3);
    ufo3Y+=4;

    if (ufo3Y>=650) {
      ufo3Y=-50;
    }





    //Ufo 4
    fill(#8E8582);
    ellipse(ufo4X, ufo4Y, 95, 30);
    fill(#62ED83);
    ellipse(ufo4X, ufo4Y-10, 50, 30);


    //motion
    uT4+=.10;
    ufo4X+=3;
    ufo4Y=340+ 50*sin(uT4);

    if (ufo4X>=650) {
      ufo4X=-50;
    }


    //Ufo 5
    fill(#8E8582);
    ellipse(ufo5X, ufo5Y, 95, 30);
    fill(#62ED83);
    ellipse(ufo5X, ufo5Y-10, 50, 30);


    //motion
    uT5+=.12;
    ufo5X+=3;
    ufo5Y=340+ 150*sin(uT5);

    if (ufo5X>=650) {
      ufo5X=-50;
    }








    //Health Down
    if (dist(sX+50, sY-60, ufoX, ufoY)<=100) {
      health+=-2;
    }

    //Health Down#2
    if (dist(sX+50, sY-60, ufo2X, ufo2Y)<=100) {
      health+=-2;
    }


    //Health Down#3
    if (dist(sX+50, sY-60, ufo3X, ufo3Y)<=100) {
      health+=-2;
    }


    //Health Down#4
    if (dist(sX+50, sY-60, ufo4X, ufo4Y)<=100) {
      health+=-2;
    }


    //Health Down#5
    if (dist(sX+50, sY-60, ufo5X, ufo5Y)<=100) {
      health+=-2;
    }
  }

  //Health
  fill(255);
  text("Health", 450, 50);
  text((int)health, 550, 50);


  text("Survive", 400, 100);
  text((int)time2, 500, 100);

  //Time
  time2+=-.50;



  if (time2<=0) {

    //Next page
    fill(255);
    triangle(buttonX, buttonY, buttonX+50, buttonY, buttonX+25, buttonY-50);
    win=1;
    UFO=0;
    time2=0;
  }

  //Boundary right
  if (sX+140>=600) {
    sX=450;
  }

  //Boundary Left
  if (sX<=0) {
    sX=0;
  }


  //Boundary Up
  if (sY-140<=0) {
    sY=140;
  }

  //Boundary down
  if (sY+10>=600) {
    sY=590;
  }
}


void drawBoss() {




  //Star motion
  starY+=15;
  star2Y+=15;
  star3Y+=15;
  star4Y+=15;
  star5Y+=15;
  star6Y+=15;
  star7Y+=15;
  star8Y+=15;
  star9Y+=15;
  star10Y+=15;
  star11Y+=15;
  star12Y+=15;
  star13Y+=15;
  star14Y+=15;
  star15Y+=15;
  star16Y+=15;

  //Wrap

  if (starY>=650) {
    starY=-starY+500;
  }

  if (star2Y>=650) {
    star2Y=-star2Y+500;
  }


  if (star3Y>=650) {
    star3Y=-star3Y+500;
  }

  if (star4Y>=650) {
    star4Y=-star4Y+500;
  }

  if (star5Y>=650) {
    star5Y=-star5Y+500;
  }

  if (star6Y>=650) {
    star6Y=-star6Y+500;
  }


  if (star7Y>=650) {
    star7Y=-star7Y+500;
  }


  if (star8Y>=650) {
    star8Y=-star8Y+500;
  }


  if (star9Y>=650) {
    star9Y=-star9Y+500;
  }


  if (star10Y>=650) {
    star10Y=-star10Y+500;
  }


  if (star11Y>=650) {
    star11Y=-star11Y+500;
  }


  if (star12Y>=650) {
    star12Y=-star12Y+500;
  }

  if (star13Y>=650) {
    star13Y=-star13Y+500;
  }

  if (star14Y>=650) {
    star14Y=-star14Y+500;
  }


  if (star15Y>=650) {
    star15Y=-star15Y+500;
  }


  if (star16Y>=650) {
    star16Y=-star16Y+500;
  }





  fill(#ffff00);
  ellipse(starX, starY, 8, 8);
  ellipse(starX+200, star2Y, 8, 8);
  ellipse(starX-100, star3Y, 8, 8);
  ellipse(starX+50, star4Y, 8, 8);
  fill(#ff0000);
  ellipse(starX-200, star5Y, 8, 8);
  ellipse(starX+200, star6Y, 8, 8);
  ellipse(starX-150, star7Y, 8, 8);
  ellipse(starX+50, star8Y, 8, 8);
  fill(#00ff00);
  ellipse(starX-50, star9Y, 8, 8);
  ellipse(starX+60, star10Y, 8, 8);
  ellipse(starX-100, star11Y, 8, 8);
  ellipse(starX+80, star12Y, 8, 8);
  fill(#0000ff);
  ellipse(starX-250, star13Y, 8, 8);
  ellipse(starX-230, star14Y, 8, 8);
  ellipse(starX+240, star15Y, 8, 8);
  ellipse(starX+200, star16Y, 8, 8);


  //Model sprite
  noStroke();
  fill(#AFAAAD);
  //rect(sX, sY, 10, 10);
  rect(sX, sY-10, 10, 10);
  rect(sX, sY-20, 10, 10);
  rect(sX, sY-30, 10, 10);
  rect(sX, sY-40, 10, 10);
  rect(sX, sY-50, 10, 10);
  rect(sX+10, sY-30, 10, 10);
  rect(sX+20, sY-40, 10, 10);
  rect(sX+30, sY-50, 10, 10);
  rect(sX+40, sY-60, 10, 10);
  rect(sX+50, sY-70, 10, 10);
  rect(sX+60, sY-70, 10, 10);
  rect(sX+60, sY-80, 10, 10);
  rect(sX+60, sY-90, 10, 10);
  rect(sX+60, sY-100, 10, 10);
  rect(sX+60, sY-110, 10, 10);
  rect(sX+70, sY-110, 10, 10);
  rect(sX+70, sY-120, 10, 10);
  rect(sX+70, sY-130, 10, 10);
  rect(sX+70, sY-140, 10, 10);
  rect(sX+80, sY-110, 10, 10);
  rect(sX+80, sY-100, 10, 10);
  rect(sX+80, sY-90, 10, 10);
  rect(sX+80, sY-80, 10, 10);
  rect(sX+80, sY-70, 10, 10);
  rect(sX+90, sY-70, 10, 10);
  rect(sX+100, sY-60, 10, 10);
  rect(sX+110, sY-50, 10, 10);
  rect(sX+120, sY-40, 10, 10);
  rect(sX+130, sY-30, 10, 10);
  rect(sX+140, sY-30, 10, 10);
  rect(sX+140, sY-20, 10, 10);
  rect(sX+140, sY-10, 10, 10);
  //rect(sX+140,sY,10,10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-50, 10, 10);
  rect(sX+130, sY-10, 10, 10);
  rect(sX+120, sY-20, 10, 10);
  rect(sX+110, sY-20, 10, 10);
  rect(sX+100, sY-20, 10, 10);
  rect(sX+80, sY-20, 10, 10);
  rect(sX+80, sY-10, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY-20, 10, 10);
  rect(sX+60, sY-20, 10, 10);
  rect(sX+60, sY-10, 10, 10);
  rect(sX+40, sY-20, 10, 10);
  rect(sX+30, sY-20, 10, 10);
  rect(sX+20, sY-20, 10, 10);
  rect(sX+10, sY-10, 10, 10);
  //All Colored sqauares
  //Red
  fill(#ff0000);
  rect(sX+50, sY-20, 10, 10);
  rect(sX+50, sY-10, 10, 10);
  rect(sX+40, sY-10, 10, 10);
  rect(sX+30, sY-10, 10, 10);
  rect(sX+20, sY-10, 10, 10);
  rect(sX+90, sY-20, 10, 10);
  rect(sX+90, sY-10, 10, 10);
  rect(sX+100, sY-10, 10, 10);
  rect(sX+110, sY-10, 10, 10);
  rect(sX+120, sY-10, 10, 10);
  //Blaster Left
  rect(sX, sY-70, 10, 10);

  rect(sX, sY-60, 10, 10);
  rect(sX+140, sY-60, 10, 10);



  //Blaster Right
  rect(sX+140, sY-70, 10, 10);




  //Absolute MIDDLE
  rect(sX+70, sY-50, 10, 10);

  rect(sX+60, sY-50, 10, 10);
  rect(sX+80, sY-50, 10, 10);
  rect(sX+70, sY-60, 10, 10);
  rect(sX+60, sY-40, 10, 10);
  rect(sX+80, sY-40, 10, 10);
  fill(#2A51E8);
  rect(sX+40, sY-50, 10, 10);
  rect(sX+30, sY-40, 10, 10);
  rect(sX+100, sY-50, 10, 10);
  rect(sX+110, sY-40, 10, 10);
  //Rest of grey
  fill(#AFAAAD);
  rect(sX+10, sY-20, 10, 10);
  rect(sX+20, sY-30, 10, 10);
  rect(sX+30, sY-30, 100, 10);
  rect(sX+70, sY-40, 10, 10);
  rect(sX+40, sY-40, 20, 10);
  rect(sX+90, sY-40, 20, 10);
  rect(sX+90, sY-50, 10, 10);
  rect(sX+80, sY-60, 20, 10);
  rect(sX+50, sY-60, 20, 10);
  rect(sX+50, sY-50, 10, 10);
  rect(sX+130, sY-20, 10, 10);
  rect(sX+70, sY-100, 10, 40);


  if (drag==1) {

    sX+=.2*(mouseX-(sX+50)-25);
    sY+=.2*(mouseY-(sY-60)-25);
  }


  //Shooting left blaster

  if (l1Go ==1) {
    l1Y -=25;


    if (l1Y < -20) {
      l1X = -99;
      l1Go = 0;
    }
  }






  if (l2Go ==1) {
    l2Y -=25;


    if (l2Y < -20) {
      l2X = -99;
      l2Go = 0;
    }
  }




  //Lasers

  fill(#ff0000);
  rect(l1X, l1Y, 20, 50);




  fill(#ff0000);
  rect(l2X, l2Y, 20, 50);










  //Boundary right
  if (sX+140>=600) {
    sX=450;
  }

  //Boundary Left
  if (sX<=0) {
    sX=0;
  }


  //Boundary Up
  if (sY-140<=175) {
    sY=315;
  }

  //Boundary down
  if (sY+10>=600) {
    sY=590;
  }

  //Shelid
  if (protect==1) {
    fill(#65A9E3, 100);
    ellipse(sX+75, sY-75, 200, 200);
    text("Shield", 0, 500);
    text((int)shield, 100, 500);
  }









  //Boss
  strokeWeight(4);
  stroke(0);
  fill(bossC1, bossfade);
  ellipse(300, 120, 600, 100);
  fill(bossC2, bossfade);
  ellipse(300, 80, 400, 90);
  //Detail
  fill(bossC3, bossfade);
  ellipse(100, 120, 25, 25);
  ellipse(180, 140, 25, 25);
  ellipse(260, 150, 25, 25);
  ellipse(340, 150, 25, 25);
  ellipse(420, 140, 25, 25);
  ellipse(500, 120, 25, 25);
  //Cannon
  fill(bossC1, bossfade);
  rect(280, 170, 40, 60);
  fill(bossC4, bossfade);
  ellipse(300, 230, 40, 20);


  //Boss over
  if (bossH<=0) {
    fill(255);
    triangle(buttonX, buttonY, buttonX+50, buttonY, buttonX+25, buttonY-50);
    win=1;
    bossC1=#ff0000;
    bossC2=#ff0000;
    bossC3=#ff0000;
    bossC4=#ff0000;
    bossfade+=-1;
    if (bossfade<=0) {
      bossfade=0;
      attack=0;
    }
  }


  //Boss Health and damage

  fill(#ff0000);
  rect(100, 25, bossH, 20);
  //damage

  if (l1Y>=200) {

    bossH-=20;
  }


  if (l2Y>=200) {
    bossH-=20;
  }





  //Gataling Gun
  fill(#B71DF0);
  //Bullets 1-15
  if (attack==1) {
    ellipse(bulX, bulY, 15, 15);
    ellipse(bul2X, bul2Y, 15, 15);
    ellipse(bul3X, bul3Y, 15, 15);
    ellipse(bul4X, bul4Y, 15, 15);
    ellipse(bul5X, bul5Y, 15, 15);
    ellipse(bul6X, bul6Y, 15, 15);
    ellipse(bul7X, bul7Y, 15, 15);
    ellipse(bul8X, bul8Y, 15, 15);
    ellipse(bul9X, bul9Y, 15, 15);
    ellipse(bul10X, bul10Y, 15, 15);
    ellipse(bul11X, bul11Y, 15, 15);
    ellipse(bul12X, bul12Y, 15, 15);
    ellipse(bul13X, bul13Y, 15, 15);
    ellipse(bul14X, bul14Y, 15, 15);
    ellipse(bul15X, bul15Y, 15, 15);









    //Bullet path
    //#1
    bT+=.14;
    bulY+=.55;
    bulX= 300 + 150*cos(bT);

    if (bulY>=600) {
      bulY=230;
      bulX=(int)random(600);
    }


    //#2


    bT2+=.11;
    bul2Y+=.88;
    bul2X= 300 + 125*cos(bT2);

    if (bul2Y>=600) {
      bul2Y=230;
      bul2X=(int)random(600);
    }




    //#3


    bT3+=.15;
    bul3Y+=.31;
    bul3X= 300 + 200*cos(bT3);

    if (bul3Y>=600) {
      bul3Y=230;
      bul3X=(int)random(600);
    }



    //#4


    bT4+=.9;
    bul4Y+=.71;
    bul4X= 300 + 215*cos(bT4);

    if (bul4Y>=600) {
      bul4Y=230;
      bul4X=(int)random(600);
    }




    //#5

    bT5+=.8;
    bul5Y+=2;
    bul5X= 300 + 175*cos(bT5);

    if (bul5Y>=600) {
      bul5Y=230;
      bul5X=(int)random(600);
    }






    //#6

    bT6+=.9;
    bul6Y+=.88;
    bul6X= 300 + 180*cos(bT6);

    if (bul6Y>=600) {
      bul6Y=230;
      bul6X=(int)random(600);
    }






    //#7


    bT7+=.1556;
    bul7Y+=.77;
    bul7X= 300 + 230*cos(bT7);

    if (bul7Y>=600) {
      bul7Y=230;
      bul7X=(int)random(600);
    }



    //#8

    bT8+=.899;
    bul8Y+=.8;
    bul8X= 300 + 125*cos(bT8);

    if (bul8Y>=600) {
      bul8Y=230;
      bul8X=(int)random(600);
    }





    //#9


    bT9+=.544;
    bul9Y+=.9;
    bul9X= 300 + 250*cos(bT9);

    if (bul9Y>=600) {
      bul9Y=230;
      bul9X=(int)random(600);
    }






    //#10

      bT10+=.77;
    bul10Y+=.877;
    bul10X= 300 + 160*cos(bT10);

    if (bul10Y>=600) {
      bul10Y=230;
      bul10X=(int)random(600);
    }



    //#11




    bT11+=.55;
    bul11Y+=.4;
    bul11X= 300 + 170*cos(bT11);

    if (bul11Y>=600) {
      bul11Y=230;
      bul11X=(int)random(600);
    }


    //#12


    bT12+=.78;
    bul12Y+=.1;
    bul12X= 300 + 80*cos(bT12);

    if (bul12Y>=600) {
      bul12Y=230;
      bul12X=(int)random(600);
    }




    //#13



    bT13+=.354;
    bul13Y+=.45;
    bul13X= 300 + 90*cos(bT13);

    if (bul13Y>=600) {
      bul13Y=230;
      bul13X=(int)random(600);
    }



    //#14


    bT14+=.59;
    bul14Y+=.12;
    bul14X= 300 + 140*cos(bT14);

    if (bul14Y>=600) {
      bul14Y=230;
      bul14X=(int)random(600);
    }



    //#15
    bT15+=.98;
    bul15Y+=1;
    bul15X= 300 + 300*cos(bT15);

    if (bul15Y>=600) {
      bul15Y=230;
      bul15X=(int)random(600);
    }





    //Health

    text("Health", 0, 550);
    text((int)health2, 0, 575);

    //Info
    text("Space bar to fire ", 375, 550);




    //sheild Down #1
    if (dist(sX+50, sY+60, bulX, bulY)<=100) {
      shield+=-2;
    }



    //she Down #2
    if (dist(sX+50, sY-60, bul2X, bul2Y)<=100) {
      shield+=-2;
    }




    //she Down #3
    if (dist(sX+50, sY-60, bul3X, bul3Y)<=100) {
      shield+=-2;
    }




    //she Down #4
    if (dist(sX+50, sY-60, bul4X, bul4Y)<=100) {
      shield+=-2;
    }




    //she Down #5
    if (dist(sX+50, sY-60, bul5X, bul5Y)<=100) {
      shield+=-2;
    }


    //she Down #6
    if (dist(sX+50, sY-60, bul6X, bul6Y)<=100) {
      shield+=-2;
    }



    //she Down #7
    if (dist(sX+50, sY-60, bul7X, bul7Y)<=100) {
      shield+=-2;
    }




    //she Down #8
    if (dist(sX+50, sY-60, bul8X, bul8Y)<=100) {
      shield+=-2;
    }




    //she Down #9
    if (dist(sX+50, sY-60, bul9X, bul9Y)<=100) {
      shield+=-2;
    }




    //she Down #10
    if (dist(sX+50, sY-60, bul10X, bul10Y)<=100) {
      shield+=-2;
    }





    //she Down #11
    if (dist(sX+50, sY-60, bul11X, bul11Y)<=100) {
      shield+=-2;
    }





    //she Down #12
    if (dist(sX+50, sY-60, bul12X, bul12Y)<=100) {
      shield+=-2;
    }





    //she Down #13
    if (dist(sX+50, sY-60, bul13X, bul13Y)<=100) {
      shield+=-2;
    }






    //she Down #14
    if (dist(sX+50, sY-60, bul14X, bul14Y)<=100) {
      shield+=-2;
    }





    //she Down #15
    if (dist(sX+50, sY-60, bul15X, bul15Y)<=100) {
      shield+=-2;
    }


    if (shield<=0) {
      protect=0;
    }

    if (protect ==0) {


      //health Down #1
      if (dist(sX+50, sY+60, bulX, bulY)<=100) {
        health2+=-2;
      }



      //health Down #2
      if (dist(sX+50, sY-60, bul2X, bul2Y)<=100) {
        health2+=-2;
      }




      //health Down #3
      if (dist(sX+50, sY-60, bul3X, bul3Y)<=100) {
        health2+=-2;
      }




      //health Down #4
      if (dist(sX+50, sY-60, bul4X, bul4Y)<=100) {
        health2+=-2;
      }




      //health Down #5
      if (dist(sX+50, sY-60, bul5X, bul5Y)<=100) {
        health2+=-2;
      }


      //health Down #6
      if (dist(sX+50, sY-60, bul6X, bul6Y)<=100) {
        health2+=-2;
      }



      //health Down #7
      if (dist(sX+50, sY-60, bul7X, bul7Y)<=100) {
        health2+=-2;
      }




      //health Down #8
      if (dist(sX+50, sY-60, bul8X, bul8Y)<=100) {
        health2+=-2;
      }




      //health Down #9
      if (dist(sX+50, sY-60, bul9X, bul9Y)<=100) {
        health2+=-2;
      }




      //health Down #10
      if (dist(sX+50, sY-60, bul10X, bul10Y)<=100) {
        health2+=-2;
      }





      //health Down #11
      if (dist(sX+50, sY-60, bul11X, bul11Y)<=100) {
        health2+=-2;
      }





      //health Down #12
      if (dist(sX+50, sY-60, bul12X, bul12Y)<=100) {
        health2+=-2;
      }





      //health Down #13
      if (dist(sX+50, sY-60, bul13X, bul13Y)<=100) {
        health2+=-2;
      }






      //health Down #14
      if (dist(sX+50, sY-60, bul14X, bul14Y)<=100) {
        health2+=-2;
      }





      //health Down #15
      if (dist(sX+50, sY-60, bul15X, bul15Y)<=100) {
        health2+=-2;
      }
    }
  }
}

void drawEnding() {


  fill(#ffff00);
  ellipse(starX, starY, 8, 8);
  ellipse(starX+200, star2Y, 8, 8);
  ellipse(starX-100, star3Y, 8, 8);
  ellipse(starX+50, star4Y, 8, 8);
  fill(#ff0000);
  ellipse(starX-200, star5Y, 8, 8);
  ellipse(starX+200, star6Y, 8, 8);
  ellipse(starX-150, star7Y, 8, 8);
  ellipse(starX+50, star8Y, 8, 8);
  fill(#00ff00);
  ellipse(starX-50, star9Y, 8, 8);
  ellipse(starX+60, star10Y, 8, 8);
  ellipse(starX-100, star11Y, 8, 8);
  ellipse(starX+80, star12Y, 8, 8);
  fill(#0000ff);
  ellipse(starX-250, star13Y, 8, 8);
  ellipse(starX-230, star14Y, 8, 8);
  ellipse(starX+240, star15Y, 8, 8);
  ellipse(starX+200, star16Y, 8, 8);


  //Move
  sY-=5;
  if (sY<=-50) {
    sY=700;
  }


  //Model sprite
  noStroke();
  fill(#AFAAAD);
  //rect(sX, sY, 10, 10);
  rect(sX, sY-10, 10, 10);
  rect(sX, sY-20, 10, 10);
  rect(sX, sY-30, 10, 10);
  rect(sX, sY-40, 10, 10);
  rect(sX, sY-50, 10, 10);
  rect(sX+10, sY-30, 10, 10);
  rect(sX+20, sY-40, 10, 10);
  rect(sX+30, sY-50, 10, 10);
  rect(sX+40, sY-60, 10, 10);
  rect(sX+50, sY-70, 10, 10);
  rect(sX+60, sY-70, 10, 10);
  rect(sX+60, sY-80, 10, 10);
  rect(sX+60, sY-90, 10, 10);
  rect(sX+60, sY-100, 10, 10);
  rect(sX+60, sY-110, 10, 10);
  rect(sX+70, sY-110, 10, 10);
  rect(sX+70, sY-120, 10, 10);
  rect(sX+70, sY-130, 10, 10);
  rect(sX+70, sY-140, 10, 10);
  rect(sX+80, sY-110, 10, 10);
  rect(sX+80, sY-100, 10, 10);
  rect(sX+80, sY-90, 10, 10);
  rect(sX+80, sY-80, 10, 10);
  rect(sX+80, sY-70, 10, 10);
  rect(sX+90, sY-70, 10, 10);
  rect(sX+100, sY-60, 10, 10);
  rect(sX+110, sY-50, 10, 10);
  rect(sX+120, sY-40, 10, 10);
  rect(sX+130, sY-30, 10, 10);
  rect(sX+140, sY-30, 10, 10);
  rect(sX+140, sY-20, 10, 10);
  rect(sX+140, sY-10, 10, 10);
  //rect(sX+140,sY,10,10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-40, 10, 10);
  rect(sX+140, sY-50, 10, 10);
  rect(sX+130, sY-10, 10, 10);
  rect(sX+120, sY-20, 10, 10);
  rect(sX+110, sY-20, 10, 10);
  rect(sX+100, sY-20, 10, 10);
  rect(sX+80, sY-20, 10, 10);
  rect(sX+80, sY-10, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY, 10, 10);
  rect(sX+70, sY-10, 10, 10);
  rect(sX+70, sY-20, 10, 10);
  rect(sX+60, sY-20, 10, 10);
  rect(sX+60, sY-10, 10, 10);
  rect(sX+40, sY-20, 10, 10);
  rect(sX+30, sY-20, 10, 10);
  rect(sX+20, sY-20, 10, 10);
  rect(sX+10, sY-10, 10, 10);
  //All Colored sqauares
  //Red
  fill(#ff0000);
  rect(sX+50, sY-20, 10, 10);
  rect(sX+50, sY-10, 10, 10);
  rect(sX+40, sY-10, 10, 10);
  rect(sX+30, sY-10, 10, 10);
  rect(sX+20, sY-10, 10, 10);
  rect(sX+90, sY-20, 10, 10);
  rect(sX+90, sY-10, 10, 10);
  rect(sX+100, sY-10, 10, 10);
  rect(sX+110, sY-10, 10, 10);
  rect(sX+120, sY-10, 10, 10);
  //Blaster Left
  rect(sX, sY-70, 10, 10);

  rect(sX, sY-60, 10, 10);
  rect(sX+140, sY-60, 10, 10);



  //Blaster Right
  rect(sX+140, sY-70, 10, 10);




  //Absolute MIDDLE
  rect(sX+70, sY-50, 10, 10);

  rect(sX+60, sY-50, 10, 10);
  rect(sX+80, sY-50, 10, 10);
  rect(sX+70, sY-60, 10, 10);
  rect(sX+60, sY-40, 10, 10);
  rect(sX+80, sY-40, 10, 10);
  fill(#2A51E8);
  rect(sX+40, sY-50, 10, 10);
  rect(sX+30, sY-40, 10, 10);
  rect(sX+100, sY-50, 10, 10);
  rect(sX+110, sY-40, 10, 10);
  //Rest of grey
  fill(#AFAAAD);
  rect(sX+10, sY-20, 10, 10);
  rect(sX+20, sY-30, 10, 10);
  rect(sX+30, sY-30, 100, 10);
  rect(sX+70, sY-40, 10, 10);
  rect(sX+40, sY-40, 20, 10);
  rect(sX+90, sY-40, 20, 10);
  rect(sX+90, sY-50, 10, 10);
  rect(sX+80, sY-60, 20, 10);
  rect(sX+50, sY-60, 20, 10);
  rect(sX+50, sY-50, 10, 10);
  rect(sX+130, sY-20, 10, 10);
  rect(sX+70, sY-100, 10, 40);


  //Win
  fill(#00ff00);
  textFont(myFont, 40);
  text("You saved the galaxy!", 100, 300);
}



void drawGameOver() {
  fill(255);
  rect(0, 0, 600, 600);
  fill(#ff0000);
  text("The Galaxy Perishes.", 100, 300);
  text("GAME OVER", 100, 350);

  //Ufo 5
  fill(#8E8582);
  ellipse(ufo5X, ufo5Y, 95, 30);
  fill(#62ED83);
  ellipse(ufo5X, ufo5Y-10, 50, 30);


  //motion
  uT5+=.12;
  ufo5X+=3;
  ufo5Y=340+ 150*sin(uT5);

  if (ufo5X>=650) {
    ufo5X=-50;
  }
}