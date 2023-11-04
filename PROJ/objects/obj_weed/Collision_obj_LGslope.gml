vspeed = 0
if !instance_place(x,y+1,obj_LGslope)
{
	if (instance_place(x+hspeed,y,obj_LGsolid))
	{
		if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
		if (hspeed>0){move_contact_solid(0,abs(hspeed));}
		if !instance_place(x,y+1,obj_LGslope)
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
while place_meeting(x + hspeed, y + 0.1, obj_LGslope)
{
	y -= 0.1
}

if (instance_place(x + xs + hspeed * 5,y,obj_LGsolid) && instance_place(x + xs + hspeed * 5,y - 12,obj_LGsolid)) && instance_place(x,y+3,obj_LGslope)
{
	vspeed = -8
	hspeed = 0
	jumpstart = 1
	image_index = 0
}
onground = 1