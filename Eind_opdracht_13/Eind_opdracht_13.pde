
int[] dx = {1, 0, -1, 0};
int[] dy = {0, 1, 0, -1};
int[] dk = { RIGHT, DOWN, LEFT, UP };
int gameState = 1;
int time = 0;
int nextTime = 0;

class Snake {
  int x, y;
  ArrayList<PVector> tail;
  int d; // Direction of movement;
  boolean isGrowing = false;
  Snake() {
    d = 0;
    tail = new ArrayList();
  }
  void draw() {
    //println(snake.d);
    time = millis();
    if (gameState == 1) {
      fill(50, 200, 50);
      stroke(150, 200, 50);
      rect(x, y, 20, 20);
      for ( int i = 0; i < tail.size(); i++) {
        rect(tail.get(i).x, tail.get(i).y, 20, 20);
      }
      for (int i =0; i < tail.size(); i++) {
        if (snake.x == tail.get(i).x && snake.y == tail.get(i).y) {
          nextTime = time + 1000;
          gameState = 0;
        }
      }
    } else {
      if (time >= nextTime) {
        gameState = 1;
        setup();
      }
    }
  }

  void update() {
    tail.add( new PVector(x, y, d) );
    if ( isGrowing ) {
      isGrowing = false;
    } else {
      tail.remove(0);
    }
    x += 20*dx[d];
    y += 20*dy[d];
    x += width;
    y += height;
    x %= width;
    y %= height;
  }

  void grow() {
    isGrowing = true;
  }
  void onKeyPressed() {
    println(tail.size());
    for ( int i = 0; i < dk.length; i++) {
      if ( key == CODED && keyCode == dk[i]) {
        if (d != ((i + 2) % 4) || tail.size() == 0) {
          d = i;
        }
      }
    }
  }
}

class Food {
  int x, y;
  Food() {
    newPosition();
  }
  void draw() {
    fill(255);
    stroke(200, 0, 200);
    ellipse(x+10, y+10, 20, 20);
  }
  boolean wasEaten(int ox, int oy) {
    if ( x == ox && y == oy ) {
      newPosition();
      return true;
    }
    return false;
  }
  void newPosition() {
    x = 20 * int(random(width/20));
    y = 20 * int(random(height/20));
  }
}

class Timer {
  int time;
  int duration;
  Timer() {
    duration = 100;
    reset();
  }
  void reset() {
    time = millis() + duration;
  }
  boolean alarm() {
    if ( millis() > time ) {
      time = millis() + duration;
      return true;
    }
    return false;
  }
}



Snake snake;
Food food;
Timer timer;

void setup() {
  size(600, 400);
  snake = new Snake();
  food = new Food();
  timer = new Timer();
  
}

void draw() {
  background(0);
  if ( timer.alarm() ) {
    snake.update();
    if ( food.wasEaten( snake.x, snake.y ) ) {
      snake.grow();
    }
  }
  food.draw();
  snake.draw();
}

void keyPressed() {
  snake.onKeyPressed();
}
