// Elevator buttons
int firstFloorButtonX, firstFloorButtonY;  // Position of button 1
int secondFloorButtonX, secondFloorButtonY;  // Position of button 2
int thirdFloorButtonX, thirdFloorButtonY;  // Position of button 3
int fourthFloorButtonX, fourthFloorButtonY;  // Position of button 4
int closeDoorButtonX, closeDoorButtonY;  // Position of button 5
int openDoorButtonX, openDoorButtonY;  // Position of button 6
int alarmButtonX, alarmButtonY;  // Position of button 7
int helpButtonX, helpButtonY;  // Position of button 8
int sizeOfCircleButtons = 65;       // Diameter of buttons
int savedTime;
int totalTime = 4000;
color floor1Color, floor2Color, floor3Color, floor4Color, closeDoorColor, openDoorColor, alarmColor, helpColor, mainColor;
color highlightedButtonColor;
color regularButtonColor;
color elevatorButtons = color(000, 000, 000);     // Color of floor buttons
color redButton = color(250, 000, 000);      // Color of Alarm button
color yellowButton = color(250, 250, 000);   // Color of Help button
boolean pressedButton1 = false;
boolean pressedButton2 = false;
boolean pressedButton3 = false;
boolean pressedButton4 = false;
boolean pressedButton5 = false;
boolean pressedButton6 = false;
boolean pressedButton7 = false;
boolean pressedButton8 = false;
PImage Number_1;
PImage Number_2;
PImage Number_3;
PImage Number_4;
PImage Background;

