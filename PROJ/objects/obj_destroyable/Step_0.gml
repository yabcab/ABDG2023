if distance_to_object(obj_player) < abs(obj_player.hsp) + 3 && obj_player.state = states.rocket
{	
	play_sfx(sfx_cratehit)
	repeat 10
		with instance_create_depth(x + 32,y + 32,-1,obj_cratepart)
		{
			hspeed = (obj_player.hsp / 2) + random_range(-2,2)
			vspeed = random_range(-6,-3)
		}
		
	instance_destroy()
}

if obj_player.state = states.groundpound && distance_to_object(obj_player) < abs(obj_player.vsp) + 3
{
	play_sfx(sfx_cratehit)
	repeat 10
		with instance_create_depth(x + 32,y + 32,-1,obj_cratepart)
		{
			hspeed = random_range(-4,4)
			vspeed = (obj_player.vsp / 2) + random_range(-2,2)
		}
		
	instance_destroy()
}

if obj_player.state = states.hedgehog && obj_player.image_index = 2 && distance_to_object(obj_player) < 7
{
	play_sfx(sfx_cratehit)
	add_points(10,x + 16,y + 16)
	repeat 10
		with instance_create_depth(x + 32,y + 32,-1,obj_cratepart)
		{
			hspeed = (obj_player.hsp / 2) + random_range(-2,2)
			vspeed = (obj_player.vsp / 2) + random_range(-2,2)
		}
		
	instance_destroy()
}

if obj_player.state = states.car && abs(obj_player.hsp) > 15 && distance_to_object(obj_player) < abs(obj_player.hsp) + 3
{
	play_sfx(sfx_boom)
	play_sfx(sfx_cratehit)
	repeat 10
		with instance_create_depth(x + 32,y + 32,-1,obj_cratepart)
		{
			hspeed = (obj_player.hsp / 2) + random_range(-2,2)
			vspeed = (obj_player.vsp / 2) + random_range(-2,2)
		}
	with instance_create_depth(x + 32,y + 32,-2,obj_smokepuff)
	{
		sprite_index = spr_explosion
		image_speed = 3
	}
		
	instance_destroy()
}

cull_me()