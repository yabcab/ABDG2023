if instance_exists(frag[0]) && instance_exists(frag[1]) && instance_exists(frag[2])
{
	instance_destroy(frag[0])
	instance_destroy(frag[1])
	instance_destroy(frag[2])
	
	instance_create_depth(obj_LGplayer.x,obj_LGplayer.y,depth,obj_LGkey)
	for (i = 0; i < 100; i++)
	{
		with instance_create_depth(obj_LGplayer.x + random_range(-8,8),obj_LGplayer.y + random_range(-8,8),depth - 1,obj_explosionparticle)
		{
			sprite_index = spr_highjumppart
			speed = 2
			anim_end = 1
		}
	}
}