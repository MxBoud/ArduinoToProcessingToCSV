/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void textfield3_change1(GTextField source, GEvent event) { //_CODE_:textfield3:841134:
  println("textfield3 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield3:841134:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:617010:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  String interval = textfield3.getText(); 
  println(interval);

  String numMeasurements = textfield1.getText();
  println(numMeasurements);
  beginMeasurements(int(interval),int(numMeasurements));
  
} //_CODE_:button1:617010:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:932600:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield1:932600:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:textfield2:355226:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield2:355226:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  textfield3 = new GTextField(this, 217, 48, 160, 30, G4P.SCROLLBARS_NONE);
  textfield3.setText("100");
  textfield3.setOpaque(true);
  textfield3.addEventHandler(this, "textfield3_change1");
  label3 = new GLabel(this, 128, 50, 80, 20);
  label3.setText("Interval (ms)");
  label3.setTextItalic();
  label3.setOpaque(false);
  button1 = new GButton(this, 203, 188, 80, 30);
  button1.setText("Begin Experiment");
  button1.setTextItalic();
  button1.addEventHandler(this, "button1_click1");
  label1 = new GLabel(this, 118, 83, 91, 35);
  label1.setText("Number of measurment");
  label1.setTextItalic();
  label1.setOpaque(false);
  textfield1 = new GTextField(this, 217, 90, 160, 30, G4P.SCROLLBARS_NONE);
  textfield1.setText("100");
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  label2 = new GLabel(this, 130, 137, 80, 21);
  label2.setText("csv Filename");
  label2.setTextItalic();
  label2.setOpaque(false);
  textfield2 = new GTextField(this, 218, 134, 160, 30, G4P.SCROLLBARS_NONE);
  textfield2.setText("default");
  textfield2.setOpaque(true);
  textfield2.addEventHandler(this, "textfield2_change1");
}

// Variable declarations 
// autogenerated do not edit
GTextField textfield3; 
GLabel label3; 
GButton button1; 
GLabel label1; 
GTextField textfield1; 
GLabel label2; 
GTextField textfield2; 