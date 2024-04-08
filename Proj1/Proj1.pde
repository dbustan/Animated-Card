PImage img;
int XtvBorder;
int YtvBorder;

void setup(){
  size(800,800);
  background(255);
  frameRate(100);
  XtvBorder = 280;
  YtvBorder = 261;
  img = loadImage("Trashopen.png");
  strokeWeight(4);
  //First line going down
  line(250, 230, 250, 530);
  //line going right 
  line(250, 500, 530, 500);
  
  //line going up
  line(530, 530, 530, 230);
  
  //line going to original line
  line(530, 230, 250, 230);
  //3D time
  //right 3D
  line(530, 230, 570, 180);
  //left 3D
  line(250, 230, 310, 180);
  line(310, 180, 570, 180);
  line(570, 180, 570, 500);
  line(570, 450, 530, 500);
  
  //tv border
  line(280, 480, 500, 480);
  line(280, 480, 500, 480);
  line(500, 480, 500, 260);
  line(500, 260, 280, 260);
  line(280 , 260, 280, 480);
  
  
  //Antenna
  line(399, 198, 335, 100);
  line(399, 198, 470, 100);

}

void draw(){
  for (int i = XtvBorder; i <= 216 + XtvBorder; i += 10){
    for(int j = YtvBorder; j <= 216 + YtvBorder; j += 10){
      noStroke();
      fill(color(random(150)));
      //println(i);
      rect(i, j, 10, 10);
      println(j);
    }
  }
} 

void mousePressed(){
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
}
