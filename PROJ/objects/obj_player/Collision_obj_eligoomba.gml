if state = states.normal && !other.dead
{
	if bbox_bottom < other.y + 30 && vsp > -9 // ag
	{
		play_sfx(sfx_goombastomp)
		instance_create_depth(other.x,other.y,-100,obj_100)
		
		other.dead = true
		other.sprite_index = spr_eligoomba_dead
		hasdoublejump = true
		if KEY_JMP || gamepad_button_check(0,CONT_A)
			vsp = -12
		else
			vsp = -8
	}
	else
	{
		
	}
}
else if state = states.rocket
{
	points += 125
	instance_destroy(other)
	play_sfx(sfx_egghit)
	with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	{
		sprite_index = spr_enemy_dead
		hspeed = (obj_player.hsp * 2) + random_range(-2,2)
		vspeed = random_range(-8,-12)
	}
}