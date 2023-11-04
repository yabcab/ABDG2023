if instance_place(x + hspeed,y,obj_LGsolid) && !instance_place(x + hspeed,y - 12,obj_LGsolid)
{
	while instance_place(x + hspeed,y + vspeed,obj_LGsolid)
		y -= 1
}
if (!place_free(x+hspeed,y))
{
    if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
    if (hspeed>0){move_contact_solid(0,abs(hspeed));}
    hspeed=0;
}
if (!place_free(x,y+vspeed))
{
    if (vspeed<=0){move_contact_solid(90,abs(vspeed));}
    if (vspeed>0){move_contact_solid(270,abs(vspeed));}
    vspeed=0;
}
if (!place_free(x+hspeed,y+vspeed))
{
    hspeed=0;
}
if state = 2 && (instance_place(x + 1,y,obj_LGsolid) || instance_place(x - 1,y,obj_LGsolid))
{
	state = 0
	vspeed = -3
	hspeed = 2
	sprite_index = spr_bella_idle
}