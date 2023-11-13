if (state = states.normal || state = states.sandal || (state = states.hedgehog && image_index != 2)) && !other.dead && state != states.mariodeath
{
	anim_hurt = true
	y -= 11
	instance_destroy(other)
	play_sfx(sfx_owie)
	with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	{
		sprite_index = spr_enemy_dead
		rotspd = random_range(10,40)
		rotdir = choose(-1,1)
		hspeed = random_range(-4,4)
		vspeed = random_range(-8,-12)
	}
	var dir = point_direction(other.x,other.y,x,y)
	var sp = 20
	hsp = lengthdir_x(sp,dir)
	vsp = lengthdir_y(sp,dir)
}
else if state = states.rocket || state = states.chicken
{
	points += 125
	instance_destroy(other)
	play_sfx(sfx_egghit)
	with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	{
		sprite_index = spr_enemy_dead
		if obj_player.state = states.hedgehog
			hspeed = (obj_player.hsp * 2) + random_range(-2,2)
		else
			hspeed = (12 * obj_player.facing) + random_range(-2,2)
		vspeed = random_range(-8,-12)
	}
}
else if (state = states.hedgehog && image_index = 2) || state = states.floured
{
	points += 125
	instance_destroy(other)
	if state = states.hedgehog
		play_sfx(sfx_hedgehogpoke)
	else play_sfx(sfx_owie)
	with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	{
		rotspd = random_range(0,2)
		sprite_index = spr_enemy_dead
		hspeed = random_range(-3,3)
		vspeed = random_range(-8,-12)
	}
}
else if state = states.car
{
	if abs(hsp) < 10
	{
		anim_hurt = true
		y -= 11
		instance_destroy(other)
		play_sfx(sfx_owie)
		with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
		{
			sprite_index = spr_enemy_dead
			rotspd = random_range(10,40)
			rotdir = choose(-1,1)
			hspeed = random_range(-4,4)
			vspeed = random_range(-8,-12)
		}
		var dir = point_direction(other.x,other.y,x,y)
		var sp = 20
		hsp = lengthdir_x(sp,dir)
		vsp = lengthdir_y(sp,dir)
	}
	else
	{
		points += 125
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
			sprite_index = spr_enemy_dead
			if obj_player.state = states.hedgehog
				hspeed = (obj_player.hsp * 2) + random_range(-2,2)
			else
				hspeed = (12 * obj_player.facing) + random_range(-2,2)
			vspeed = random_range(-8,-12)
		}
	}
}