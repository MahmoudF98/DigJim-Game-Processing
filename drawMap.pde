ArrayList<Firework> fireworks = new ArrayList<Firework>();
PVector gravity = new PVector(0,0.2);


void drawMap(){ 
  if ((won && (jimPos[0] == 8 && jimPos[1] == 5))||win_screen){
    win_screen=true;
    draw_win();
  }
  else if (dead){
    draw_dead();
  }
  else if (start){
    draw_start();
  }
  
  else{
    background(0, 0, 0);
    //draw door
    if (won){
      openDoor(8, 5);
      close_door=false;
    }
    else {
      door(8, 5);
      close_door=true;
    }
    //draw Jim
    jim(jimPos[0], jimPos[1]);   
    //draw rocks
    for (int i = 0; i < 9; i++){
      for (int j = 0; j < 6; j++){
        if (rock[j][i]){
          if (j == 5 || (jimPos[0] == i && jimPos[1] == j + 1) || (sand[j + 1] [i] == true) || (diamond[j + 1] [i] == true) ||
          (rock[j + 1] [i] == true)|| (dead && dead_postion[0] == j && dead_postion[1] == i)){
            rock(i,j);
          }
          else{
            rock[j][i] = false;
            int k=j+1;
            while (k < 6 && ((sand[k ] [i] == false) && (diamond[k ] [i] == false) && (rock[k ] [i] == false))){
              if ((jimPos[0] == i && jimPos[1] == k )){
                dead = true;
                dead_postion[0] = k;
                dead_postion[1] = i;
                k++;
                break;
              }   
              k++;
            }
            rock[k-1][i] = true;
          }
        }
      }
    }
    //draw sand
    for (int i = 0; i < 9; i++){
      for (int j = 0; j < 6; j++){
        if (sand[j][i]){
          sand(i,j);
        }
      }
    }
    //draw diamond
    for (int i = 0; i < 9; i++){
      for (int j = 0; j < 6; j++){
        if (diamond[j][i]){
          if (j == 5 || (jimPos[0] == i && jimPos[1] == j + 1) || (sand[j + 1] [i] == true) ||
          (diamond[j + 1] [i] == true) || (rock[j + 1] [i] == true) || (j == 4 && i == 8)){
            diamond(i,j);
            diamondsNum ++;
          }
          else{
            diamond[j][i] = false;
            diamond[j + 1][i] = true;
          }
        }      
      }
    }
    if (diamondsNum == 0){
      won = true;
    }
    diamondsNum = 0;
    //noStroke();
  }
}



//draw start scene
void draw_start() {
  background(bg);
  image(img, 3 * 150, 4 * 150);
  if ((mouseX > 3.1 * 150 && mouseX < 5.9 * 150) && (mouseY > 4.6 * 150 && mouseY < 5.4 * 150)) {
    tint(255, 150);
    if (mousePressed && (mouseButton == LEFT)) {
      start = false;
      drawMap();
    }
  }
  else {
    tint(255, 255);
  }
}


//draw final scene for winning
void draw_win() {
  if (random(1) < 0.3) {
  fireworks.add(new Firework());
  }
  colorMode(HSB, 255, 255, 255);
  fill(0,30);
  stroke(5);
  rect(0,0,width,height);
  for (int i = fireworks.size()-1; i >= 0; i--) {
    Firework f = fireworks.get(i);
    f.run();
    if (f.done()) {
      fireworks.remove(i);
    }
  }
  colorMode(RGB);
  if (move){
    pushMatrix();
    scale(2);
    translate( - 45, 0);
    jim_handchange(2, 1);
    popMatrix();
    cont++;
    if (cont == 40) {
      cont = 0;
      move = false;
    }
  }
  else if (move==false){
    pushMatrix();
    scale(2);
    translate( - 45, 0);
    jim(2, 1);
    popMatrix();
    cont++;
    if (cont ==40){
      cont=0;
      move=true;
    }
  }
  fill (255,255,0);
  text ("YAY YOU WON",670,200);
  image(img, 3 * 150, 4 * 150);
  if ((mouseX > 3.1 * 150 && mouseX < 5.9 * 150) && (mouseY > 4.6 * 150 && mouseY < 5.4 * 150)) {
      tint(255,70);
      if (mousePressed && (mouseButton == LEFT)) {
        win_screen=false;
        resetGame();
      }
    } 
    else {
      tint(255,255);
    } 
}

//draw final scene for losing
void draw_dead(){
  background(0, 0, 0);
  if (reset) {
    delay(2000);
    reset = false;
  }
  fill(255, 0 ,0);
  text("GAME OVER YOU LOST :(", 675 , 450);
  image(img, 3 * 150, 4 * 150);
  if ((mouseX > 3.1 * 150 && mouseX < 5.9 * 150) && (mouseY > 4.6 * 150 && mouseY < 5.4 * 150)) {
    tint(255,150);
    if (mousePressed && (mouseButton == LEFT)) {
      resetGame();
    }
  }
  else {
    tint(255,255);
  }
} 

void resetGame() {
  boolean [][]_sand = {{false,true,false,false,false,false,false,true,false},
                       {true,true,false,true,true,true,true,true,true},
                       {true,false,true,true,false,false,true,false,true},  
                       {false,true,false,true,true,true,true,false,true},  
                       {true,false,true,true,false,true,true,true,false}, 
                       {false,true,true,false,false,true,false,true,false}};
                   
  boolean [][]_rock = {{false,false,true,false,true,false,true,false,false},  
                       {false,false,true,false,false,false,false,false,false},  
                       {false,false,false,false,true,false,false,true,false},
                       {true,false,false,false,false,false,false,true,false},
                       {false,true,false,false,true,false,false,false,false},
                       {false,false,false,true,false,false,true,false,false}};
                   
  boolean [][]_diamond ={{false,false,false,true,false,true,false,false,true},
                         {false,false,false,false,false,false,false,false,false}, 
                         {false,true,false,false,false,true,false,false,false}, 
                         {false,false,true,false,false,false,false,false,false}, 
                         {false,false,false,false,false,false,false,false,true},
                         {true,false,false,false,true,false,false,false,false}};
                      
  for (int i = 0; i < sand.length; i++) {
    for (int j = 0; j < sand[0].length; j++) {
      sand[i][j] = _sand[i][j];
      rock[i][j] = _rock[i][j];
      diamond[i][j] = _diamond[i][j];
    }
  }                 
                    

  dead = false;
  won = false;
  flag=true;
  move=false;
  reset = true;
  close_door=true;
  dead_postion[0] = 0;
  dead_postion[1] = 0;
  diamondsNum = 0;
  cont = 0;
  jimPos[0] = 0;
  jimPos[1] = 0;
  drawMap();
}


//update sand and diamomd places according to Jim'S Ms movement
void updatePlaces()
{
    sand[jimPos[1]] [jimPos[0]] = false;
    diamond[jimPos[1]] [jimPos[0]] = false;
}
