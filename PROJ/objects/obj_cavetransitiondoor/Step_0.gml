if gogogo
{
	vspeed += 0.25
	image_angle += 2
}
if fade
{
	fadealph += 0.05
	if fadealph >= 1
	{
		room_goto(rm_elicaverns)
		instance_create_depth(0,0,0,obj_fadeout)
	}
}