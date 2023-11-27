if state = playerstate.dying
{
	
	if instance_place(x+hspeed,y,obj_LGsolid)
	{
		if hspeed < 0
			hspeed += 2
		else
			hspeed -= 2
		hspeed *= -1
		audio_play_sound(choose(sfx_bonk,sfx_LGhitwall1,sfx_LGhitwall2,sfx_LGhitwall3,sfx_LGhitwall4,sfx_LGhitwall5),1,0)
	}
	if instance_place(x,y+vspeed,obj_LGsolid)
	{
		if abs(vspeed) > 1
			audio_play_sound(choose(sfx_bonk,sfx_LGhitwall1,sfx_LGhitwall2,sfx_LGhitwall3,sfx_LGhitwall4,sfx_LGhitwall5),1,0)
		if vspeed > 0
			vspeed *= -1
		vspeed += 1.5
	}
	if instance_place(x,y-vspeed,obj_LGsolid)
	{
		if vspeed > 0
			vspeed *= -1
	}
}
if state != playerstate.noclip
{
	if instance_place(x + hspeed,y,obj_LGsolid) && !instance_place(x + hspeed,y - 12 * grav,obj_LGsolid)
	{
		while instance_place(x + hspeed,y + vspeed,obj_LGsolid)
			y -= 1 * grav
	}
	if (instance_place(x+hspeed,y,obj_LGsolid)) && (instance_place(x+hspeed,y - 12 * grav,obj_LGsolid))
	{
		if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
		if (hspeed>0){move_contact_solid(0,abs(hspeed));}
		hspeed=0;
	}
	if (instance_place(x,y+vspeed,obj_LGsolid))
	{
		if (vspeed<=0){move_contact_solid(90,abs(vspeed));}
		if (vspeed>0){move_contact_solid(270,abs(vspeed));}
		vspeed=0;
	}
	if (instance_place(x+hspeed,y+vspeed,obj_LGsolid))
	{
		hspeed=0;
	}
}

// dash
if instance_place(x + hspeed,y + 1 * grav,obj_LGsolid) && !instance_place(x + hspeed,y - 12 * grav,obj_LGsolid)
{
	dash_charge = 1
	pounding = 0
}
if !instance_place(x,y-1 * grav,obj_LGsolid)
	dashing = 0
	
if state = playerstate.hurt && (instance_place(x,y+1 * grav,obj_LGsolid) || instance_place(x+1 * grav,y,obj_LGsolid) || instance_place(x-1 * grav,y,obj_LGsolid)) && hurttime > 10
{
	state = idlestate
	hurttime = 0
}
	
if state = playerstate.balloon_dash && instance_place(x,y+1 * grav,obj_LGsolid)
	state = idlestate
	
