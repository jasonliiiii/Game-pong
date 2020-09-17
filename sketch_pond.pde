PFont myFont;
float x = 400;
float y = 400;
float speedX = random(1,2);
float speedY = random(1,2);
float directionX = 1;
float directionY = 1;
float rect1x = 350;
float rect2x = 350;
int score1 = 0;
int score2 = 0;
int status = 0;
void setup(){
  size(800,800);
  myFont = createFont("Anonumous-48", 20);
  textFont(myFont);
}

void draw(){  
  background(206,10,50);
  fill(249,250,8);
  rect(rect1x,30,100,10);
  fill(8, 250, 191);
  rect(rect2x,770,100,10);
  stroke(3);
  text(score1, 10, 350);
  text(score2, 10, 450);
  if (status == 0){
  fill(33,157,25);
  ellipse(x, y, 60, 60);
  x = (x + speedX * directionX);
  y = (y + speedY * directionY);
  if (x <= 30){
  directionX = 1;
  }
  else if(x >= 770){
  directionX = -1;
  }
  if (y <= 25){
   x = 400;
   y = 400;
   speedX = random(2,3);
   speedY = random(2,3);
   score2 = score2 + 1;
  }
  if (y >=775){
   x = 400;
   y = 400;
   speedX = random(2,3);
   speedY = random(2,3);
   score1 = score1 +1;
  }
  else if (x >= rect2x && y >=770 && x <= rect2x+100){
    directionY = -1;
  }
  else if (x >= rect1x && y <=30 && x <= rect1x+100){
    directionY = 1;
  }
  }
  if (score1 >=5){
    textFont(myFont,32);
    textAlign(CENTER);
    fill(249,250,8);
    text("Player Yellow Win !", width/2, height/2);
    status = 1;
  }
  if (score2 >=5){
    textFont(myFont,32);
    textAlign(CENTER);
    fill(8, 250, 191);
    text("Player Blue Win !", width/2, height/2);
    status = 1;
  }
}

void keyPressed(){
  if(key == 'q' ){
    rect1x = rect1x - 20;}
  else if(key == 'e'){
    rect1x = rect1x + 20;}
  else if(key == 'i'){
    rect2x = rect2x - 20;}
  else if(key == 'p'){
    rect2x = rect2x + 20;}  
}
