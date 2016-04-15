///player_hurt_state()

if(hurt)
{
    //No movement during this time.
    hspd = 0;
    rot = 0;
    if(!place_meeting(x, y+1, Solid))
    {
        vspd += grav;
    } else
    {
        vspd = 0;
    }
    
    move(Solid);
    
    //Blinking animation
    if(hurt_tick % 3 == 0)
    {
        if(alph == 1)
        {
            alph = .5;
        }   
        else
        {
            alph = 1;
        }
    }
    hurt_tick++;
}
else
{
    alph = 1;
    hurt_tick = 0;
    state = player_move_state();
}
