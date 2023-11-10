if (state = states.normal || state = states.sandal || (state = states.hedgehog && image_index != 2)) && !other.dead && state != states.mariodeath
{
	if bbox_bottom < other.y + 40 && vsp > -9 // ag
	{
		eligoomba_kills++
		points += 100
		play_sfx(sfx_goombastomp)
		instance_create_depth(other.x,other.y,-100,obj_100)
		
		other.dead = true
		other.sprite_index = spr_eligoomba_dead
		hasdoublejump = true
		if KEY_JMP || gamepad_button_check(0,CONT_A)
			vsp = -12
		else
			vsp = -8
		y -= 5
	}
	else if !dontkillme
	{
		if state = states.sandal || state = states.hedgehog
		{
			with possessed_object
			{
				if possessmusic
					override_cambound_music_slots = false
				possessed_object = noone
				obj_player.state = states.normal
				//obj_player.hsp = 0
				obj_player.vsp = -12
				visible = true
				obj_player.hasdoublejump = true
			}
			dontkillme = true
			alarm[0] = 60
		}
		else
		{
			state = states.mariodeath
			play_sfx(sfx_goombadeath,false)
		}
	}
}
else if state = states.hedgehog
{
	if image_index != 2
	{
		if bbox_bottom < other.y + 40 && vsp > -9 // ag
		{
			eligoomba_kills++
			points += 100
			play_sfx(sfx_goombastomp)
			instance_create_depth(other.x,other.y,-100,obj_100)
		
			other.dead = true
			other.sprite_index = spr_eligoomba_dead
			hasdoublejump = true
			if KEY_JMP || gamepad_button_check(0,CONT_A)
				vsp = -12
			else
				vsp = -8
			y -= 5
		}
		else
		{
			with possessed_object
			{
				if possessmusic
					override_cambound_music_slots = false
				possessed_object = noone
				obj_player.state = states.normal
				//obj_player.hsp = 0
				obj_player.vsp = -12
				visible = true
				obj_player.hasdoublejump = true
			}
			dontkillme = true
			alarm[0] = 60
		}
	}
	else
	{
		eligoomba_kills++
		points += 200
		instance_destroy(other)
		play_sfx(sfx_hedgehogpoke)
		with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
		{
			rotspd = random_range(0,2)
			sprite_index = spr_eligoomba_hedgehogkill
			if obj_player.state = states.hedgehog
				hspeed = random_range(-3,3)
			else
				hspeed = (12 * obj_player.facing) + random_range(-2,2)
			vspeed = random_range(-8,-12)
		}
	}
}
else if state = states.rocket
{
	eligoomba_kills++
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
else if state = states.golf
{
	with other
	{
		hoodiestrike = true
		image_index = 0
		if x != other.x
			facing = sign(x - other.x)
	}
	
	var sp = 20
	var dir = point_direction(other.x,other.y,x,y - 25)
	var h = lengthdir_x(sp,dir)
	var v = lengthdir_y(sp,dir)
				
	hsp = h
	vsp = v
	cangolf = false
}
else if state = states.car
{
	if abs(hsp) < 10
	{
		with possessed_object
		{
			if possessmusic
				override_cambound_music_slots = false
			possessed_object = noone
			obj_player.state = states.normal
			//obj_player.hsp = 0
			obj_player.vsp = -12
			visible = true
			obj_player.hasdoublejump = true
		}
		dontkillme = true
		alarm[0] = 60
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
			sprite_index = spr_eligoomba_hedgehogkill
			hspeed = (12 * obj_player.facing) + random_range(-2,2)
			vspeed = random_range(-8,-12)
		}
	}
}
