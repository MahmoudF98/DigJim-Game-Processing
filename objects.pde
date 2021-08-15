//Jim, diamond, rock, sand, door

void jim(int cellX, int cellY){
  int shiftX = cellX *150;
  int shiftY = cellY *150;
  
  //Body
  fill(255,190, 0);  
  stroke(255, 190, 0);
  strokeWeight(50);
  strokeJoin(ROUND);
  triangle(35+shiftX, 127+shiftY, 115+shiftX, 127+shiftY, 75+shiftX, 50+shiftY);
  
  //Hands
  strokeWeight(15);
  triangle(32+shiftX, 90+shiftY, 45+shiftX, 69+shiftY, 12+shiftX, 86+shiftY);
  triangle(115+shiftX, 87+shiftY, 105+shiftX, 67+shiftY, 135+shiftX, 50+shiftY);

  //Eyes
  stroke(255);
  strokeWeight(1);
  fill(255);
  arc(87+shiftX, 77+shiftY, 20, 35, 0, TWO_PI);
  translate(-24,0);
  arc(87+shiftX, 77+shiftY, 20, 35, 0, TWO_PI);
  translate(24,0);
  stroke(0);
  fill(0);
  arc(87+shiftX, 77+shiftY, 10, 15, 0, TWO_PI);
  translate(-24,0);
  arc(87+shiftX, 77+shiftY, 10, 15, 0, TWO_PI);  
  translate(24,0);

  //Eyebrows
  noFill();
  strokeWeight(1.5);
  curve(60+shiftX, 80+shiftY, 82+shiftX, 54+shiftY, 95+shiftX, 54+shiftY, 90+shiftX, 80+shiftY);
  curve(60+shiftX, 80+shiftY, 57+shiftX, 54+shiftY, 70+shiftX, 54+shiftY, 90+shiftX, 80+shiftY);
  
  //Mouth
  curve(120+shiftX, 50+shiftY, 59+shiftX, 107+shiftY, 82+shiftX, 107+shiftY, 120+shiftX, 50+shiftY);

  //Hair
  stroke(255, 190, 0);
  curve( 120+shiftX, 100+shiftY, 85+shiftX, 30+shiftY, 90+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 150+shiftX, 100+shiftY, 83+shiftX, 30+shiftY, 87+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 150+shiftX, 100+shiftY, 80+shiftX, 30+shiftY, 82+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 120+shiftX, 100+shiftY, 75+shiftX, 30+shiftY, 77+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 90+shiftX, 100+shiftY, 70+shiftX, 30+shiftY, 72+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 90+shiftX, 100+shiftY, 66+shiftX, 30+shiftY, 68+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
}


void jim_handchange(int cellX, int cellY){
  int shiftX = cellX *150;
  int shiftY = cellY *150;
  
  //Body
  fill(255,190, 0);  
  stroke(255, 190, 0);
  strokeWeight(50);
  strokeJoin(ROUND);
  triangle(35+shiftX, 127+shiftY, 115+shiftX, 127+shiftY, 75+shiftX, 50+shiftY);
  
  //Hands
  strokeWeight(15);
  triangle(32+shiftX, 90+shiftY, 45+shiftX, 69+shiftY, 12+shiftX, 50+shiftY);
  triangle(115+shiftX, 87+shiftY, 105+shiftX, 67+shiftY, 140+shiftX, 80+shiftY);

  //Eyes
  stroke(255);
  strokeWeight(1);
  fill(255);
  arc(87+shiftX, 77+shiftY, 20, 35, 0, TWO_PI);
  arc(63+shiftX, 77+shiftY, 20, 35, 0, TWO_PI);
  stroke(0);
  fill(0);
  arc(87+shiftX, 77+shiftY, 10, 15, 0, TWO_PI);
  arc(63+shiftX, 77+shiftY, 10, 15, 0, TWO_PI);  
  
  //Eyebrows
  noFill();
  strokeWeight(1.5);
  curve(60+shiftX, 80+shiftY, 82+shiftX, 54+shiftY, 95+shiftX, 54+shiftY, 90+shiftX, 80+shiftY);
  curve(60+shiftX, 80+shiftY, 57+shiftX, 54+shiftY, 70+shiftX, 54+shiftY, 90+shiftX, 80+shiftY);
  
  //Mouth
  curve(120+shiftX, 50+shiftY, 59+shiftX, 107+shiftY, 82+shiftX, 107+shiftY, 120+shiftX, 50+shiftY);

  //Hair
  stroke(255, 190, 0);
  curve( 120+shiftX, 100+shiftY, 85+shiftX, 30+shiftY, 90+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 150+shiftX, 100+shiftY, 83+shiftX, 30+shiftY, 87+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 150+shiftX, 100+shiftY, 80+shiftX, 30+shiftY, 82+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 120+shiftX, 100+shiftY, 75+shiftX, 30+shiftY, 77+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 90+shiftX, 100+shiftY, 70+shiftX, 30+shiftY, 72+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
  curve( 90+shiftX, 100+shiftY, 66+shiftX, 30+shiftY, 68+shiftX, 10+shiftY, 50+shiftX, 0+shiftY);
}


void rock(int cellX, int cellY)
{
  int rectX = cellX * 150;
  int rectY = cellY * 150;
  int y = rectY + 100;
  int x = rectX + 55;
  int d = 90;

  fill(118, 118, 115);
  stroke(118, 118, 115);
  ellipse(x, y, d, d); // Left
  ellipse(x + 20, y - 45, d + 5, d + 5); // Middle
  ellipse(x + 40, y + 5, d, d); // Right
  
  int pointX;
  int pointY;
  Random rand = new Random();   //instance of random class
  int upperboundX =  150;
  int upperboundY =  150;
  stroke(0, 0, 0);
  
  for (int i = 0; i < 500; i ++)
  {
    pointX = rand.nextInt(upperboundX  + 1); 
    pointY = rand.nextInt(upperboundY  + 1);
    point(pointX+rectX, pointY+rectY);
  }
}

void sand(int cellX, int cellY)
{
  stroke(0, 0, 0);
  fill(0, 0, 0);
  int rectX = cellX * 150;
  int rectY = cellY * 150;
  rect(rectX,rectY,150,150);
  int pointX;
  int pointY;
  Random rand = new Random(); //instance of random class
  int upperboundX = 150;
  int upperboundY = 150;
  stroke(105, 65, 45);
  
  for (int i = 0; i < 1000; i ++)
  {
    pointX = rand.nextInt(upperboundX + 1) + rectX; 
    pointY = rand.nextInt(upperboundY + 1) + rectY;
    point(pointX, pointY);
  }
}


void diamond(int cell_x, int cell_y) {
  int[] upper_left = {
    cell_x * 150,
    cell_y * 150
  };
  fill(217, 235, 244);
  stroke(154, 197, 255);
  strokeWeight(2);
  strokeJoin(ROUND); // Round the stroke corners
  quad(upper_left[0] + 2, upper_left[1] + 60, upper_left[0] + 147, upper_left[1] + 60, 120 + upper_left[0], 5 + upper_left[1], 30 + upper_left[0], 5 + upper_left[1]);
  triangle(2 + upper_left[0], 60 + upper_left[1], 147 + upper_left[0], 60 + upper_left[1], 75 + upper_left[0], 147 + upper_left[1]);
  triangle(37 + upper_left[0], 60 + upper_left[1], 113 + upper_left[0], 60 + upper_left[1], 75 + upper_left[0], 147 + upper_left[1]);
  triangle(37 + upper_left[0], 60 + upper_left[1], 113 + upper_left[0], 60 + upper_left[1], 75 + upper_left[0], 5 + upper_left[1]);
  line(135 + upper_left[0], 60 + upper_left[1], 88 + upper_left[0], 120 + upper_left[1]);
  stroke(154, 197, 255);
  strokeWeight(3);
  line(15 + upper_left[0], 60 + upper_left[1], 63 + upper_left[0], 120 + upper_left[1]);
  line(75 + upper_left[0], 60 + upper_left[1], 88 + upper_left[0], 120 + upper_left[1]);
  line(75 + upper_left[0], 60 + upper_left[1], 63 + upper_left[0], 120 + upper_left[1]);
  line(135 + upper_left[0], 60 + upper_left[1], 86 + upper_left[0], 23 + upper_left[1]);
  line(75 + upper_left[0], 60 + upper_left[1], 86 + upper_left[0], 23 + upper_left[1]);
  line(15 + upper_left[0], 60 + upper_left[1], 65 + upper_left[0], 23 + upper_left[1]);
  line(75 + upper_left[0], 60 + upper_left[1], 65 + upper_left[0], 23 + upper_left[1]);
  line(45 + upper_left[0], 8 + upper_left[1], 65 + upper_left[0], 23 + upper_left[1]);
  line(45 + upper_left[0], 8 + upper_left[1], 23 + upper_left[0], 23 + upper_left[1]);
  line(105 + upper_left[0], 8 + upper_left[1], 86 + upper_left[0], 23 + upper_left[1]);
  line(105 + upper_left[0], 8 + upper_left[1], 128 + upper_left[0], 23 + upper_left[1]);
  line(10 + upper_left[0], 60 + upper_left[1], 23 + upper_left[0], 23 + upper_left[1]);
  line(10 + upper_left[0], 60 + upper_left[1], 47 + upper_left[0], 113 + upper_left[1]);
  line(140 + upper_left[0], 60 + upper_left[1], 128 + upper_left[0], 23 + upper_left[1]);
  line(140 + upper_left[0], 60 + upper_left[1], 103 + upper_left[0], 113 + upper_left[1]);
}




void door(int cellX, int cellY){
  int shiftX = cellX *150;
  int shiftY = cellY *150;

  //The filled circle
  fill(127, 100, 73); 
  stroke(0);         
  strokeWeight(1);
  arc(74+shiftX, 50+shiftY, 130, 80, PI, TWO_PI);
  
  //The border circle
  stroke(105, 65, 45);
  strokeWeight(10);
  noFill();
  arc(74+shiftX, 50+shiftY, 140, 90, PI, TWO_PI);
  
  //The rectangle
  strokeWeight(1);
  fill(127, 100, 73); //fill color
  stroke(0);
  rect(9+shiftX, 50+shiftY, 130, 100);
  
  //The rectangle left and right borders
  fill(105, 65, 45);
  stroke(105, 65, 45);
  strokeWeight(10);
  line(4+shiftX, 55+shiftY, 4+shiftX, 149+shiftY);
  line(144+shiftX, 55+shiftY, 144+shiftX, 149+shiftY);

  //The thick lines (door details)
  strokeWeight(2);
  for (int i=2; i<14; i++) {
    line((10*i)+shiftX, 51+shiftY, (10*i)+shiftX, 149+shiftY);
  }
        
  //The black lines (door lock)
  stroke(0);
  strokeWeight(13);
  line(15+shiftX, 85+shiftY, 132+shiftX, 85+shiftY);
  line(15+shiftX, 115+shiftY, 132+shiftX, 115+shiftY);

  stroke(100);
  strokeWeight(5);
  for (int i=1; i<5; i++) {
    point((30*i)+shiftX, 85+shiftY); 
    point((30*i)+shiftX, 115+shiftY);
  }

}


void openDoor(int cellX, int cellY){
  int shiftX = cellX *150;
  int shiftY = cellY *150;

  //The filled circle
  fill(127, 100, 73); 
  stroke(0);         
  strokeWeight(1);
  arc(74+shiftX, 50+shiftY, 130, 80, PI, TWO_PI);
  
  //The border circle
  stroke(105, 65, 45);
  strokeWeight(10);
  noFill();
  arc(74+shiftX, 50+shiftY, 140, 90, PI, TWO_PI);
  
  //The rectangle left and right borders
  fill(105, 65, 45);
  stroke(105, 65, 45);
  strokeWeight(10);
  line(4+shiftX, 55+shiftY, 4+shiftX, 149+shiftY);
  line(144+shiftX, 55+shiftY, 144+shiftX, 149+shiftY);
  

}
