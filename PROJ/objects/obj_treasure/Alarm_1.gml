alarm[1] = irandom_range(5,10)
with instance_create_depth(x,y,depth + 1,obj_smoke)
{
	sprite_index = spr_smallsparkle
	image_speed = 0.25
	hspeed = random_range(-3,3)
	vspeed = random_range(-3,3)
}