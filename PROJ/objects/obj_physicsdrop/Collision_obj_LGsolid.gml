if instance_place(x+hspeed,y,obj_LGsolid)
{
	if hspeed < 0
		hspeed += 2
	else
		hspeed -= 2
	hspeed *= -1
}
if instance_place(x,y+vspeed,obj_LGsolid)
{
	if vspeed > 0
		vspeed *= -1
	vspeed += 1.5
}
if instance_place(x,y-vspeed,obj_LGsolid)
{
	if vspeed > 0
		vspeed *= -1
}
if (instance_place(x+hspeed,y,obj_LGsolid))
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