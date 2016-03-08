///DashState
if Len == 0 
{
    Dir = Face * 90
}
Len = Basespeed * 4

//Get the Hspeed and Vspeed
Hspeed = lengthdir_x (Len, Dir)
Vspeed = lengthdir_y (Len, Dir)

//Move
//Only use phy_position if using standard Game Maker physics
phy_position_x += Hspeed
phy_position_y += Vspeed

//Create Dash effect
var Dash = instance_create (x, y, oDashEffect);
Dash.sprite_index = sprite_index
Dash.image_index = image_index
