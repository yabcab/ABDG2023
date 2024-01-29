if  state != states.chocosub && state != states.mariodeath
{
	anim_hurt = true
	if !place_meeting(x,y - 11,obj_solid)
		y -= 11
	//instance_destroy(other)
	play_sfx(sfx_owie)
	//with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	//{
	//	sprite_index = spr_enemy_dead
	//	rotspd = random_range(10,40)
	//	rotdir = choose(-1,1)
	//	hspeed = random_range(-4,4)
	//	vspeed = random_range(-8,-12)
	//}
	//var dir = point_direction(other.x,other.y,x,y)
	//var sp = 20
	//hsp = lengthdir_x(sp,dir)
	vsp = -20
	hasdoublejump = true
}