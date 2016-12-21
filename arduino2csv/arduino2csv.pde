// Need G4P library
import g4p_controls.*;
import processing.serial.*; // imports library for serial communication

Serial myPort;
Table table;

public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  myPort = new Serial(this,"/dev/tty.usbmodem1421", 9600); // starts the serial communication
  
  table = new Table();
  
  table.addColumn("Time");
  table.addColumn("Value");
 
  println("Setup completed");
  
}

public void draw(){
  background(230);
  
}

void beginMeasurements(int interval, int numMeasurements) {
  int time = 0;
    println("Measurement is beginning");
    //Garbage data
     myPort.write("m"+"\n");
      
      String data = myPort.readString();
      println(data);
    int startTime = millis(); 
    int currentTime;
    int i = 0;
    while (i <numMeasurements){
      currentTime = millis()-startTime;
      
      if (currentTime>i*interval) {
        println("measurement = " + str(i));
      myPort.write("m"+"\n");
      
      data = myPort.readString();
      println(data);
      
      
      
      
      TableRow newRow = table.addRow();
      newRow.setInt("Time", table.getRowCount() - 1);
      newRow.setString("Time", str(currentTime));
      newRow.setString("Value", data);
       i = i+1;
    }
    }
   
   
  myPort.stop();
  saveTable(table, "data/"+textfield2.getText()+".csv");
  println("tableSaved");
    
}


//Use this method to add additional statements
//to customise the GUI controls
public void customGUI(){
}