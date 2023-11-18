if audio_is_playing(mu_pantry)
{
	fw_time++
	if fw_time > fw_thres && spawn_fireworks
	{
		fw_thres = random_range(100,300)
		fw_time = 0
		instance_create_depth(camera_get_view_x(view_camera[0]) + random_range(500,1000),600,99,obj_firework)	
	}
	
	//bound_layer = layer_get_fx("Effect_1")
	//color_r = lerp(color_r,targetcolor_r,0.005)
	//color_g = lerp(color_g,targetcolor_g,0.005)
	//color_b = lerp(color_b,targetcolor_b,0.005)
	//fx_set_parameter(bound_layer,"g_TintCol",[color_r / 255,color_g / 255,color_b / 255,0])
	
	var musicspot = audio_sound_get_track_position(music)
	if musicspot > 211
	{
		//audio_stop_sound(mu_pantry)
	}
	else
	if musicspot > 203.5
	{
		targetscroll = 0
	}
	else
	if musicspot > 199.5
	{
		targetscroll = 2
	}
	else
	if musicspot > 175.5
	{
		targetscroll = 8
	}
	else
	if musicspot > 151.1
	{
		targetscroll = 6
	}
	else
	if musicspot > 139.5
	{
		targetscroll = 2
		spawn_fireworks = true
	}
	else
	if musicspot > 135
	{
		targetscroll = 1
	}
	else
	if musicspot > 109.5
	{
		targetscroll = 4
		targetcolor_r = 61
		targetcolor_g = 66
		targetcolor_b = 102
	}
	else
	if musicspot > 85
	{
		targetscroll = 6
	}
	else
	if musicspot > 61.5
	{
		targetscroll = 4
	}
	else
	if musicspot > 37
	{
		targetscroll = 6
	}
	else
	if musicspot > 13.5
	{
		targetscroll = 4
	}
	else if musicspot > 0
	{
		targetscroll = 2
		targetcolor_r = 153
		targetcolor_g = 109
		targetcolor_b = 65
	}
}
else
{
	room_goto(rm_elicaverns)
	can_egg = false // no more!!
	can_doublejump = true

	music_set_slot_count(5)
	music_set_slot_target(0,mu_elicave)
	music_set_slot_target(1,mu_hedgehog)
	music_set_slot_target(2,mu_khizar2)
	music_set_slot_target(3,mu_eligoomba)
	music_set_slot_target(4,mu_hell)
	music_set_slot_target(5,mu_kitchenpantry)
	music_set_active_slot(0)

	window_set_caption("The scary Eli Cave in the " + gamename)
}
scroll = lerp(scroll,targetscroll,0.05)

distance += scroll
room_width += scroll
x += scroll

#region wallgen
if distance > lastwalldist + disttonextwall && spawnwalls
{
	lastwalldist = distance
	disttonextwall = random_range(200,400)
	wallsnap = choose(boundry_snap.top,boundry_snap.bottom)
	if wallsnap = boundry_snap.top
	{
		var ys = 1 //irandom_range(1,5) / 4
		instance_create_depth(distance + 1500,0,depth,obj_gen_solid, {
			image_xscale: 1,
			image_yscale: ys,
			sprite_index: choose(spr_pantrysolid_t1,spr_pantrysolid_t2,spr_pantrysolid_t3)
		});
	}
	if wallsnap = boundry_snap.bottom
	{
		var ys = 1 //irandom_range(1,5) / 4
		instance_create_depth(distance + 1500,540,depth,obj_gen_solid, {
			image_xscale: 1,
			image_yscale: ys,
			sprite_index: choose(spr_pantrysolid_b1,spr_pantrysolid_b2,spr_pantrysolid_b3)
		});
	}
}
#endregion

#region enemyspawn
if distance > dist_since_last_enemy + dist_until_next_enemy
{
	var pool_select = irandom_range(0,enemy_pool_size)
	var enemy_to_spawn = enemy_pool[pool_select]
	
	dist_since_last_enemy = distance
	dist_until_next_enemy = random_range(150,400)
	
	switch enemy_to_spawn
	{
		case enemytype.default_ai:
		{
			var spawn_y = random_range(50,510)
			var attempts = 0
			while place_meeting(distance + 1000,spawn_y,obj_solid) && attempts <= 20
			{
				attempts++
				spawn_y = random_range(50,510)
			}
			if attempts < 20
				with instance_create_depth(distance + 1000,spawn_y,depth - 1,obj_gen_enemy) 
				{
					type = enemytype.default_ai
					hp = 3
				}
		}
		break;
		
		case enemytype.swarmer:
		{
			var i = 0
			var spawn_y = random_range(50,510)
			var attempts = 0
			while place_meeting(distance + 1000,spawn_y,obj_solid) && attempts <= 20
			{
				attempts++
				spawn_y = random_range(50,510)
			}
			if attempts < 20
				repeat(3)
				{
					with instance_create_depth(distance + 1000 + i,spawn_y,depth - 1,obj_gen_enemy) 
					{ 
						hp = 1
						type = enemytype.swarmer
					}
					i += 100
				}
		}
		break;
		
		case enemytype.crier:
		{
			var spawn_y = random_range(50,510)
			var attempts = 0
			while place_meeting(distance + 1000,spawn_y,obj_solid) && attempts <= 20
			{
				attempts++
				spawn_y = random_range(50,510)
			}
			if attempts < 20
				with instance_create_depth(distance + 1000,spawn_y,depth - 1,obj_gen_enemy) 
				{
					type = enemytype.crier
					hp = 4
				}
		}
		break;
	}
}
#endregion

#region area setups
if distance > area_start_dist + area_next_dist
{
	area_start_dist = distance
	area_next_dist = random_range(500,1000)
	area_current = choose(areas.test2,areas.test1) // may implement area pooling later
}

switch area_current
{
	case areas.test1:
	{
		enemy_pool_size = 0
		enemy_pool[0] = enemytype.default_ai
		bg_blend("Background",c_white)
		spawnwalls = 1
	}
	break;
	
	case areas.test2:
	{
		enemy_pool_size = 1
		enemy_pool[0] = enemytype.swarmer
		enemy_pool[1] = enemytype.crier
		bg_blend("Background",c_white)
		spawnwalls = 0
	}
}
#endregion