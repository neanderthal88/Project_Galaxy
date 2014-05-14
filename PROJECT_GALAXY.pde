//Ethan Assing
//Circular Motion project
//December 15,2012

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




void setup() {
  size(600, 600);
  frameRate(30);
  smooth();
}



void mousePressed() {

  //turn from page 1
  if (dist(mouseX, mouseY, buttonX+50, buttonY-25)<=50) {
    PageNumber+=1;
  }
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
  text("Their strange technolgoy disabled his guns !", 0, 550);
}



void drawLevel() {

 
 
  //Star motion
  //starY+=15;
  //star2Y+=15;
  //star3Y+=15;
  //star4Y+=15;
  //star5Y+=15;
  //star6Y+=15;
  //star7Y+=15;
  //star8Y+=15;
  //star9Y+=15;
  //star10Y+=15;
  //star11Y+=15;
  //star12Y+=15;
  //star13Y+=15;
  //star14Y+=15;
  //star15Y+=15;
  //star16Y+=15;
  
  //Wrap
  
  if(starY>=650){
    starY=-starY+500;
  }

  if(star2Y>=650){
    star2Y=-star2Y+500;
  }
  
  
  if(star3Y>=650){
    star3Y=-star3Y+500;
  }
  
  if(star4Y>=650){
    star4Y=-star4Y+500;
  }
  
  if(star5Y>=650){
    star5Y=-star5Y+500;
  }
  
  if(star6Y>=650){
    star6Y=-star6Y+500;
  }
  
  
  if(star7Y>=650){
    star7Y=-star7Y+500;
  }
  
  
  if(star8Y>=650){
    star8Y=-star8Y+500;
  }
  
  
  if(star9Y>=650){
    star9Y=-star9Y+500;
  }
  
  
  if(star10Y>=650){
    star10Y=-star10Y+500;
  }
  
  
  if(star11Y>=650){
    star11Y=-star11Y+500;
  }
  
  
  if(star12Y>=650){
    star12Y=-star12Y+500;
  }
  
  if(star13Y>=650){
    star13Y=-star13Y+500;
  }
  
  if(star14Y>=650){
    star14Y=-star14Y+500;
  }
  
  
  if(star15Y>=650){
    star15Y=-star15Y+500;
  }
  
  
  if(star16Y>=650){
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
  
  
  //Player ship helper box
  fill(255);
  rect(300,400,150,150);
  
  
  
}





