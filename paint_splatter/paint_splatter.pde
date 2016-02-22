class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  int size;

  Car (color tempC, float tempXpos, float tempYpos, float tempXspeed, int tempSize) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    size = tempSize;
  }

  void display() {
    stroke(c);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,size,size);
  }

  void drive() {
    float browny = random(-5,5);
    float brownx = random(-5,5);
    float rbrown = random(-3,4);
    float gbrown = random(-3,4);
    float bbrown = random(-3,4);
    
    xpos = xpos + brownx;
    ypos = ypos + browny;
    if (xpos > width) {
      xpos = 0;
     }
     if (ypos > height) {
       ypos = 0;
     }
     if (ypos < 0) {
       ypos = height;
     }
     if (xpos < 0) {
       xpos = width;
     }
     float tempred = red(c) + rbrown;
     float tempblue = blue(c) + bbrown;
     float tempgreen = green(c) + gbrown;
     
     if (tempred < 0) {
       tempred = 255;
     }
     if (tempred > 255) {
       tempred = 0;
     }
     if (tempblue < 0) {
       tempblue = 255;
     }
     if (tempblue > 255) {
       tempblue = 0;
     }
     if (tempgreen < 0) {
       tempgreen = 255;
     }
     if (tempgreen > 255) {
       tempgreen = 0;
     }
     
     c = color(tempred, tempgreen, tempblue);
  }
}

Car redCar;
Car blueCar;
Car greenCar;
Car violetCar;
Car orangeCar;
Car yellowCar;
Car oneCar;
Car twoCar;
Car threeCar;
Car fourCar;

void setup() {
  size(400,400);
  redCar = new Car(color(255,0,0),200,100,20,3);
  blueCar = new Car(color(0,0,255),200,10,20,3);
  greenCar = new Car(color(0,255,0),200,50,20,3);
  violetCar = new Car(color(128,0,128),200,25,20,3);
  orangeCar = new Car(color(128,128,0),200,75,20,3);
  yellowCar = new Car(color(0,128,128),200,100,20,3);
  oneCar = new Car(color(128,128,128),200,125,20,3);
  twoCar = new Car(color(128,128,128),200,150,20,3);
  threeCar = new Car(color(128,128,128),200,175,20,3);
  fourCar = new Car(color(128,128,128),200,200,20,3);
}

void avoidCollision(Car A, Car B) {
  //if ((A.xpos < (B.xpos + 20)) and (A.ypos < (B.ypos + 20))) {
    if (A.xpos < B.xpos + 20) {
    A.xpos = A.xpos + 1;
    A.ypos = A.ypos + 1;
    B.xpos = B.xpos - 1;
    B.ypos = B.ypos - 1;
  }
}

void draw() {
  //background(255);
  redCar.drive();
  blueCar.drive();
  greenCar.drive();
  violetCar.drive();
  orangeCar.drive();
  yellowCar.drive();
  oneCar.drive();
  twoCar.drive();
  threeCar.drive();
  fourCar.drive();
  avoidCollision(redCar, blueCar);
  redCar.display();
  blueCar.display();
  greenCar.display();
  violetCar.display();
  orangeCar.display();
  yellowCar.display();
  oneCar.display();
  twoCar.display();
  threeCar.display();
  fourCar.display();
}