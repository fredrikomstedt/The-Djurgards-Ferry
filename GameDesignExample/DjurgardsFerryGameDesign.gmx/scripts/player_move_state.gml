///player_move_state()

if(!place_meeting(x, y+1, Solid))
{
    vspd += grav;
    
    if(vspd < 0) rot = 30*image_xscale;
    else rot = 0;
    
    //Player is in the air
    
    //Control the jump height
    if(up_release && vspd < -6)
    {
        vspd = -6;
    }
} else
{
    vspd = 0;
    
    //Jumping Code
    if(up)
    {
        vspd = -20;
    }
}

if(right || left)
{
    hspd += (right-left)*acc;
    hspd_dir = right - left;
    
    if(hspd > spd) hspd = spd;
    if(hspd < -spd) hspd = -spd;
} else
{
    apply_friction(acc);
}

if(hspd != 0)
{
    image_xscale = sign(hspd);
}

//water drops
if(place_meeting(x, y+vspd+1, Solid) && vspd > 0)
{
    repeat(irandom_range(5, 10))
    {
        instance_create(x, y+16, obj_water_drop);
    }
}

move(Solid);
