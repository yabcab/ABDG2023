hp = 7
//if grav = -1
//	obj_LGcamera.targetangle = 180
//else
//	obj_LGcamera.targetangle = 0

if combo > rank_highestcombo
	rank_highestcombo = combo

image_yscale = grav
ys = grav

if state != -1 && state != playerstate.taunt && state != playerstate.level_end
	nonstunstate = state

if instance_place(x,y + 1 * grav,obj_LGsolid) || instance_place(x,y + (abs(hspeed) + 2) * grav,obj_LGslope)
	onground = 1
else
	onground = 0
if onground
{
	coyote_time = 1
	alarm[4] = 10
	balloonjumping = 0
}

if inv_frames
{
	invtime += 1
	if alph != 0
	{
		old_alph = alph
		alph = 0
	}
	else if invtime > 2
	{
		alph = old_alph
		invtime = 0
	}
}
else
	if alph = 0
		alph = old_alph

if fade = 1
{
	fade_amount += 0.05
	if fade_amount > 1
	{
		if room != rm_LGtitle
		{
			room_goto(targetroom)
		}
		fade = 2
	}
}
else if fade = 2
{
	fade_amount -= 0.05
	if fade_amount < 0
		fade = 0
}
else
	fade_amount = 0

if instance_exists(obj_timer)
{
	if (!obj_timer.minutes && !obj_timer.seconds) || obj_timer.trial_timeleft <= 15
		{
			instance_destroy(obj_timer)
			state = -1
			visible = 0
			rot = 0
			speed = 0
			audio_play_sound(sfx_LGexplosion,1,0)
			var i;
			for (i = 0; i < 100; i++)
			{
				instance_create_depth(x,y,-500,obj_explosionparticle)
			}
			with instance_create_depth(x,y,depth - 1,obj_explosionparticle)
			{
				speed = 0
				image_alpha = 5
				sprite_index = spr_boom
			}

			obj_music.alarm[0] = 200
		}
}

