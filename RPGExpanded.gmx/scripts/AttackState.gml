///AttackState
image_speed = 0.5

switch (sprite_index)
{
    case sPlayerDown: 
         sprite_index = sPlayerAttackDown
         break;
    
    case sPlayerUp:
         sprite_index = sPlayerAttackUp
         break;
    
    case sPlayerLeft:
         sprite_index = sPlayerAttackLeft
         break;
    
    case sPlayerRight:
         sprite_index = sPlayerAttackRight
         break;
}

if image_index >= 3 && Attacked == false
{
    var XX = 0;
    var YY = 0;
    
    switch (sprite_index)
    {
        case sPlayerAttackDown:
             XX = x
             YY = y + 14
             break;
        
        case sPlayerAttackUp:
             XX = x
             YY = y - 10
             break;
        
        case sPlayerAttackLeft:
             XX = x - 10
             YY = y + 2
             break;
        
        case sPlayerAttackRight:
             XX = x + 10
             YY = y + 2
             break;
    }
    var Damage = instance_create (XX, YY, oDamage);
    Damage.Creator = id
    Damage.Damage = oPlayerStats.Attack
    Attacked = true
}
