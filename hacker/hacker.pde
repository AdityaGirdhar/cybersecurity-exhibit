//PFont customFont;
//String typedText = ""; 
//int typedIndex = 0; 
//float cornerRadius = 10;
//float cornerRadius1 = 5;
//float rectWidth8 = 780; 
//float rectHeight8 = 100;  
//float rectX8 = 1020;
//float rectY8 = height / 2 - rectWidth8 + 540;
//float x = rectX8 + 20; 
//int progress = 0;

//String hackText = """

//    import random

//    def hack_network():
//        target_network = "MyTargetNetwork"
//        password_length = random.randint(8, 16)
        
//        password = ''.join(chr(random.randint(33, 126)) 
//        for _ in range(password_length))
    
//        Hacking into network...
//        Password found!
//        Access granted!
    
//    hacked_network()""";

//void setup() {
//  fullScreen();
//  customFont = createFont("CourierPrime-Regular.ttf", 32); 
//  textFont(customFont);
//}

//void draw() {
//  background(0);
  
//  rectMode(CORNER);
//  fill(221,221,221); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth1 = 820;  
//  float rectHeight1 = 620;  
//  float rectX1 = 90;
//  float rectY1 = height / 2 - 500;  
//  rect(rectX1, rectY1, rectWidth1, rectHeight1, cornerRadius); 
  
//  fill(0,0,0); 
//  textSize(30);
//  text("Terminal", 110, 90);
  
//  rectMode(CORNER);
//  fill(0,0,0); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth = 800; 
//  float rectHeight = 560;  
//  float rectX = 100;
//  float rectY = height / 2 - rectWidth + 350;  
//  rect(rectX, rectY, rectWidth, rectHeight, cornerRadius1); 
  
//  fill(54,255,110); 
//  textSize(22);
//  text(typedText, 70, 100);
  
//  rectMode(CORNER);
//  fill(0,0,0); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth2 = 820;  
//  float rectHeight2 = 360;  
//  float rectX2 = 950;
//  float rectY2 = height / 2 - 500;
//  rect(rectX2, rectY2, rectWidth2, rectHeight2, cornerRadius); 
  
//  fill(255,255,255); 
//  textSize(30);
//  text("Countdown", 970, 90);
  
//  rectMode(CORNER);
//  fill(0,0,0); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth3 = 800; 
//  float rectHeight3 = 300;  
//  float rectX3 = 960;
//  float rectY3 = height / 2 - rectWidth + 350;  
//  rect(rectX3, rectY3, rectWidth3, rectHeight3, cornerRadius1); 

//  rectMode(CORNER);
//  fill(255,255,255); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth8 = 780; 
//  float rectHeight8 = 100;  
//  float rectX8 = 970;
//  float rectY8 = height / 2 - rectWidth + 540; 
//  rect(rectX8, rectY8, rectWidth8, rectHeight8, cornerRadius1);
//  int countdown = abs(100 - (frameCount/10));
//  textSize(70);
//  fill(0);
//  text(countdown, rectX8 + rectWidth8 / 2 - 50, rectY8 + rectHeight8 / 2 + 20);
//  if (countdown <= 0) {
//    //noLoop();
//    countdown = 100;
//  }
//  textSize(40);
//  textAlign(LEFT);
//  fill(54, 255, 110);
//  text(" ¯\\_(-.-)_/¯ ", x, height / 2 - rectWidth + 500);
  
//  x = (x + 5) % (rectX8 + rectWidth8 - 70);
  
//  if (x < rectX8 + 20) {
//    x = rectX8 + 20;
//  }
//  if (x > rectX8 + 500) {
//    x = rectX8 + 20;
//  }

//  rectMode(CORNER);
//  fill(0,0,0); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth4 = 820;  
//  float rectHeight4 = 360;  
//  float rectX4 = 950;
//  float rectY4 = height / 2 - 100;
//  rect(rectX4, rectY4, rectWidth4, rectHeight4, cornerRadius); 
  
//  fill(255,255,255); 
//  textSize(30);
//  text("Download", 970, height / 2 - 68);
  
//  rectMode(CORNER);
//  fill(0,0,0); 
//  stroke(255); 
//  strokeWeight(2);  
//  float rectWidth5 = 800; 
//  float rectHeight5 = 300;  
//  float rectX5 = 960;
//  float rectY5 = height / 2 - 50;  
//  rect(rectX5, rectY5, rectWidth5, rectHeight5, cornerRadius1);
  
//  if (rectX5 - rectWidth5 / 2 + progress <= rectX5 + rectWidth5 / 2) {
//    fill(54, 255, 110);
//    rect(rectX5, rectY5, progress, rectHeight5);
//    progress += 2; 
//  } else {
//    progress = 0;
//  }
  
//  if (typedIndex < hackText.length()) {
//    if (frameCount % 2 == 0) { 
//    typedText += hackText.charAt(typedIndex);
//    typedIndex++;
//    }
//  } else {
//      typedText = "";
//      typedIndex = 0;
//   }
  
//  rectMode(CORNER);
//  fill(0);
//  float barHeight = 60;
//  rect(0, height - barHeight, width, barHeight);

//  fill(54, 255, 110);
//  textSize(25);
//  float optionWidth = width / 3;

//  float terminalX = optionWidth / 2;
//  float terminalY = height - barHeight / 2 + 7;
//  text("Terminal", terminalX, terminalY);

//  float countdownX = width / 2;
//  float countdownY = height - barHeight / 2 + 7;
//  text("Countdown", countdownX, countdownY);

//  float downloadX = width - optionWidth / 2;
//  float downloadY = height - barHeight / 2 + 7;
//  text("Download", downloadX, downloadY);
//}
