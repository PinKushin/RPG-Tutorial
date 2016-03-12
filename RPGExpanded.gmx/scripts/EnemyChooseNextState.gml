///EnemyChooseNextState
if alarm[0] <= 0
{
    State = choose (EnemyWanderState, EnemyIdleState)
    alarm[0] = room_speed * irandom_range (2, 4)
    TargetX = random (room_width)
    TargetY = random (room_height)
}
