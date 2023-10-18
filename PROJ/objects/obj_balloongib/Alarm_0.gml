instance_destroy()
play_sfx(sfx_bubblepop)

repeat 15
{
	with instance_create_layer(x,y - 25,"Instances_outlinedblack",obj_smoke)
	{
		sprite_index = spr_star
		image_index = irandom_range(0,3)
		image_xscale = 0.35
		image_yscale = 0.35
		rotate_speed = 0
		hspeed = random_range(-4,4)
		vspeed = random_range(-4,4)
	}
}