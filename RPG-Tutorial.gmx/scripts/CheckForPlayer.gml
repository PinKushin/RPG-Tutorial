///CheckForPlayer
if instance_exists (oPlayer)
{
    var Dis = point_distance (x, y, oPlayer.x, oPlayer.y);
    if Dis < Sight
    {
        State = EnemyChaseState
        TargetX = oPlayer.x
        TargetY = oPlayer.y
    }
    else
    {
        EnemyChooseNextState ()
    }
}
else
{
    EnemyChooseNextState ()
}
