///player_dead_state()

if(dead)
{
    alph = 0;
    x = 240;
    y = 436;
}
else
{
    hittable = false;
    alph = 1;
    life = 3;
    state = player_move_state;
    alarm[2] = 60;
}
