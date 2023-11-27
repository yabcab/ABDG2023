if distance_to_object(obj_LGplayer) < 3
{
	if instance_exists(obj_specialkey)
	{
		instance_destroy(obj_specialkey)
		instance_destroy()
		obj_LGplayer.dashing = 0
		obj_LGplayer.dash_charge = 1
	}
}