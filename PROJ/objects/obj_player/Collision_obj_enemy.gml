if state = states.normal || (state = states.hedgehog && image_index = 1)
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
else if state = states.rocket || state = states.chicken || (state = states.hedgehog && image_index = 2)
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