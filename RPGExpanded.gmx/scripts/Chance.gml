///Chance (Percentage)
var Percent = argument0; //Between 0 and 1
Percent = clamp (Percent, 0, 1);
return (random (1) < Percent);
