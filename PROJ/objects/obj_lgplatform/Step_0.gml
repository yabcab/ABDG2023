if instance_exists(obj_LGplayer)
{
	if obj_LGplayer.grav = 1
	{
		if !instance_exists(obj) && obj_LGplayer.bbox_bottom < y
		{
			var s = image_xscale
			obj = instance_create_depth(x,y,depth,obj_LGsolid)
			with obj
				image_xscale = s
		}
		if obj_LGplayer.bbox_bottom > y && instance_exists(obj)
			instance_destroy(obj)
	}
	else
	{
		if !instance_exists(obj) && obj_LGplayer.y - 31.5 > y + 32
		{
			var s = image_xscale
			obj = instance_create_depth(x,y,depth,obj_LGsolid)
			with obj
				image_xscale = s
		}
		if obj_LGplayer.y - 31.5 < y + 32 && instance_exists(obj)
			instance_destroy(obj)
	}
}