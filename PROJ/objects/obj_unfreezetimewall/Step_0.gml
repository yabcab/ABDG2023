if instance_exists(obj_LGplayer)
{
	if pause_state = pausestate.nonplayerpause && pause_state != pausestate.playerpause
	{
		image_alpha = 1
		if !instance_exists(obj) && !instance_place(x,y,obj_LGplayer)
		{
			obj = instance_create_depth(x,y,depth,obj_LGsolid)
			with obj
			{
				image_xscale = other.image_xscale
				image_yscale = other.image_yscale
			}
		}
	}
	else if pause_state != pausestate.playerpause
	{
		image_alpha = 0.4
		instance_destroy(obj)
	}
}