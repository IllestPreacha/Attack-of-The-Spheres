int count = 0;
String Commentary [] = {
  "Thank you for tryin out this demo", "You are still using it, thanks", "Random Feed 3", "This could get boring after a while", "Blank Statements Dont Count"
};

void coordinates()
{
  pushMatrix();
  translate(mouseX, mouseY, 0);
  text("X axis : " + mouseX + " , " + " Y axis : " +  mouseY, 0, 150);
  popMatrix();
}

void timer()
{
  float time = millis();//store the current time
  time = time/1000;
  textSize(width/72);
  text(time + " seconds has elapsed", 0, 100);

  if (time > 60)
  {
    text(Commentary[1], 0, 150);
  }
}

void ellipses()
{
  pushMatrix();
  noStroke();
  translate(mouseX, mouseY, 0);
  sphere(50);
  fill(random(255), random(255), random(255));  
  popMatrix();
}

void setup() {
  size(displayWidth, displayHeight, P3D);
  background(random (255), random(255), random (255));
  textSize(width/36);
  text(Commentary[0], displayWidth/2 - displayWidth/4, displayHeight/2);
  smooth();
}

// by utilzing the height and width function alongside the dividing principles of the day

void draw() {
  lights();
  int  eight = (width / 8) ;
  int sixth = height / 6 ;
  float RandomX = random(width);
  float RandomY = random(height);

  if ((RandomX > 0 ) && (RandomX < (2 * eight)  && (RandomY >0 ) && (RandomY < (2 * sixth))))
  {
    fill(#3AAFFA);
  } else if ((RandomX > (2 * eight)  ) && (RandomX < (4 * eight)  && (RandomY >0 ) && (RandomY < (3 * sixth))))
  {
    fill(#FFC164);
  } else if ((RandomX > (4 * eight) ) && (RandomX < (6 * eight)  && (RandomY >(3 * sixth) ) && (RandomY < (5 * sixth))))
  {
    fill(#12AB6B);
  } else if ((RandomX > (6 * eight) ) && (RandomX < (width)  && (RandomY > (5 * sixth) ) && (RandomY < (height))))
  {
    fill(#00E8FF);
  } else if ((RandomX < (2 * eight)) && (RandomY > (2 * sixth)))
  {
    fill(#FAF362);
  } else if ((RandomX <(4 * sixth)) && (RandomY < (4 * sixth)))
  {
    fill(#9951ED);
  } else if ((RandomX < (6 * eight) && (RandomY < (sixth) )))
  {
    fill(#BF1DCB);
  } else if ((RandomX >(7 * eight)) && (RandomY < sixth))
  {
    fill(#1102EA);
  } else {
    fill(255);
  }
  ellipses();
}
void mousePressed ()
{
  background (random (255), random (255), random (255));
  fill(0, 0, 0);
  textSize(width/72);
  count = count + 1;
  text(count + " clicks", 0, 50);
  timer();
  coordinates();
}
