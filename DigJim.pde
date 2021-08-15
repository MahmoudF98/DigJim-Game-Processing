//import needed libraries
import java.util.Random;
import java.util.concurrent.TimeUnit;
                    
//Some flags and initializations          
boolean dead = false;
boolean won = false;
boolean move=false;
boolean start = true;
boolean reset = true;
boolean win_screen=false;
boolean close_door=true;
PImage bg, img;
int []jimPos = {0, 0};
int[] dead_postion = {0,0};
int cont =0;
int diamondsNum = 0;


void setup() {
  bg = loadImage("jim_0.png");
  img = loadImage("start_2.png");
  img.resize(3 * 150, 300);
  size(1350, 900); 
  background(0, 0, 0);
  textSize(40);
  textAlign(CENTER);
  drawMap();
} 


void draw() {
  smooth();
  
  if (keyPressed && (key == CODED)){
    if (keyCode == RIGHT){
      if (jimPos[0] == 8 || (rock[jimPos[1]] [jimPos[0] + 1])) {}
      else{
        jimPos[0] ++;        //update Jim's place
        updatePlaces();      //update sand and diamomd places according to Jim's movement
      }
    }
    else if (keyCode == LEFT){
      if (jimPos[0] == 0 || (rock[jimPos[1]] [jimPos[0] - 1])) {}
      else{
        jimPos[0] --;        //update Jim's place
        updatePlaces();      //update sand and diamomd places according to Jim's movement
      }
    }    
    else if (keyCode == UP){
      if (jimPos[1] == 0  || (rock[jimPos[1] - 1] [jimPos[0]])) {}
      else{
        jimPos[1] --;        //update Jim's place
        updatePlaces();      //update sand and diamomd places according to Jim's movement
      }
    }
    else if (keyCode == DOWN){
      if (jimPos[1] == 5  || (rock[jimPos[1] + 1] [jimPos[0]]) || (jimPos[0]==8 && jimPos[1]==4 && close_door)) {}
      else{
        jimPos[1] ++;        //update Jim's place
        updatePlaces();      //update sand and diamomd places according to Jim's movement
      }
    }
    drawMap();
  }
  else if (start) {
    drawMap();
  }
  else  if (dead){
    drawMap();
  }
  else if (won){
    drawMap();
  }
}
