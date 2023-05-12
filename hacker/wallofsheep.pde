PImage mask; 
PImage sheep;
PImage sheep2;
PImage resizedImg; 
PImage resizedImg2; 
PImage resizedImg3; 
PFont customFont;
ArrayList<Sheep> sheepList; 

void setup() {
  fullScreen();
  sheepList = new ArrayList<Sheep>();
  customFont = createFont("CourierPrime-Regular.ttf", 32); 
  textFont(customFont);
  
  mask = loadImage("mask.jpg");
  resizedImg = mask.copy(); 
  resizedImg.resize(250, 200);
  
  sheep = loadImage("sheep4.png");
  resizedImg2 = sheep.copy(); 
  resizedImg2.resize(250, 250);
  
  sheep2 = loadImage("sheep4.png");
  resizedImg3 = sheep2.copy(); 
  resizedImg3.resize(250, 250);
  addSheep("Dummy", "password123", "example.com", "Web Application", "00:11:22:33:44:55");
  addSheep("aadya", "aad*****", "192.168.0.1", "Android 12.3.4", "3e:f:7e:4e:7f:3a");
  addSheep("aditya123", "hack*****", "153.193.0.1", "iOS 15.4.6", "5e:6f:7e:4f:9j:3a");
  
}

void draw() {
  background(0);
  image(resizedImg2, 250, 0);
  image(resizedImg3, 1400, 0);
  
  textAlign(CENTER, CENTER);
  textSize(90);
  fill(54,255,110); 
  text("Wall of Sheep", width/2, 100);
  
  String[] columnNames = {"Login", "Password", "Domain/IP", "Application", "MAC Address"};

  int columnWidth = width / columnNames.length;
  textSize(40);
  for (int i = 0; i < columnNames.length; i++) {
    text(columnNames[i], columnWidth * i + columnWidth/2, 270);
  }
  
  textSize(30);
  fill(255);
  for (int i = 0; i < sheepList.size(); i++) {
    Sheep sheep = sheepList.get(i);
    text(sheep.login, columnWidth * 0 + columnWidth/2, 320 + i * 40);
    text(sheep.password, columnWidth * 1 + columnWidth/2, 320 + i * 40);
    text(sheep.domainIP, columnWidth * 2 + columnWidth/2, 320 + i * 40);
    text(sheep.application, columnWidth * 3 + columnWidth/2, 320 + i * 40);
    text(sheep.macAddress, columnWidth * 4 + columnWidth/2, 320 + i * 40);
  }
}

void addSheep(String login, String password, String domainIP, String application, String macAddress) {
  Sheep sheep = new Sheep(login, password, domainIP, application, macAddress);
  sheepList.add(sheep);
}

class Sheep {
  String login;
  String password;
  String domainIP;
  String application;
  String macAddress;
  
  Sheep(String login, String password, String domainIP, String application, String macAddress) {
    this.login = login;
    this.password = password;
    this.domainIP = domainIP;
    this.application = application;
    this.macAddress = macAddress;
  }
}
