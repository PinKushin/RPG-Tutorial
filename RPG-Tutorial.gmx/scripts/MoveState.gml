///MoveState


if DashKey
{
    var Xdir = lengthdir_x (8, Face * 90);
    var Ydir = lengthdir_y (8, Face * 90);
    var Speaker = instance_place (x + Xdir, y + Ydir, oSpeaker);
    if Speaker != noone
    {
        ///Activate Dialog
        with Speaker
        {
            if !instance_exists (Dialog)
            {
                Dialog = instance_create (x + Xoffset, y + Yoffset, oDialog);
                Dialog.Text = Text;
            }
            else
            {
                Dialog.TextPage++;
                Dialog.TextCount = 0;
                if Dialog.TextPage > array_length_1d (Dialog.Text) - 1
                {
                    with Dialog
                    {
                        instance_destroy ();
                    }
                }
            }
        }
    }
    else if oPlayerStats.Stamina >= DASHCOST
    {
        State = DashState
        alarm[0] = room_speed / 6
        oPlayerStats.Stamina -= DASHCOST
        oPlayerStats.alarm[0] = room_speed
    }
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
    GetFace ()
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

switch Face
{
    case RIGHT:
         sprite_index = sPlayerRight
         break;
    
    case LEFT:
         sprite_index = sPlayerLeft
         break;
    
    case UP:
         sprite_index = sPlayerUp
         break;
    
    case DOWN:
         sprite_index = sPlayerDown
         break;
}
