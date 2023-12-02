if (state = states.normal || state = states.sandal) && !other.dead && state != states.mariodeath
{
	anim_hurt = true
	if !place_meeting(x,y - 11,obj_solid)
		y -= 11
	play_sfx(sfx_redhit)
	//instance_destroy(other)
	other.hitting = true
	other.alarm[0] = 50
	var dir = point_direction(other.x,other.y,x,y)
	var sp = 20
	hsp = lengthdir_x(sp,dir)
	vsp = lengthdir_y(sp,dir)
}
else if state = states.rocket
{
	add_points(175)
	instance_destroy(other)
	play_sfx(sfx_egghit)
	with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	{
		sprite_index = spr_enemyangry_dead
		hspeed = (obj_player.hsp * 2) + random_range(-2,2)
		vspeed = random_range(-8,-12)
	}
}
else if state = states.golf
{
	play_sfx(sfx_redhit)
	y -= 5
	other.hitting = true
	other.alarm[0] = 50
	var dir = point_direction(other.x,other.y,x,y)
	var sp = 20
	hsp = lengthdir_x(sp,dir)
	vsp = lengthdir_y(sp,dir)
}
else if state = states.car
{
	if abs(hsp) < 10
	{
		anim_hurt = true
		if !place_meeting(x,y - 11,obj_solid)
			y -= 11
		play_sfx(sfx_redhit)
		//instance_destroy(other)
		other.hitting = true
		other.alarm[0] = 50
		var dir = point_direction(other.x,other.y,x,y)
		var sp = 20
		hsp = lengthdir_x(sp,dir)
		vsp = lengthdir_y(sp,dir)
	}
	else
	{
		add_points(125)
		instance_destroy(other)
		play_sfx(sfx_egghit)
		play_sfx(sfx_boom)
		with instance_create_depth(x + 32,y + 32,-2,obj_smokepuff)
		{
			sprite_index = spr_explosion
			image_speed = 3
		}
		with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
		{
			sprite_index = spr_enemyangry_dead
			if obj_player.state = states.hedgehog
				hspeed = (obj_player.hsp * 2) + random_range(-2,2)
			else
				hspeed = (12 * obj_player.facing) + random_range(-2,2)
			vspeed = random_range(-8,-12)
		}
	}
}