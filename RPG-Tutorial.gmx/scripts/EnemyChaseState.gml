///EnemyChaseState
CheckForPlayer ()

if point_distance (x, y, TargetX, TargetY) > Basespeed
{
    var Dir = point_direction (x, y, TargetX, TargetY);
    var Hspd = lengthdir_x (Basespeed, Dir);
    var Vspd = lengthdir_y (Basespeed, Dir);
    
    image_xscale = sign (Hspd)
    phy_position_x += Hspd
    phy_position_y += Vspd
}
