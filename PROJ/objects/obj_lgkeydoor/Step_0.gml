if distance_to_object(obj_LGplayer) < 3
{
	if keys > 0
	{
		instance_destroy()
		keys -= 1
		obj_LGplayer.dashing = 0
		obj_LGplayer.dash_charge = 1
	}
}