switch state { // normal
	case playerstate.none:
	{
		taunt_qualify = 0
		inv_frames = 0
		inv = 1
		alph = 1
		alarm[1] = 1
	}
	break;
	
	case playerstate.idle:
	{
		//louchester anims
		if campaign = 3
		{
			if onground
			{
				if hspeed = 0
					if jumpcharge > 0
						if jumpcharge_starting
							sprite_index = spr_playerLS_chargejumpstart
						else
							if jumpcharge > 15
								sprite_index = spr_playerLS_chargejumpready
							else
								sprite_index = spr_playerLS_chargejump
					else
						sprite_index = spr_playerLS_still
				else
					sprite_index = spr_playerLS_walk
				
				beginfall = 1
				beginfall_start = 1
			}		
			else
			if !dashing
				if beginjump
				{
					if enddash
						sprite_index = spr_playerLS_airjumpend
					else
						sprite_index = spr_playerLS_jumpstart
					beginfall = 0
				}
				else
					if beginfall = 0
						sprite_index = spr_playerLS_jumpair
					else
					{
						sprite_index = spr_playerLS_beginfall
						if beginfall_start
						{
							image_index = 0
							beginfall_start = 0
						}
					}
			else
				if beginjump
					sprite_index = spr_playerLS_boostjumpstart
				else
					sprite_index = spr_playerLS_boostjumpair
		}
		
		player_velocity()
		
		// walkin
		if key_up && !dashing && (instance_place(x,y + 1 * grav,obj_LGsolid) || instance_place(x,y + 1 * grav,obj_LGslope))
		{
			if jumpcharge < 1
			{
				jumpcharge_starting = 1
				image_index = 0
			}
			jumpcharge += 1
			hspeed = 0
		}
		else
		{
			jumpcharge = 0
			if key_right && !dashing
				hspeed = 4
			else 
			if key_left && !dashing
				hspeed = -4
			else
				if !dashing
					hspeed = 0
		}
			
		// jumpin
		if key_jump_press && (instance_place(x,y + 5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope) || coyote_time || clouds > 0) // ground
		{
			if key_up && jumpcharge > 30
			{
				vspeed = grav * -13
				jumpcharge = 0
				jump_charged = 1
			}
			else
				vspeed = grav * -9
				
			if !(instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			jumping = 1
			image_index = 0
			coyote_time = 0
			if clouds > 0 && (!onground && !coyote_time)
				clouds--
		}
		if jumping && !key_jump && use_varjump && !balloonjumping
		{
			vspeed = -3 * grav
			jumping = 0
		}
				
		// dashin
		//if keyboard_check_pressed(cont_attack) && dash_charge = 1
		//{
		//	if key_right
		//		hspeed = 9
		//	else
		//	if key_left
		//		hspeed = -9
		//	else
		//	hspeed = 0
			
		//	vspeed = -2
		//	dashing = 1
		//	dash_charge = 0
		//	beginjump = 1
		//	image_index = 0
		//}
		
		// dash end
		if key_left_press || key_right_press
			dashing = 0
		
		// dash hitbox
		if dashing = 1
		{
			if hspeed < 0
				instance_create_depth(x - 35,y,depth,obj_dash_hitbox)
			else if hspeed > 0
				instance_create_depth(x + 35,y,depth,obj_dash_hitbox)
			
			if vspeed < -5 && use_dash > 1
				instance_create_depth(x,y -40,depth,obj_dash_hitbox_u)
		}
		
		// ground pound
		if use_gp && !pounding && !(instance_place(x,y+5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope)) && keyboard_check_pressed(cont_down)
		{
			state = playerstate.ground_pound
			pounding = 1
			begingp = 1
		}
		gp_time = 0
		
			if hspeed < 0
				facing = -1
			if hspeed > 0
				facing = 1
		// taunt
		taunt_qualify = 1
	}
	break;
	
	case playerstate.old_portal:
	{
		x = obj_goalflag.x + 32
		y = obj_goalflag.y + 32
		
		ys -= 0.015
		xs -= 0.015
		rot += 5
		
		if xs <= 0
			room_goto_next()
		
		if campaign = 3
			sprite_index = spr_player_ls
	}
	break;
	
	case playerstate.ground_pound:
	{
		if campaign = 3
		{
			if begingp
				sprite_index = spr_playerLS_gpstart
			else
				sprite_index = spr_playerLS_gp
		}
		
		gp_time += 1
		if gp_time > 25
			vspeed = 8
		else
			vspeed = -0.5
		
		if key_left
			hspeed = -2.5
		else
		if key_right
			hspeed = 2.5
		else
		hspeed = 0
		
		if !pounding
			state = playerstate.sad
		
		instance_create_depth(x,y + 40,depth,obj_dash_hitbox_u)
		
		if instance_place(x,y,obj_LGairjump)
		{
			state = playerstate.idle
			if key_up
				vspeed = -11
			else
				vspeed = -9
				
			audio_play_sound(sfx_LGjump,1,0)
		}
		
			if hspeed < 0
				facing = -1
			if hspeed > 0
				facing = 1
	
	}
	break;
	
	case playerstate.boost: // boost
	{
		// anims
		if campaign = 3
			if instance_place(x,y+1 * grav ,obj_LGsolid) || instance_place(x,y + 1 * grav,obj_LGslope)
				sprite_index = spr_playerLS_boost
			else
				if beginjump
					if jumps > 0
						if diving
							sprite_index = spr_playerLS_dive
						else
							sprite_index = spr_playerLS_bjumpstart
					else
						if diving
							sprite_index = spr_playerLS_dive
						else
							sprite_index = spr_playerLS_bjumpstart2
				else
					if jumps > 0
						if diving
							sprite_index = spr_playerLS_dive
						else
							sprite_index = spr_playerLS_bjump
					else
						if diving
							sprite_index = spr_playerLS_dive
						else
							sprite_index = spr_playerLS_bjump2
		
		//sound
		if onground && !audio_is_playing(sfx_run)
			audio_play_sound(sfx_run,1,0)
		else if !onground
			audio_stop_sound(sfx_run)
		
		// velocity
		player_velocity()
		if key_down
		{
			vspeed = 10 * grav
			diving = 1
		}
		else
			diving = 0
		
		hspeed = 7 * facing
		
		if key_jump_press && ((instance_place(x,y + 5 * grav,obj_LGsolid) || instance_place(x,y + 5 * grav,obj_LGslope)) || jumps > 0 || coyote_time) // ground
		{
			vspeed = -9 * grav
				
			if !(instance_place(x,y + 10 * grav,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			image_index = 0
			jumping = 1
			jumps -= 1
			coyote_time = 0
		}
		if jumping && !key_jump && use_varjump && !balloonjumping
		{
			vspeed = -3 * grav
			jumping = 0
		}
		
		if instance_place(x + hspeed * grav,y,obj_LGsolid)
		{
			if instance_place(x + hspeed,y - 12 * grav,obj_LGsolid)
			{
				state = idlestate
				audio_stop_sound(sfx_run)
			}
			else
				while instance_place(x + hspeed * grav,y - 8 * grav,obj_LGsolid)
					y -= 1 * grav
		}
		if coyote_time
			jumps = 2
		else
			if !onground && jumps = 2
				jumps = 1
		if instance_place(x,y + 5 * grav,obj_LGsolid) || instance_place(x,y + 5 * grav,obj_LGslope)
			jumps = 1
			
		instance_create_depth(x + (40 * facing) * grav,y,-1,obj_dash_hitbox)
		trailspawntime++
		if trailspawntime > 5
		{
			trailspawntime = 0
			with instance_create_depth(x,y,depth + 1,obj_LGtrail)
			{
				image_alpha = 0.5
				flash = 0
				fromplayer = 1
			}
		}
		
		// taunt
		taunt_qualify = 1
		
	}
	break;
	
	case playerstate.hurt: // hurt
	{
		// velocity
		player_velocity()
			
		hspeed = -4 * facing * grav
		
		sprite_index = spr_playerLS_pain
		
		hurttime += 1
		
		taunt_qualify = 0
	}
	break;
	
	case playerstate.taunt: // taunt
	{
		//if jumping && !key_jump
		//{
		//	vspeedsave = -3
		//	jumping = 0
		//}
		speed = 0
		wait += 1
		if wait > 15 && statesave != playerstate.taunt
		{
			state = statesave
			hspeed = hspeedsave
			vspeed = vspeedsave
			wait = 0
		}
		taunt_qualify = 0
	}
	break;
		
	case playerstate.sad: // sad
	{
		//louchester anims
		if campaign = 3
		{
			if instance_place(x,y + 1,obj_LGsolid) || instance_place(x,y + 1,obj_LGslope)
			{
				if hspeed = 0
					sprite_index = spr_playerLS_sadidle
				else
					sprite_index = spr_playerLS_sadwalk
				
				beginfall = 1
				beginfall_start = 1
			}		
			else
			if !dashing
				if beginjump
				{
					if enddash
						sprite_index = spr_playerLS_airjumpend
					else
						sprite_index = spr_playerLS_jumpstart
					beginfall = 0
				}
				else
					if beginfall = 0
						sprite_index = spr_playerLS_jumpair
					else
					{
						sprite_index = spr_playerLS_beginfall
						if beginfall_start
						{
							image_index = 0
							beginfall_start = 0
						}
					}
			else
				if beginjump
					sprite_index = spr_playerLS_boostjumpstart
				else
					sprite_index = spr_playerLS_boostjumpair
		}
		
		// velocity
		if vspeed < 15
			vspeed += 0.3
		
		
		// walkin
		if key_right && !dashing
			hspeed = 3
		else 
		if key_left && !dashing
			hspeed = -3
		else
			if !dashing
				hspeed = 0
			
		// jumpin
		if key_jump_press && (instance_place(x,y + 5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope)) // ground
		{
			if key_up
				vspeed = -13
			else
				vspeed = -10
				
			if !(instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			image_index = 0
		}
		/*if key_jump_press && (instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
		{
			audio_play_sound(sfx_airjump,1,0)
			
			if key_up
				vspeed = -11
			else
				vspeed = -9
			
			dash_charge = 1
			beginjump = 1
			image_index = 0
		}
		if key_jump_press && (instance_place(x,y + 10,obj_rightdraft) || instance_place(x,y,obj_rightdraft)) && !instance_place(x,y+2,obj_LGsolid)
		{
			audio_play_sound(sfx_airjump,1,0)
			
			var inst = instance_place(x,y,obj_rightdraft)
			if inst.image_xscale > 0
			{
				hspeed = 11
				vspeed = -4
			}
			else
			{
				hspeed = -11
				vspeed = -4
			}
			
			dash_charge = 1
			dashing = 1
			beginjump = 1
			image_index = 0
		} */
		
				
		// dashin
		if key_attack_press && dash_charge = 1 && use_dash > 0
		{
			if key_right
				hspeed = 9
			else
			if key_left
				hspeed = -9
			else
			hspeed = 0
			
			if use_dash > 1
			{
				if key_up
					vspeed = -9
				else
				vspeed = -3
			}
			else
				vspeed = -3
			
			dashing = 1
			dash_charge = 0
			beginjump = 1
			image_index = 0
		}
		
		// dash end
		if key_left_press || key_right_press
			dashing = 0
		
		// dash hitbox
		if dashing = 1
		{
			if hspeed < 0
				instance_create_depth(x - 35,y,depth,obj_dash_hitbox)
			else if hspeed > 0
				instance_create_depth(x + 35,y,depth,obj_dash_hitbox)
			
			if vspeed < -5 && use_dash > 1
				instance_create_depth(x,y -40,depth,obj_dash_hitbox_u)
		}
		
		// ground pound
		if !pounding && !instance_place(x,y+5,obj_LGsolid) && key_down_press
		{
			state = playerstate.ground_pound
			pounding = 1
			begingp = 1
		}
		gp_time = 0
		
			if hspeed < 0
				facing = -1
			if hspeed > 0
				facing = 1
		// taunt
		taunt_qualify = 1
	}
	break;
	
	case playerstate.happy:
	{
		//louchester anims
		if campaign = 3
		{
			if instance_place(x,y + 1,obj_LGsolid) || instance_place(x,y + 1,obj_LGslope)
			{
				if hspeed = 0
					sprite_index = spr_playerLS_still
				else
					sprite_index = spr_playerLS_walk
				
				beginfall = 1
				beginfall_start = 1
			}		
			else
			if !dashing
				if beginjump
				{
					if enddash
						sprite_index = spr_playerLS_airjumpend
					else
						sprite_index = spr_playerLS_jumpstart
					beginfall = 0
				}
				else
					if beginfall = 0
						sprite_index = spr_playerLS_jumpair
					else
					{
						sprite_index = spr_playerLS_beginfall
						if beginfall_start
						{
							image_index = 0
							beginfall_start = 0
						}
					}
			else
				if beginjump
					sprite_index = spr_playerLS_boostjumpstart
				else
					sprite_index = spr_playerLS_boostjumpair
		}
		
		// velocity
		if vspeed < 15
			vspeed += 0.3
		
		
		// walkin
		if key_right && !dashing
			hspeed = 6
		else 
		if key_left && !dashing
			hspeed = -6
		else
			if !dashing
				hspeed = 0
			
		// jumpin
		if key_jump_press && instance_place(x,y + 5,obj_LGsolid) // ground
		{
			if key_up
				vspeed = -9
			else
				vspeed = -7
				
			if !(instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			image_index = 0
		}
		if key_jump_press && (instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
		{
			audio_play_sound(sfx_airjump,1,0)
			
			if key_up
				vspeed = -11
			else
				vspeed = -9
			
			dash_charge = 1
			beginjump = 1
			image_index = 0
		}
		if key_jump_press && (instance_place(x,y + 10,obj_rightdraft) || instance_place(x,y,obj_rightdraft)) && !instance_place(x,y+2,obj_LGsolid)
		{
			audio_play_sound(sfx_airjump,1,0)
			
			var inst = instance_place(x,y,obj_rightdraft)
			if inst.image_xscale > 0
			{
				hspeed = 11
				vspeed = -4
			}
			else
			{
				hspeed = -11
				vspeed = -4
			}
			
			dash_charge = 1
			dashing = 1
			beginjump = 1
			image_index = 0
		}
		
				
		// dashin
		if key_attack_press && dash_charge = 1 && use_dash > 0
		{
			if key_right
				hspeed = 9
			else
			if key_left
				hspeed = -9
			else
			hspeed = 0
			
			if !onground
				vspeed = -3
			else
				groundlunge_cooldown = 50
			
			dashing = 1
			dash_charge = 0
			beginjump = 1
			image_index = 0
		}
		if key_attack_press && dashing && !onground
		{
			vspeed = -5
			jumping = 1
			dashing = 0
			lungecancelled = 1
			hspeed /= 2
		}
		if onground
			lungecancelled = 0
		
		// dash end
		if key_left_press || key_right_press
			dashing = 0
		
		if groundlunge_cooldown > -51
			groundlunge_cooldown--
		
		// dash hitbox
		if dashing = 1
		{
			if groundlunge_cooldown < 0 && onground
				dashing = 0
			
			if hspeed < 0
				instance_create_depth(x - 35,y,depth,obj_dash_hitbox)
			else if hspeed > 0
				instance_create_depth(x + 35,y,depth,obj_dash_hitbox)
			
			if vspeed < -5 && use_dash > 1
				instance_create_depth(x,y -40,depth,obj_dash_hitbox_u)
		}
		else
		{
			if groundlunge_cooldown < -50
				dash_charge = 1
		}
		
		// ground pound
		if use_gp && !pounding && !instance_place(x,y+5,obj_LGsolid) && key_down_press
		{
			state = playerstate.ground_pound
			pounding = 1
			begingp = 1
		}
		gp_time = 0
		
			if hspeed < 0
				facing = -1
			if hspeed > 0
				facing = 1
		// taunt
		taunt_qualify = 1
	}
	break;
	
	case playerstate.balloon_normal: // balloon
	{
		//louchester anims
		if campaign = 3
		{
			if onground
			{
				if hspeed = 0
					if jumpcharge > 0
						if jumpcharge_starting
							sprite_index = spr_playerLS_chargejumpstart
						else
							if jumpcharge > 15
								sprite_index = spr_playerLS_chargejumpready
							else
								sprite_index = spr_playerLS_chargejump
					else
						sprite_index = spr_playerLS_still
				else
					sprite_index = spr_playerLS_walk
				
				beginfall = 1
				beginfall_start = 1
			}		
			else
			if !dashing
				if beginjump
				{
					if enddash
						sprite_index = spr_playerLS_airjumpend
					else
						sprite_index = spr_playerLS_balloonjump
					beginfall = 0
				}
				else
					if beginfall = 0
						sprite_index = spr_playerLS_balloonfly
					else
					{
						sprite_index = spr_playerLS_balloonfall
						if beginfall_start
						{
							image_index = 0
							beginfall_start = 0
						}
					}
			else
				if beginjump
					sprite_index = spr_playerLS_boostjumpstart
				else
					sprite_index = spr_playerLS_boostjumpair
		}
		
		// velocity
		if key_jump
		{
			if vspeed < 1
				vspeed += 0.2
			else if vspeed > 1
				vspeed -= 0.2
		}
		else
		{
			if vspeed < 3
				vspeed += 0.2
		}
		
		
		// walkin
		if key_up && !dashing && onground
		{
			if jumpcharge < 1
			{
				jumpcharge_starting = 1
				image_index = 0
			}
			jumpcharge += 1
			hspeed = 0
		}
		else
		{
			jumpcharge = 0
			if key_right && !dashing
			{
				hspeed = 4
				facing = 1
			}
			else 
			if key_left && !dashing
			{
				hspeed = -4
				facing = -1
			}
			else
				if !dashing
					hspeed = 0
		}
			
		// jumpin
		if key_jump_press && (instance_place(x,y + 5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope) || coyote_time || jumps > 0 || clouds > 0) // ground
		{
			var jmp = 0
			
			if !onground
			{
				if clouds > 0 && (!onground && !coyote_time)
				{
					clouds--
					jumps = 1
					jmp = 1	
				}
				else if jumps > 0
				{
					jumps--
					jmp = 1
				}		
			}
			else
				jmp = 1
			
			if jmp
			{
				if key_up && jumpcharge > 30
				{
					vspeed = -10
					jumpcharge = 0
					jump_charged = 1
				}
				else
					vspeed = -7
				
				if !(instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
					audio_play_sound(sfx_LGjump,1,0)
				
				beginjump = 1
				jumping = 1
				image_index = 0
				coyote_time = 0
			}
		}
		if jumping && !key_jump && use_varjump && !balloonjumping
		{
			vspeed = -3
			jumping = 0
		}
		
		if coyote_time
			jumps = 2
		else
			if !onground && jumps = 2
				jumps = 1
		if instance_place(x,y + 5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope)
			jumps = 1
				
		// dashin
		//if keyboard_check_pressed(cont_attack) && dash_charge = 1
		//{
		//	if key_right
		//		hspeed = 9
		//	else
		//	if key_left
		//		hspeed = -9
		//	else
		//	hspeed = 0
			
		//	vspeed = -2
		//	dashing = 1
		//	dash_charge = 0
		//	beginjump = 1
		//	image_index = 0
		//}
		
		// dash end
		if key_left_press || key_right_press
			dashing = 0
		
		// dash hitbox
		if dashing = 1
		{
			if hspeed < 0
				instance_create_depth(x - 35,y,depth,obj_dash_hitbox)
			else if hspeed > 0
				instance_create_depth(x + 35,y,depth,obj_dash_hitbox)
			
			if vspeed < -5 && use_dash > 1
				instance_create_depth(x,y -40,depth,obj_dash_hitbox_u)
		}
		
		// ground pound
		if key_down_press && !onground
		{
			state = playerstate.balloon_pound
			sprite_index = spr_playerLS_balloonpoundstart
			image_index = 0
		}
		// taunt
		taunt_qualify = 0
	}
	break;
	
	case playerstate.balloon_dash:
	{
		if vspeed != -1
			vspeed = lerp(vspeed,-1,0.1)
		hspeed = 7 * facing
			
		instance_create_depth(x + 40,y,-1,obj_dash_hitbox)
		if !instance_place(x,y,obj_LGtrail)
			with instance_create_depth(x,y,depth + 1,obj_LGtrail)
				fromplayer = 1
		
		// taunt
		taunt_qualify = 1
		
		if key_jump
		{
			state = idlestate
			vspeed = -5
		}
		
	}
	break;
	
	case playerstate.water_jump:
	{
		if beginjump
			sprite_index = spr_playerLS_fishlaunchstart
		else
			sprite_index = spr_playerLS_fishlaunch
		
		if key_right
			hspeed = 3
		else 
		if key_left
			hspeed = -3
		else
			hspeed = 0
			
		if vspeed < 15
			vspeed += 0.3
			
		if instance_place(x,y+1,obj_LGsolid) || instance_place(x,y+1,obj_LGslope)
			state = idlestate
			
		taunt_qualify = 0
	}
	break;
	
	case playerstate.dying:
	{
		if vspeed < 15
			vspeed += 0.3
		if instance_place(x,y,obj_swimwater) && vspeed > -7
			vspeed -= 0.45
		
		//hspeed = lerp(hspeed,0,0.015)
		
		rot += abs(hspeed) * (sign(hspeed) * -1)
		
		if (abs(hspeed) < 3 && abs(vspeed) < 7 && (instance_place(x,y+5,obj_LGsolid) || instance_place(x,y,obj_swimwater)) && state != -1) || speed < 0.5
		{
			state = -1
			visible = 0
			rot = 0
			speed = 0
			audio_play_sound(sfx_LGexplosion,1,0)
			var i;
			for (i = 0; i < 100; i++)
			{
				instance_create_depth(x,y,-500,obj_explosionparticle)
			}
			with instance_create_depth(x,y,depth - 1,obj_explosionparticle)
			{
				speed = 0
				image_alpha = 5
				sprite_index = spr_boom
			}

			obj_music.alarm[0] = 200
		}
			
		var s = sprite_index
		var _xs = xs * facing
		var i = image_index
		var ia = rot
		with instance_create_depth(x,y,depth + 1,obj_LGtrail)
		{
			image_speed = 0
			startfade = 1
			sprite_index = s
			image_index = i
			image_xscale = _xs
			image_angle = ia
			fromplayer = 1
		}
		
		sprite_index = spr_playerLS_pain
		
		taunt_qualify = 0
	}
	break;
	
	case playerstate.high:
	{
		//louchester anims
		if campaign = 3
		{
			if onground
			{
				if !key_left && !key_right
					sprite_index = spr_playerLS_high_idle
				else
					sprite_index = spr_playerLS_high_walk
				
				beginfall = 1
				beginfall_start = 1
			}		
			else
			if !dashing
				if beginjump
				{
					if enddash
						sprite_index = spr_playerLS_airjumpend
					else
						sprite_index = spr_playerLS_high_jumpstart
					beginfall = 0
				}
				else
					if beginfall = 0
						sprite_index = spr_playerLS_high_jump
					else
					{
						sprite_index = spr_playerLS_high_ledgefall
						if beginfall_start
						{
							image_index = 0
							beginfall_start = 0
						}
					}
			else
				if beginjump
					sprite_index = spr_playerLS_boostjumpstart
				else
					sprite_index = spr_playerLS_boostjumpair
		}
		
		// velocity
		if vspeed < 15
			vspeed += 0.3
		
		
		// walkin
		if key_right && !dashing
		{
			hspeed = lerp(hspeed,6,0.05)
			facing = 1
		}
		else 
		if key_left && !dashing
		{
			hspeed = lerp(hspeed,-6,0.05)
			facing = -1	
		}
		else
			if !dashing
				hspeed = lerp(hspeed,0,0.025)
			
		// jumpin
		if key_jump_press && (instance_place(x,y + 5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope) || coyote_time || clouds > 0) // ground
		{
			if key_up && jumpcharge > 15
			{
				vspeed = -13
				jumpcharge = 0
			}
			else
				vspeed = -9
				
			if !(instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			image_index = 0
			jumping = 1
			coyote_time = 0
			if clouds > 0 && (!onground && !coyote_time)
				clouds--
		}
		if jumping && !key_jump && use_varjump && !balloonjumping
		{
			vspeed = -3
			jumping = 0
		}
		
				
		//dashin
		if key_attack_press && dash_charge = 1
		{
			if facing = 1
				if hspeed < 8
					hspeed = 9
				else
					hspeed += 1.5
			else
			if facing = -1
				if hspeed > -8
					hspeed = -9
				else
					hspeed += -1.5
			
			vspeed = -2
			dashing = 1
			dash_charge = 0
			beginjump = 1
			image_index = 0
		}
		if dashing && groundlunge_cooldown > -51
			groundlunge_cooldown--
			
		if groundlunge_cooldown = -50
			dash_charge = 1
		
		// dash end
		if (key_left_press && facing = 1) || (key_right_press && facing = -1)
		{
			dashing = 0
			groundlunge_cooldown = -52
		}
		
		// dash hitbox
		if dashing = 1
		{
			with instance_create_depth(x,y,depth + 1,obj_LGtrail)
			{
				image_speed = 0
				startfade = 1
				sprite_index = other.sprite_index
				image_index = other.image_index
				image_xscale = other.xs * other.facing
				image_angle = other.image_angle
				fromplayer = 1
			}
			if hspeed < 0
				instance_create_depth(x - 35,y,depth,obj_dash_hitbox)
			else if hspeed > 0
				instance_create_depth(x + 35,y,depth,obj_dash_hitbox)
			
			if vspeed < -5 && use_dash > 1
				instance_create_depth(x,y -40,depth,obj_dash_hitbox_u)
		}
		
		// ground pound
		if use_gp && !pounding && !instance_place(x,y+5,obj_LGsolid) && key_down_press
		{
			state = playerstate.ground_pound
			pounding = 1
			begingp = 1
		}
		gp_time = 0
		
			//if hspeed < 0
			//	facing = -1
			//if hspeed > 0
			//	facing = 1
		// taunt
		taunt_qualify = 1
	}
	break;
	
	case playerstate.level_end:
	{
		if !(0.5 > abs(x - obj_winhole.x))
			x -= (x - obj_winhole.x) / 10
		else
			x = obj_winhole.x
		vspeed += 0.5
		hspeed = 0
		xs = 1 - abs(vspeed / 50)
		ys = 1 + abs(vspeed / 50)
		
		taunt_qualify = 0
	}
	break;
	
	case playerstate.lava_hurt:
	{
		sprite_index = spr_playerLS_pain
		
		if key_right
			hspeed = 5
		else 
		if key_left
			hspeed = -5
		else
			hspeed = 0
			
		if vspeed < 15
			vspeed += 0.3
			
		if instance_place(x,y+1,obj_LGsolid) || instance_place(x,y+1,obj_LGslope)
			state = idlestate
			
		taunt_qualify = 0
	}
	break;
	
	case playerstate.cart:
	{
		x = bound_obj.x
		y = bound_obj.y
	}
	break;
	
	case playerstate.swim:
	{
		taunt_qualify = 1
		
		if campaign = 3
			if key_left || key_right || key_up || key_down
				if abs(hspeed) > 4.5 || abs(vspeed) > 4.5
					sprite_index = spr_playerLS_swimdash
				else
					sprite_index = spr_playerLS_swimmove
			else
				sprite_index = spr_playerLS_swimstill
		
		
		
		if key_right
		{
			hsp = 4
			facing = 1
			if !key_down && !key_up
				vface = 0
			hface = 1
		}
		else if key_left
		{
			hsp = -4
			facing = -1
			if !key_down && !key_up
				vface = 0
			hface = -1
		}
		else
			hsp = 0
			
		if key_down
		{
			vsp = 4
			vface = 1
			if !key_left && !key_right
				hface = 0
		}
		else if key_up
		{
			vsp = -4
			vface = -1
			if !key_left && !key_right
				hface = 0
		}
		else
			vsp = 0
		
		hspeed = lerp(hspeed,hsp,0.05)
		vspeed = lerp(vspeed,vsp,0.05)
		
		swimdashtime++
		if (key_attack_press || key_jump_press) && swimdashtime > 35
		{
			swimdashtime = 0
			
			if key_right
				if hspeed < 4
					hspeed = 5
				else
					hspeed += 1
			else if key_left
				if hspeed > -4
					hspeed = -5
				else
					hspeed -= 1
			
			
			if key_down
				if vspeed < 4
					vspeed = 5
				else
					vspeed += 1
			else if key_up
				if vspeed > -4
					vspeed = -5
				else
					vspeed -= 1
			vspeed = clamp(vspeed,-7,7)
		}
		
		if abs(hspeed) > 4.5
		{
			instance_create_depth(x + (40 * sign(hspeed)),y,-1,obj_dash_hitbox)
			trailspawntime++
			if trailspawntime > 5
			{
				trailspawntime = 0
				with instance_create_depth(x,y,depth + 1,obj_LGtrail)
				{
					image_alpha = 0.5
					flash = 0
					fromplayer = 1
				}
			}
		}
		if abs(vspeed) > 4.5
		{
			instance_create_depth(x,y + (40 * sign(vspeed)),-1,obj_dash_hitbox_u)
			trailspawntime++
			if trailspawntime > 5
			{
				trailspawntime = 0
				with instance_create_depth(x,y,depth + 1,obj_LGtrail)
				{
					image_alpha = 0.5
					flash = 0
					fromplayer = 1
				}
			}
		}
		
		rot = point_direction(0,0,abs(hface) * facing,vface) - 90
		if !instance_place(x,y,obj_swimwater)
		{
			var i;
			for (i = 0; i < 20; i++)
				with instance_create_depth(random_range(bbox_left,bbox_right),bbox_bottom - 16,depth + 1,obj_eatenapple)
				{
					sprite_index = spr_waterparticles
					image_index = irandom_range(0,4)
					fadeout = 1
					vspeed = random_range(-3,-5)
					hspeed = random_range(-1.5,1.5)
				}
			rot = 0
			state = idlestate
			if key_jump || key_attack
				vspeed = -9
			else
				vspeed = -6
			audio_play_sound(sfx_water2,1,0)
		}
	}
	break;
	
	case playerstate.balloon_pound:
	{
		with instance_create_depth(x,y,depth + 1,obj_LGtrail)
		{
			image_speed = 0
			startfade = 1
			sprite_index = other.sprite_index
			image_index = other.image_index
			image_xscale = other.xs * other.facing
			image_angle = other.image_angle
			fromplayer = 1
		}
		
		vspeed = 10
		
		if key_right
			hspeed = 4
		else if key_left
			hspeed = -4
		else
			hspeed = 0
			
		if onground
			state = idlestate
			
		instance_create_depth(x,y + 40,depth,obj_dash_hitbox_u)
		taunt_qualify = 0
	}
	break;
	
	case playerstate.keyfly:
	{
		hspeed = 0
		if vspeed > -15
			vspeed -= 0.1
		inv = 1
		inv_frames = 0
		invtime = 0
		with instance_create_depth(x + random_range(-16,16),y + random_range(32,48),depth - 1,obj_explosionparticle)
		{
			sprite_index = spr_highjumppart
			speed = 2
			anim_end = 1
		}
		idlestate = playerstate.idle
		statesave = playerstate.idle
		taunt_qualify = 0
		
		sprite_index = spr_playerLS_fishlaunch
	}
	break;
	
	case playerstate.antigrav:
	{
		obj_LGcamera.targetangle = 180
		image_yscale = -1
		ys = -1
		
		//louchester anims
		if campaign = 3
		{
			if instance_place(x,y-1,obj_LGsolid) || instance_place(x,y-5,obj_LGslope)
			{
				if hspeed = 0
					if jumpcharge > 0
						if jumpcharge_starting
							sprite_index = spr_playerLS_chargejumpstart
						else
							if jumpcharge > 15
								sprite_index = spr_playerLS_chargejumpready
							else
								sprite_index = spr_playerLS_chargejump
					else
						sprite_index = spr_playerLS_still
				else
					sprite_index = spr_playerLS_walk
				
				beginfall = 1
				beginfall_start = 1
			}		
			else
			if !dashing
				if beginjump
				{
					if enddash
						sprite_index = spr_playerLS_airjumpend
					else
						sprite_index = spr_playerLS_jumpstart
					beginfall = 0
				}
				else
					if beginfall = 0
						sprite_index = spr_playerLS_jumpair
					else
					{
						sprite_index = spr_playerLS_beginfall
						if beginfall_start
						{
							image_index = 0
							beginfall_start = 0
						}
					}
			else
				if beginjump
					sprite_index = spr_playerLS_boostjumpstart
				else
					sprite_index = spr_playerLS_boostjumpair
		}
		
		// velocity
		if vspeed > -15
			vspeed -= 0.3
		
		
		// walkin
		if key_up && !dashing && (instance_place(x,y - 1,obj_LGsolid) || instance_place(x,y - 1,obj_LGslope))
		{
			if jumpcharge < 1
			{
				jumpcharge_starting = 1
				image_index = 0
			}
			jumpcharge += 1
			hspeed = 0
		}
		else
		{
			jumpcharge = 0
			if key_left && !dashing
				hspeed = 4
			else 
			if key_right && !dashing
				hspeed = -4
			else
				if !dashing
					hspeed = 0
		}
			
		// jumpin
		if key_jump_press && (instance_place(x,y - 5,obj_LGsolid) || instance_place(x,y - 5,obj_LGslope) || coyote_time) // ground
		{
			if key_up && jumpcharge > 30
			{
				vspeed = 13
				jumpcharge = 0
				jump_charged = 1
			}
			else
				vspeed = 9
				
			if !(instance_place(x,y - 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			jumping = 1
			image_index = 0
			coyote_time = 0
		}
		if jumping && !key_jump && use_varjump && !balloonjumping
		{
			vspeed = 3
			jumping = 0
		}
				
		// dashin
		//if keyboard_check_pressed(cont_attack) && dash_charge = 1
		//{
		//	if key_right
		//		hspeed = 9
		//	else
		//	if key_left
		//		hspeed = -9
		//	else
		//	hspeed = 0
			
		//	vspeed = -2
		//	dashing = 1
		//	dash_charge = 0
		//	beginjump = 1
		//	image_index = 0
		//}
		
		// dash end
		if key_left_press || key_right_press
			dashing = 0
		
		// dash hitbox
		if dashing = 1
		{
			if hspeed < 0
				instance_create_depth(x - 35,y,depth,obj_dash_hitbox)
			else if hspeed > 0
				instance_create_depth(x + 35,y,depth,obj_dash_hitbox)
			
			if vspeed < -5 && use_dash > 1
				instance_create_depth(x,y -40,depth,obj_dash_hitbox_u)
		}
		
		// ground pound
		if use_gp && !pounding && !(instance_place(x,y-5,obj_LGsolid) || instance_place(x,y - 5,obj_LGslope)) && keyboard_check_pressed(cont_down)
		{
			state = playerstate.ground_pound
			pounding = 1
			begingp = 1
		}
		gp_time = 0
		
			if hspeed < 0
				facing = -1
			if hspeed > 0
				facing = 1
		// taunt
		taunt_qualify = 1
	}
	break;
	
	case playerstate.level_enter:
	{
		if !(0.5 > abs(x - obj_to_hit.x))
			x -= (x - obj_to_hit.x) / 10
		else
			x = obj_to_hit.x
		vspeed += 0.5
		hspeed = 0
		xs = 1 - abs(vspeed / 50)
		ys = 1 + abs(vspeed / 50)
		
		taunt_qualify = 0
	}
	break;
	
	case playerstate.noclip:
	{
		if key_right
			hspeed = 8
		else if key_left
			hspeed = -8
		else
			hspeed = 0
			
		if key_down
			vspeed = 8
		else if key_up
			vspeed = -8
		else
			vspeed = 0
		
		sprite_index = spr_playerLS_still
		facing = 1
	}
	break;
	
	case playerstate.pipe:
	{
		collisionmask = spr_null
		facing = 1
		
		if distance_to_object(obj_pipeleft) < 2
		{
			hspeed = -7
			vspeed = 0
		}
		
		if distance_to_object(obj_piperight) < 2
		{
			hspeed = 7
			vspeed = 0
		}
		
		if distance_to_object(obj_pipeup) < 2
		{
			hspeed = 0
			vspeed = -7
		}
		
		if distance_to_object(obj_pipedown) < 2
		{
			hspeed = 0
			vspeed = 7
		}
		
		if distance_to_object(obj_pipeexit) < 2
		{
			state = idlestate
			collisionmask = spr_playerLS_still
		}
	}
	break;
	
	case playerstate.sliding:
	{
		hspeed = 5
		player_velocity()
		
		if key_jump_press && (instance_place(x,y + 5,obj_LGsolid) || instance_place(x,y + 5,obj_LGslope) || coyote_time || clouds > 0) // ground
		{
			if key_up && jumpcharge > 30
			{
				vspeed = grav * -13
				jumpcharge = 0
				jump_charged = 1
			}
			else
				vspeed = grav * -9
				
			if !(instance_place(x,y + 10,obj_LGairjump) || instance_place(x,y,obj_LGairjump))
				audio_play_sound(sfx_LGjump,1,0)
				
			beginjump = 1
			jumping = 1
			image_index = 0
			coyote_time = 0
			if clouds > 0 && (!onground && !coyote_time)
				clouds--
		}
		if jumping && !key_jump && use_varjump && !balloonjumping
		{
			vspeed = -3 * grav
			jumping = 0
		}
	}
	break;
}

if taunt_qualify && key_taunt_press && !instance_exists(obj_hitstun)
	player_taunt()

if pause_state = pausestate.playerpause
{
	if !started_pause
		pause_player_init()
	else
		pause_player_keep()
}
else
{
	if started_pause
		pause_player_end()
	
	_time++
	arrowsin = sin(_time / 10) * 2
	hatsin = sin(_time / 7) * 2
}

get_inputs(0)

//if instance_exists(obj_gms)
//{
//	gms_self_set("xs",xs);
//	gms_self_set("facing",facing);
//	gms_self_set("alph",alph);
//	gms_self_set("ys",ys);
//	gms_self_set("rot",rot);
//	gms_self_set("pal",paletteselect)
//	gms_self_set("balloon",drawballoon)
//	gms_self_set("hat",hat)
//}
