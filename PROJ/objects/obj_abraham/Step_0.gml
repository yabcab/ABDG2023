if image_index = 1
{
	vspeed += 0.4
	if place_meeting(x,y + 1,obj_solid)
	{
		instance_destroy()
		play_sfx(sfx_acidsizzle,false)
	}
}