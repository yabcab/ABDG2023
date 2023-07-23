repeat 4
	instance_create_depth(x,y,-1,obj_whiteparticle)
instance_create_depth(x + random_range(-16,16),y + random_range(-16,16),depth - 1,obj_smokepuff)
//play_sfx(sfx_eggsplat)