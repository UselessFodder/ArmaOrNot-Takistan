params ["_location"];

//dim the view for transpo
titleText ["Moving to INFIL...", "BLACK", 2];
sleep 3;
player setPos _location;
titleText ["", "BLACK IN", 2];