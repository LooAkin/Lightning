int startX = 7;
int startY = 150;
int endX = 7;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(3);
  background(30, 75, 255);
  frameRate(10);
}

void draw()
{
//draws backgeround  
stroke(241,194,125);
  fill(241,194,125);
  beginShape();
  curveVertex(65, 164.5);
  curveVertex(65, 164.5);
  curveVertex(35, 200);
  curveVertex(65, 235.5);
  curveVertex(65,300);
  curveVertex(85,300);
  curveVertex(85, 235.5);
  curveVertex(85, 235.5);
  endShape();

  stroke(255,219,172);
  fill(255,219,172);
  ellipse(75, 200, 50, 75);
  stroke(0,0,0);
  beginShape();
  vertex(75, 200);
  vertex(75, 200);
  vertex(85, 215);
  vertex(75, 215);
  vertex(75, 215);
  endShape();

  fill(0,0,0);
  ellipse(60, 200, 5, 5);
  ellipse(90, 200, 5, 5);
  rect(70, 225, 10, 2); 
  rect(5, 5, 1, 275);
  rect(5, 275, 275, 5);
  ellipse(75, 300, 100, 100);

  fill(255,255,255);
  stroke(255,255,255);
  beginShape();
  vertex(85, 245);
  vertex(85, 245);
  vertex(70, 300);
  vertex(65, 245);
  vertex(75, 248);
  vertex(75, 248);
  endShape();

  fill(255,255,255);
  stroke(255,255,255);
  beginShape();
  vertex(85, 245);
  vertex(85, 245);
  vertex(70, 300);
  vertex(65, 245);
  vertex(75, 248);
  vertex(75, 248);
  endShape();

  fill(30, 30, 255);
  stroke(50, 50, 255);
  beginShape();
  vertex(70, 250);
  vertex(70, 250);
  vertex(73, 245);
  vertex(77, 245);
  vertex(80, 250);
  vertex(75, 255);
  vertex(73, 260);
  vertex(70, 300);
  vertex(77, 260);
  vertex(75, 255);
  vertex(75, 255);
  endShape();

  fill(255, 200, 0);
  stroke(255, 200, 0);
  beginShape();
  vertex(150, 300);
  vertex(150, 300);
  vertex(190, 265);
  vertex(210, 290);
  vertex(210, 225);
  vertex(150, 225);
  vertex(170, 250);
  vertex(130, 300);
  vertex(130, 300);  
  endShape();

//makes the lightning
  int colorS =(int)(Math.random() * 255);
  if (colorS < 52){
    stroke((colorS), (colorS),(colorS));
  } else {
    stroke((colorS), (colorS)-52, (colorS)-52);
  }
  while( endX < 300 ){
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)((Math.random()*18)-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  stroke(0,0,0);
  fill(30, 75, 255, 30);
  rect(0,0,300,300);
}
//resets when the mouse is pressed
void mousePressed()
{
  startX = 7;
  startY = 150;
  endX = 7;
  endY = 150;
}
