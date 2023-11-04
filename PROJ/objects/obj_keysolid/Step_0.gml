if instance_exists(obj_LGplayer)
{
	if !instance_exists(obj) && obj_LGplayer.state != playerstate.keyfly
	{
		obj = instance_create_depth(x,y,depth,obj_LGsolid)
		with obj
		{
			image_xscale = other.image_xscale
			image_yscale = other.image_yscale
			
		}
	}
	if instance_exists(obj) && obj_LGplayer.state = playerstate.keyfly
		instance_destroy(obj)
}