void setup() {
  size(800, 600);
  savedTime = millis();
  Number_1 = loadImage("Braille_number_1.png");
  Number_2 = loadImage("Braille_number_2.png");
  Number_3 = loadImage("Braille_number_3.png");
  Number_4 = loadImage("Braille_number_4.png");
  Background = loadImage("Metal_elevator_background.png");

  floor1Color = elevatorButtons;        // 1st floor button, #1 is blue
  floor2Color = elevatorButtons;        // 2nd floor button, #2 is blue
  floor3Color = elevatorButtons;        // 3rd floor button, #3 is blue
  floor4Color = elevatorButtons;        // 4th floor button, #4 is blue
  closeDoorColor = elevatorButtons;        // Open door button, #5 is blue
  openDoorColor = elevatorButtons;        // Close door button, #6 is blue
  alarmColor = redButton;         // Alarm button, #7 is red
  helpColor = yellowButton;      // Help button, #8 is yellow

  highlightedButtonColor = color(000,000,250);
  mainColor = color(102);
  regularButtonColor = mainColor;
  firstFloorButtonX = width/2+sizeOfCircleButtons/2;
  firstFloorButtonY = height-550;
  secondFloorButtonX = width/2+sizeOfCircleButtons/2;
  secondFloorButtonY = height-450;
  thirdFloorButtonX = width/2+sizeOfCircleButtons/2;
  thirdFloorButtonY = height-350;
  fourthFloorButtonX = width/2+sizeOfCircleButtons/2;
  fourthFloorButtonY = height-250;
  closeDoorButtonX = width/2+sizeOfCircleButtons/2-100;
  closeDoorButtonY = height-150;
  openDoorButtonX = width/2+sizeOfCircleButtons/2-100;
  openDoorButtonY = height-50;
  alarmButtonX = width/2+sizeOfCircleButtons/2+100;
  alarmButtonY = height-150;
  helpButtonX = width/2+sizeOfCircleButtons/2+100;
  helpButtonY = height-50;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(Background);
  
  // Calculate how much time has passed
  int passedTime = millis() - savedTime;
  // Has four seconds passed?
  if (passedTime > totalTime) {
    println("4 seconds have passed!");
    savedTime = millis(); // Save the current time to restart the timer!
  }
  
  if(pressedButton1) {
    fill(highlightedButtonColor);
  } else {
    fill(floor1Color);
  }
  stroke(0);
  ellipse(firstFloorButtonX, firstFloorButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton2) {
    fill(highlightedButtonColor);
  } else {
    fill(floor2Color);
  }
  stroke(0);
  ellipse(secondFloorButtonX, secondFloorButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton3) {
    fill(highlightedButtonColor);
  } else {
    fill(floor3Color);
  }
  stroke(0);
  ellipse(thirdFloorButtonX, thirdFloorButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton4) {
    fill(highlightedButtonColor);
  } else {
    fill(floor4Color);
  }
  stroke(0);
  ellipse(fourthFloorButtonX, fourthFloorButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton5) {
    fill(highlightedButtonColor);
  } else {
    fill(closeDoorColor);
  }
  stroke(0);
  ellipse(closeDoorButtonX, closeDoorButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton6) {
    fill(highlightedButtonColor);
  } else {
    fill(openDoorColor);
  }
  stroke(0);
  ellipse(openDoorButtonX, openDoorButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton7) {
    fill(highlightedButtonColor);
  } else {
    fill(alarmColor);
  }
  stroke(0);
  ellipse(alarmButtonX, alarmButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  if(pressedButton8) {
    fill(highlightedButtonColor);
  } else {
    fill(helpColor);
  }
  stroke(0);
  ellipse(helpButtonX, helpButtonY, sizeOfCircleButtons, sizeOfCircleButtons);
  
  
  fill(255,255,255);
  textSize(25);
  text("4",425,60);
  text("3",425,160);
  text("2",425,260);
  text("1",425,360);
  text(">|<",314,560);
  text("<|>",314,460);
  textSize(20);
  text("Help", 512,455);
  fill(0,0,0);
  text("Alarm",510,555);
  
  textSize(21);
  image(Number_1, 445, 285);
  image(Number_2, 445, 185);
  image(Number_3, 445, 85);
  image(Number_4, 445, -15);
  
}

void update(int x, int y) {
  if(pressedButton1(firstFloorButtonX, firstFloorButtonY, sizeOfCircleButtons)) {
    pressedButton1 = true;
    pressedButton2 = false;
    pressedButton3 = false;
    pressedButton4 = false;
    pressedButton5 = false;
    pressedButton6 = false;
    pressedButton7 = false;
    pressedButton8 = false;
  } if(pressedButton2(secondFloorButtonX, secondFloorButtonY, sizeOfCircleButtons)) {
    pressedButton2 = true;
    pressedButton1 = false;
    pressedButton3 = false;
    pressedButton4 = false;
    pressedButton5 = false;
    pressedButton6 = false;
    pressedButton7 = false;
    pressedButton8 = false;
  } if(pressedButton3(thirdFloorButtonX, thirdFloorButtonY, sizeOfCircleButtons)) {
    pressedButton3 = true;
    pressedButton1 = false;
    pressedButton2 = false;
    pressedButton4 = false;
    pressedButton5 = false;
    pressedButton6 = false;
    pressedButton7 = false;
    pressedButton8 = false;
  } if(pressedButton4(fourthFloorButtonX, fourthFloorButtonY, sizeOfCircleButtons)) {
    pressedButton4 = true;
    pressedButton1 = false;
    pressedButton2 = false;
    pressedButton3 = false;
    pressedButton5 = false;
    pressedButton6 = false;
    pressedButton7 = false;
    pressedButton8 = false;
  } if(pressedButton5(closeDoorButtonX, closeDoorButtonY, sizeOfCircleButtons)) {
    pressedButton5 = true;
    pressedButton1 = false;
    pressedButton2 = false;
    pressedButton3 = false;
    pressedButton4 = false;
    pressedButton6 = false;
    pressedButton7 = false;
    pressedButton8 = false;
  } if(pressedButton6(openDoorButtonX, openDoorButtonY, sizeOfCircleButtons)) {
    pressedButton6 = true;
    pressedButton1 = false;
    pressedButton2 = false;
    pressedButton3 = false;
    pressedButton4 = false;
    pressedButton5 = false;
    pressedButton7 = false;
    pressedButton8 = false;
  } if(pressedButton7(alarmButtonX, alarmButtonY, sizeOfCircleButtons)) {
    pressedButton7 = true;
    pressedButton1 = false;
    pressedButton2 = false;
    pressedButton3 = false;
    pressedButton4 = false;
    pressedButton5 = false;
    pressedButton6 = false;
    pressedButton8 = false;
  } if(pressedButton8(helpButtonX, helpButtonY, sizeOfCircleButtons)) {
    pressedButton8 = true;
    pressedButton1 = false;
    pressedButton2 = false;
    pressedButton3 = false;
    pressedButton4 = false;
    pressedButton5 = false;
    pressedButton6 = false;
    pressedButton7 = false;
  }
}

void mousePressed() {
  if(pressedButton1) {
    regularButtonColor = floor1Color;
  } if(pressedButton2) {
    regularButtonColor = floor2Color;
  } if(pressedButton3) {
    regularButtonColor = floor3Color;
  } if(pressedButton4) {
    regularButtonColor = floor4Color;
  } if(pressedButton5) {
    regularButtonColor = closeDoorColor;
  } if(pressedButton6) {
    regularButtonColor = openDoorColor;
  } if(pressedButton7) {
    regularButtonColor = alarmColor;
  } if(pressedButton1) {
    regularButtonColor = helpColor;
  }
}

boolean pressedButton1(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton2(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton4(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton5(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton6(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton7(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean pressedButton8(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
