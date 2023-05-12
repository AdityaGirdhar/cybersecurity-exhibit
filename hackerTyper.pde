PFont customFont;

String hackText = """
    import time
    import random
    
    def hack_system():
        target_system = "TARGET_SYSTEM"
        security_level = random.randint(5, 10)
        hack_speed = random.uniform(0.5, 2)
        
        print("Initiating system hack...")
        time.sleep(2)
        
        print("Target system: " + target_system)
        print("Security level: " + str(security_level))
        
        for i in range(security_level):
            print(f"Cracking security level {i+1}...")
            time.sleep(hack_speed)
        
        print(f"System '{target_system}' hacked successfully!")
        print("Access granted.")
        
        print("Extracting sensitive data...")
        extraction_time = random.uniform(3, 8)
        time.sleep(extraction_time)
        
        print("Data extraction complete.")
        
        print("Covering tracks...")        
        print("Tracks covered. Exit successful.")
    
    hack_system()""";

String typedText = ""; 

int typedIndex = 0; 

void setup() {
  fullScreen();
  customFont = createFont("Hack.ttf", 32); 
  textFont(customFont);
}

void draw() {
  background(0);
  fill(54,255,110); 
  textSize(20);
  text(typedText, 50, 100);
  
  //rectMode(CORNER);
  //fill(0,0,0); 
  //stroke(255); 
  //strokeWeight(2);  

  //float rectWidth = 200;  
  //float rectHeight = 100;  
  //float rectX = 50;  
  //float rectY = height / 2 - rectHeight / 2;  

  //rect(rectX, rectY, rectWidth, rectHeight);  
}

void keyPressed() {
  if (typedIndex+10 < hackText.length()) {
    typedText += hackText.charAt(typedIndex);
    typedText += hackText.charAt(typedIndex+1);
    typedText += hackText.charAt(typedIndex+2);
    typedText += hackText.charAt(typedIndex+3);
    typedText += hackText.charAt(typedIndex+4);
    typedText += hackText.charAt(typedIndex+5);
    typedText += hackText.charAt(typedIndex+6);
    typedText += hackText.charAt(typedIndex+7);
    typedText += hackText.charAt(typedIndex+8);
    typedText += hackText.charAt(typedIndex+9);
    typedIndex += 10;
  }
}
