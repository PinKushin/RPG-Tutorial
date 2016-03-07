///MoveState


if DashKey
{
    State = DashState
    alarm[0] = room_speed / 6
}

if AttackKey
{
    image_index = 0
    State = AttackState
}

//Get direction
Dir = point_direction (0, 0, Xaxis, Yaxis);

//Get the Length (Len)
if Xaxis == 0 && Yaxis == 0
{
    Len = 0
}
else
{
    Len = Basespeed
}

//Get the Hspeed and Vspeed
Hspeed = lengthdir_x (Len, Dir)
Vspeed = lengthdir_y (Len, Dir)

//Move
//Only use phy_position if using standard Game Maker physics
phy_position_x += Hspeed
phy_position_y += Vspeed

//Animate Sprite
image_speed = 0.2
if Len == 0
{
    image_index = 0
}

//Vertical Sprites
if Vspeed > 0
{
    sprite_index = sPlayerDown
}
else if Vspeed < 0
{
    sprite_index = sPlayerUp
}

//Horizontal Sprites
if Hspeed > 0
{
    sprite_index = sPlayerRight
}
else if Hspeed < 0
{
    sprite_index = sPlayerLeft
}
