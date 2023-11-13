if vsp >= 0
	jumping = false

var axdir = gamepad_axis_value(0,gp_axislh)
var axisv = gamepad_axis_value(0,gp_axislv)
if KEY_D
	axisv = 1

if axisv <= 0
	alreadypounded = false

time++
if grounded
{
	hasdoublejump = true
	anim_hurt = false	
	anim_egg = false
}

switch state
{
	case states.normal:
	{
		lamptimer = 0
		image_speed = 1
		if grounded
		{
			if abs(axdir) > 0 || KEY_L || KEY_R
			{
				sprite_index = spr_playerR_walk
				image_speed = abs(hsp) / 3
			}
			else
				if axisv > 0.1
					sprite_index = spr_playerR_idle
				else
					sprite_index = spr_playerR_idle
		}
		else
		{
			if anim_hurt
				sprite_index = spr_playerR_hurt
			else if anim_jump
				sprite_index = spr_playerR_jumpstart
			else if anim_egg
				sprite_index = spr_playerR_jumphold
			else
				sprite_index = spr_playerR_jumphold
		}
		
		//STROMBULOUS
		if levelcomplete
		{
			sprite_index = spr_playerR_jumphold
			instance_create_depth(x,bbox_bottom + yoff,depth - 1,obj_whiteparticle)	
		}
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 0
			var walksp = 7
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				if axdir != 0
					facing = sign(axdir)
				if abs(axdir) > 0
					hsp = approach(hsp,(walksp + (holdrun * runsp)) * axdir,1)
				else
					hsp = approach(hsp,0,2)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					if place_meeting(x,y,obj_airjump) // bad coding practice. do i care? no, i have hours remaining.
						play_sfx(sfx_bubblejump)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
				else if hasdoublejump && can_doublejump && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					repeat 5
						with instance_create_depth(x,y,depth,obj_whiteparticle)
							vspeed = random_range(3,5)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = false
					anim_jump = true
					image_index = 0
					anim_hurt = false
					anim_egg = false
				}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				//the wallbumb is GONE!
				//if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4
				//{
				//	play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
				//	x -= hsp
				//	hsp *= -0.75
				//	//if grounded
				//	//	vsp = -3
				//	//if !place_meeting(x,y - 11,obj_solid)
				//	//	y -= 11
				//	anim_hurt = true
				//	anim_egg = false
				//}
		
				if can_egg // yeah i wont remove this incase it gets used just keep the variable at false ok bye
				{
					if (gamepad_button_check_pressed(0,CONT_X) || KEY_EGG_P) && instance_number(obj_eggprojectile) < 5
					{
						play_sfx(sfx_eggtoss)
						anim_egg = true
						anim_hurt = false
						
						var dir = 1
						if axdir < 0
							dir = -1
						if axdir = 0
							dir = facing
					
						with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
							hspeed = (20 * dir)
							
						if grounded
						{
							vsp = -5
							if !place_meeting(x,y - 11,obj_solid)
								y -= 11
						}
					}
				}
				
				if can_groundpound
				{
					if axisv > 0.5 && !grounded && !alreadypounded
					{
						//play_sfx(sfx_gpstart)
						vsp = -4
						state = states.groundpound
					}
				}
			}
		}
		else if !broimdead
			hsp = lerp(hsp,0,0.2)
			
		if broimdead
		{
			sprite_index = spr_playerR_hurt
			hsp = lerp(hsp,0,0.05)
			vsp = lerp(vsp,0,0.05)
			deadtimer = approach(deadtimer,-1,1)
			if deadtimer <= 0
			{
				if deadtimer > -1 && !audio_is_playing(sfx_bubblemove)
					play_sfx(sfx_bubblemove)
				hsp = 0
				vsp = 0
				x = lerp(x,checkpointx,0.035)
				y = lerp(y,checkpointy - 100,0.035) 
		
				if distance_to_point(checkpointx,checkpointy - 100) < 10
				{
					broimdead = false
					play_sfx(sfx_bubblepop)	
				}
			}
		}
		
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 20 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick)
			}
		}
		else
			runtimer = 99
	}
	break;
	
	case states.rocket:
	{
		image_speed = 1
		sprite_index = spr_playerJ_rocket
		var c = choose(0,1)
		if c
			instance_create_depth(x + (4 * facing),y - 20,-2,obj_confetti) // i hope this does not kill performance :p
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if KEY_U
			axisv = -1
		if KEY_D	
			axisv = 1
		
		hsp = approach(hsp,11 * facing,0.6)
		vsp = approach(vsp,axisv * 5,0.5)
		
		if place_meeting(x + hsp,y,obj_solid)
		{
			anim_jump = false
			anim_hurt = true
			audio_stop_sound(sfx_getrocket)
			x -= hsp
			state = states.normal
			vsp = -4
			hsp = -20 * facing
			play_sfx(sfx_explode)
			with instance_create_depth(x + (4 * facing),y - 20,-2,obj_killedrocket)
				image_xscale = other.facing
			// the xbox will NOT like this one (i dont care!) - originally 150
			repeat 75
				instance_create_depth(random_range(x - 20,x + 20),random_range(y - 20,y + 20),-2,obj_confetti) 
		}
		
		//possibly unused thing
		//if gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P
		//{
		//	state = states.normal
		//	play_sfx(sfx_jump)
		//	vsp = -15
		//	jumping = true
		//	hasdoublejump = true
		//}
		
		//thou shalt not egg any longer
		//if can_egg
		//{
		//	if (gamepad_button_check_pressed(0,CONT_X) || KEY_EGG_P) && instance_number(obj_eggprojectile) < 5
		//	{
		//		play_sfx(sfx_eggtoss)
				
		//		var dir = 1
		//		if axdir < 0
		//			dir = -1
		//		if axdir = 0
		//			dir = facing
					
		//		with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
		//			hspeed = (20 * dir)
		//	}
		//}
		hasdoublejump = true
	}
	break;
	
	case states.golf:
	{
		sprite_index = spr_playerR_golfball
		
		rot -= hsp
		if rot > 360
			rot -= 360
		if rot < -360
			rot += 360
			
		if abs(hsp) > 10 || abs(vsp) > 10
			with instance_create_depth(x,y,depth + 1,obj_trail)
				image_angle = other.rot
		
		if cangolf
		{
			if mouse_check_button_pressed(mb_left)
			{
				play_sfx(sfx_golfhit)
				
				var sp = 30
				var dir = point_direction(x,y,mouse_x,mouse_y)
				var h = lengthdir_x(sp,dir)
				var v = lengthdir_y(sp,dir)
				
				hsp = h
				vsp = v
				cangolf = false
			}
			
			drawray = true
			
			if gamepad_button_check_pressed(0,CONT_LB) || gamepad_button_check_pressed(0,CONT_LT) || gamepad_button_check_pressed(0,CONT_RB) || gamepad_button_check_pressed(0,CONT_RT)
			{
				play_sfx(sfx_golfhit)
				
				var sp = 30
				var dir = point_direction(x,y,x + gamepad_axis_value(0,gp_axislh),y + gamepad_axis_value(0,gp_axislv))
				var h = lengthdir_x(sp,dir)
				var v = lengthdir_y(sp,dir)
				
				hsp = h
				vsp = v
				cangolf = false
			}
		}
		else
		{
			drawray = false
			if abs(vsp) < 0.5 && abs(hsp) < 0.5 && !cangolf
			{
				cangolf = true
				hsp = 0
				vsp = 0
			}
		}
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if place_meeting(x,y + vsp,obj_solid) && (abs(vsp) > 7 || (abs(hsp) > 8 && abs(vsp) > 3))
		{
			play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
			if !place_meeting(x,y - vsp,obj_solid)
				y -= vsp
			vsp *= -0.6
			hsp /= 1.05
		}
		if place_meeting(x,y + vsp,obj_platform) && !place_meeting(x,y + 1,obj_platform) && (abs(vsp) > 7 || (abs(hsp) > 8 && abs(vsp) > 3)) && vsp > 0
		{
			play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
			if !place_meeting(x,y - vsp,obj_solid)
				y -= vsp
			vsp *= -0.6
			hsp /= 1.05
		}
		if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 3
		{
			play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
			x -= hsp
			hsp *= -0.6
		}
		
		if grounded
		{
			hsp = approach(hsp,0,0.15)
		}
	}
	break;
	
	case states.groundpound:
	{
		if abs(vsp) > 7
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		sprite_index = spr_playerJ_groundpound
		
		alreadypounded = true
		hsp = approach(hsp,3 * sign(axdir),0.75)
		vsp = approach(vsp,20,0.7)
		
		if grounded
		{
			audio_stop_sound(sfx_gpstart)
			play_sfx(sfx_buttersmush)
			y -= 11
			vsp = -5
			state = states.normal
			instance_create_depth(x,bbox_bottom + 15,depth,obj_butteronground)
			repeat 10
				instance_create_depth(x,bbox_bottom,depth,obj_whiteparticle)
		}
	}
	break;
	
	case states.floured:
	{
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 17 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick,false)
			}
		}
		else
			runtimer = 99
		
		image_speed = 1
		sprite_index = spr_possessable_rollers
		image_index = 1
		//instance_create_depth(x,y,depth,obj_whiteparticle)
		
		vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 3
			var walksp = 12
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				hsp = approach(hsp,10 * facing,0.25)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
				//else if hasdoublejump && can_doublejump && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				//{
				//	repeat 15
				//		with instance_create_depth(x,y,depth,obj_whiteparticle)
				//			vspeed = random_range(3,5)
				//	play_sfx(sfx_jump)
				//	vsp = -15
				//	jumping = true
				//	hasdoublejump = false
				//	anim_jump = true
				//	image_index = 0
				//	anim_hurt = false
				//	anim_egg = false
				//}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4
				{
					play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
					x -= hsp
					hsp *= -0.75
					facing *= -1
					anim_hurt = true
					anim_egg = false
				}
			}
		}
	}
	break;
	
	case states.lavalamp:
	{
		lamptimer += 0.005
		image_blend = merge_color(c_white,c_red,lamptimer)
		if lamptimer >= 1
		{
			state = states.normal
			//instance_destroy(possessed_object)
			with possessed_object
			{
				visible = true
				x = xstart
				y = ystart
				repeat 15
					with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
					{
						image_angle = point_direction(0,0,hspeed,vspeed)
						sprite_index = spr_bubbleline
						alphlower = random_range(0.07,0.09)
						starth = abs(hspeed / 50)
						startv = abs(vspeed / 50)
					}
			}
			possessed_object = noone
			image_blend = c_white
		}	
		image_speed = 0
		image_index = 1
		sprite_index = spr_possessable_lavalamp
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 0
			var walksp = 15
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				if axdir != 0
					facing = sign(axdir)
				if abs(axdir) > 0
					hsp = approach(hsp,(walksp + (holdrun * runsp)) * axdir,0.5)
				else
					hsp = approach(hsp,0,1)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					if place_meeting(x,y,obj_airjump) // bad coding practice. do i care? no, i have hours remaining.
						play_sfx(sfx_bubblejump)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
				else if hasdoublejump && can_doublejump && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					repeat 5
						with instance_create_depth(x,y - 15,depth,obj_whiteparticle)
							vspeed = random_range(-3,-5)
					play_sfx(sfx_jump)
					vsp = -5
					jumping = true
					hasdoublejump = false
					anim_jump = true
					image_index = 0
					anim_hurt = false
					anim_egg = false
					
					//repeat 10
					//	with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
					//	{
					//		hspeed = other.hsp + random_range(-4,4)
					//		vspeed = random_range(-1,3)	
					//	}
				}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				//the wallbumb is GONE!
				//if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4
				//{
				//	play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
				//	x -= hsp
				//	hsp *= -0.75
				//	//if grounded
				//	//	vsp = -3
				//	//if !place_meeting(x,y - 11,obj_solid)
				//	//	y -= 11
				//	anim_hurt = true
				//	anim_egg = false
				//}
		
				//if can_egg // yeah i wont remove this incase it gets used just keep the variable at false ok bye
				//{ // it was used cool
					//if (gamepad_button_check_pressed(0,CONT_X) || KEY_EGG)
					//{
						eggtime--
						if eggtime <= 0
						{
							eggtime = 4
							play_sfx(sfx_eggtoss)
							anim_egg = true
							anim_hurt = false
						
							var dir = 1
							if axdir < 0
								dir = -1
							if axdir = 0
								dir = facing
					
							with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
							{
								hspeed = (5 * dir) + other.hsp
								vspeed = random_range(-3,-6)	
							}
						//}
							
						//if grounded
						//{
						//	vsp = -5
						//	if !place_meeting(x,y - 11,obj_solid)
						//		y -= 11
						//}
					}
				//}
				
				if can_groundpound
				{
					if axisv > 0.5 && !grounded && !alreadypounded
					{
						//play_sfx(sfx_gpstart)
						vsp = -4
						state = states.groundpound
					}
				}
			}
		}
		else if !broimdead
			hsp = lerp(hsp,0,0.2)
			
		if broimdead
		{
			sprite_index = spr_playerJ_pain
			hsp = lerp(hsp,0,0.05)
			vsp = lerp(vsp,0,0.05)
			deadtimer = approach(deadtimer,-1,1)
			if deadtimer <= 0
			{
				if deadtimer > -1 && !audio_is_playing(sfx_bubblemove)
					play_sfx(sfx_bubblemove)
				hsp = 0
				vsp = 0
				x = lerp(x,checkpointx,0.035)
				y = lerp(y,checkpointy - 100,0.035) 
		
				if distance_to_point(checkpointx,checkpointy - 100) < 10
				{
					broimdead = false
					play_sfx(sfx_bubblepop)	
				}
			}
		}
		
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 20 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick)
			}
		}
		else
			runtimer = 99
	}
	break;
	
	case states.chicken:
	{
		image_speed = 0
		image_index = 1
		sprite_index = spr_possessable_chicken
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 0
			var walksp = 15
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				if axdir != 0
					facing = sign(axdir)
				if abs(axdir) > 0
					hsp = approach(hsp,(walksp + (holdrun * runsp)) * axdir,0.5)
				else
					hsp = approach(hsp,0,1)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					if place_meeting(x,y,obj_airjump) // bad coding practice. do i care? no, i have hours remaining.
						play_sfx(sfx_bubblejump)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
				else if can_doublejump && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					//repeat 5
					//	with instance_create_depth(x,y - 15,depth,obj_whiteparticle)
					//		vspeed = random_range(-3,-5)
					play_sfx(sfx_jump)
					vsp = -12
					jumping = true
					hasdoublejump = false
					anim_jump = true
					image_index = 0
					anim_hurt = false
					anim_egg = false
					
					//repeat 10
					//	with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
					//	{
					//		hspeed = other.hsp + random_range(-4,4)
					//		vspeed = random_range(-1,3)	
					//	}
				}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				//the wallbumb is GONE!
				//no its not dumbass
				if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4 && place_meeting(x + hsp,y - 32,obj_solid)
				{
					play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
					x -= hsp
					hsp *= -0.75
					//if grounded
					//	vsp = -3
					//if !place_meeting(x,y - 11,obj_solid)
					//	y -= 11
					anim_hurt = true
					anim_egg = false
				}
		
				
				if can_groundpound
				{
					if axisv > 0.5 && !grounded && !alreadypounded
					{
						//play_sfx(sfx_gpstart)
						vsp = -4
						state = states.groundpound
					}
				}
			}
		}
		else if !broimdead
			hsp = lerp(hsp,0,0.2)
			
		if broimdead
		{
			sprite_index = spr_playerJ_pain
			hsp = lerp(hsp,0,0.05)
			vsp = lerp(vsp,0,0.05)
			deadtimer = approach(deadtimer,-1,1)
			if deadtimer <= 0
			{
				if deadtimer > -1 && !audio_is_playing(sfx_bubblemove)
					play_sfx(sfx_bubblemove)
				hsp = 0
				vsp = 0
				x = lerp(x,checkpointx,0.035)
				y = lerp(y,checkpointy - 100,0.035) 
		
				if distance_to_point(checkpointx,checkpointy - 100) < 10
				{
					broimdead = false
					play_sfx(sfx_bubblepop)	
				}
			}
		}
		
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 20 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick)
			}
		}
		else
			runtimer = 99
	}
	break;
	
	case states.mariodeath:
	{
		sprite_index = spr_playerR_touchgoomba
		vsp = 0
		hsp = 0
		mariotimer++
		if mariotimer = 60
		{
			mariospeed = -9
		}
		if mariotimer > 60
		{
			yoff += mariospeed
			mariospeed = approach(mariospeed,12,0.5)
		}
		
		if yoff > 500
		{
			state = states.normal
			mariotimer = 0
			yoff = 0
			x = checkpointx
			y = checkpointy
		}
	}
	break;
	
	case states.hedgehog:
	{
		sprite_index = spr_possessable_hedgehog
		image_index = 1
		if hog_charge > 0
			image_index = 2
		image_speed = 0
		
		//STROMBULOUS
		if levelcomplete
		{
			sprite_index = spr_playerJ_air
			instance_create_depth(x,bbox_bottom + yoff,depth - 1,obj_whiteparticle)	
		}
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			hog_charge = approach(hog_charge,-15,1)
			if gamepad_button_check_pressed(0,CONT_X) || KEY_EGG_P
			{
				if hog_charge <= -15
				{
					hog_charge = 15
					
				}
			}
			
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 0
			var walksp = 7
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				//if hog_charge > 0 && grounded
					//axdir = 0
				if axdir != 0
					facing = sign(axdir)
				if abs(axdir) > 0
					hsp = approach(hsp,(walksp + (holdrun * runsp)) * axdir,1)
				else
					hsp = approach(hsp,0,2)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					if place_meeting(x,y,obj_airjump) // bad coding practice. do i care? no, i have hours remaining.
						play_sfx(sfx_bubblejump)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				//the wallbumb is GONE!
				//if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4
				//{
				//	play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
				//	x -= hsp
				//	hsp *= -0.75
				//	//if grounded
				//	//	vsp = -3
				//	//if !place_meeting(x,y - 11,obj_solid)
				//	//	y -= 11
				//	anim_hurt = true
				//	anim_egg = false
				//}
		
				if can_egg // yeah i wont remove this incase it gets used just keep the variable at false ok bye
				{
					if (gamepad_button_check_pressed(0,CONT_X) || KEY_EGG_P) && instance_number(obj_eggprojectile) < 5
					{
						play_sfx(sfx_eggtoss)
						anim_egg = true
						anim_hurt = false
						
						var dir = 1
						if axdir < 0
							dir = -1
						if axdir = 0
							dir = facing
					
						with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
							hspeed = (20 * dir)
							
						if grounded
						{
							vsp = -5
							if !place_meeting(x,y - 11,obj_solid)
								y -= 11
						}
					}
				}
				
				if can_groundpound
				{
					if axisv > 0.5 && !grounded && !alreadypounded
					{
						//play_sfx(sfx_gpstart)
						vsp = -4
						state = states.groundpound
					}
				}
			}
		}
		else if !broimdead
			hsp = lerp(hsp,0,0.2)
			
		if broimdead
		{
			sprite_index = spr_playerJ_pain
			hsp = lerp(hsp,0,0.05)
			vsp = lerp(vsp,0,0.05)
			deadtimer = approach(deadtimer,-1,1)
			if deadtimer <= 0
			{
				if deadtimer > -1 && !audio_is_playing(sfx_bubblemove)
					play_sfx(sfx_bubblemove)
				hsp = 0
				vsp = 0
				x = lerp(x,checkpointx,0.035)
				y = lerp(y,checkpointy - 100,0.035) 
		
				if distance_to_point(checkpointx,checkpointy - 100) < 10
				{
					broimdead = false
					play_sfx(sfx_bubblepop)	
				}
			}
		}
		
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 20 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick)
			}
		}
		else
			runtimer = 99
	}
	break;
	
	case states.sandal:
	{
		sprite_index = spr_possessable_sandal
		image_index = 1
		if hog_charge > 0
			image_index = 2
		image_speed = 0
		
		if (place_meeting(x + 20,y,obj_solid) || place_meeting(x - 20,y,obj_solid)) && (KEY_EGG_P || gamepad_button_check_pressed(0,CONT_X)) // wall scale
		{
			vsp = -17
			hasdoublejump = true
		}
		
		//STROMBULOUS
		if levelcomplete
		{
			sprite_index = spr_playerJ_air
			instance_create_depth(x,bbox_bottom + yoff,depth - 1,obj_whiteparticle)	
		}
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			hog_charge = approach(hog_charge,-15,1)
			if gamepad_button_check_pressed(0,CONT_X) || KEY_EGG_P
			{
				if hog_charge <= -15
				{
					hog_charge = 15
					
				}
			}
			
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 0
			var walksp = 7
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				//if hog_charge > 0 && grounded
					//axdir = 0
				if axdir != 0
					facing = sign(axdir)
				if abs(axdir) > 0
					hsp = approach(hsp,(walksp + (holdrun * runsp)) * axdir,1)
				else
					hsp = approach(hsp,0,2)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					if place_meeting(x,y,obj_airjump) // bad coding practice. do i care? no, i have hours remaining.
						play_sfx(sfx_bubblejump)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
				else if (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P) && hasdoublejump // yeah bitch incompletable if statement
				{
					//repeat 5
					//	with instance_create_depth(x,y - 15,depth,obj_whiteparticle)
					//		vspeed = random_range(-3,-5)
					play_sfx(sfx_jump)
					vsp = -12
					jumping = true
					hasdoublejump = false
					anim_jump = true
					image_index = 0
					anim_hurt = false
					anim_egg = false
					
					//repeat 10
					//	with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
					//	{
					//		hspeed = other.hsp + random_range(-4,4)
					//		vspeed = random_range(-1,3)	
					//	}
				}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				//the wallbumb is GONE!
				//if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4
				//{
				//	play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
				//	x -= hsp
				//	hsp *= -0.75
				//	//if grounded
				//	//	vsp = -3
				//	//if !place_meeting(x,y - 11,obj_solid)
				//	//	y -= 11
				//	anim_hurt = true
				//	anim_egg = false
				//}
		
				if can_egg // yeah i wont remove this incase it gets used just keep the variable at false ok bye
				{
					if (gamepad_button_check_pressed(0,CONT_X) || KEY_EGG_P) && instance_number(obj_eggprojectile) < 5
					{
						play_sfx(sfx_eggtoss)
						anim_egg = true
						anim_hurt = false
						
						var dir = 1
						if axdir < 0
							dir = -1
						if axdir = 0
							dir = facing
					
						with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
							hspeed = (20 * dir)
							
						if grounded
						{
							vsp = -5
							if !place_meeting(x,y - 11,obj_solid)
								y -= 11
						}
					}
				}
				
				if can_groundpound
				{
					if axisv > 0.5 && !grounded && !alreadypounded
					{
						//play_sfx(sfx_gpstart)
						vsp = -4
						state = states.groundpound
					}
				}
			}
		}
		else if !broimdead
			hsp = lerp(hsp,0,0.2)
			
		if broimdead
		{
			sprite_index = spr_playerJ_pain
			hsp = lerp(hsp,0,0.05)
			vsp = lerp(vsp,0,0.05)
			deadtimer = approach(deadtimer,-1,1)
			if deadtimer <= 0
			{
				if deadtimer > -1 && !audio_is_playing(sfx_bubblemove)
					play_sfx(sfx_bubblemove)
				hsp = 0
				vsp = 0
				x = lerp(x,checkpointx,0.035)
				y = lerp(y,checkpointy - 100,0.035) 
		
				if distance_to_point(checkpointx,checkpointy - 100) < 10
				{
					broimdead = false
					play_sfx(sfx_bubblepop)	
				}
			}
		}
		
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 20 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick)
			}
		}
		else
			runtimer = 99
	}
	break;
	
	case states.car:
	{
		image_speed = 0
		image_index = 1
		sprite_index = spr_possessable_car
		
		if abs(hsp) > 10
			instance_create_depth(x,y,depth + 1,obj_trail)
		
		if !broimdead
			vsp = approach(vsp,18,0.5)
		
		if controllable && !broimdead
		{
			if KEY_L
				axdir = -1
			if KEY_R
				axdir = 1
			var holdrun = 0 //gamepad_button_check(0,CONT_RB)
			var runsp = 0
			var walksp = 25
	
			if levelcomplete
			{
				hsp = approach(hsp,0,0.5)
				vsp = approach(vsp,0,0.5)
				yoffspeed += 0.175 // too lazy to cap the speed :p
				yoff -= yoffspeed
			}
			else
			{
				if axdir != 0
					facing = sign(axdir)
				if abs(axdir) > 0
					hsp = approach(hsp,(walksp + (holdrun * runsp)) * axdir,0.75)
				else
					hsp = approach(hsp,0,1)
	
				if (grounded || place_meeting(x,y,obj_airjump) || place_meeting(x,y + 20,obj_solid)) && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P)
				{
					if place_meeting(x,y,obj_airjump) // bad coding practice. do i care? no, i have hours remaining.
						play_sfx(sfx_bubblejump)
					play_sfx(sfx_jump)
					vsp = -11
					jumping = true
					hasdoublejump = true
					anim_jump = true
					image_index = 0
					
					if place_meeting(x,y,obj_airjump)
					{
						with instance_nearest(x,y,obj_airjump)
						{
							image_xscale = 1.6
							image_yscale = 1.6
							repeat 15
								with instance_create_depth(x,y,depth - 1,obj_whiteparticle)
								{
									image_angle = point_direction(0,0,hspeed,vspeed)
									sprite_index = spr_bubbleline
									alphlower = random_range(0.07,0.09)
									starth = abs(hspeed / 50)
									startv = abs(vspeed / 50)
								}
						}
					}
				}
				else if can_doublejump && !can_doublejump && (gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P) // yeah bitch incompletable if statement
				{
					//repeat 5
					//	with instance_create_depth(x,y - 15,depth,obj_whiteparticle)
					//		vspeed = random_range(-3,-5)
					play_sfx(sfx_jump)
					vsp = -12
					jumping = true
					hasdoublejump = false
					anim_jump = true
					image_index = 0
					anim_hurt = false
					anim_egg = false
					
					//repeat 10
					//	with instance_create_depth(x,y,depth + 1,obj_eggprojectile)
					//	{
					//		hspeed = other.hsp + random_range(-4,4)
					//		vspeed = random_range(-1,3)	
					//	}
				}
		
				if jumping && vsp < -3 && (!gamepad_button_check(0,CONT_A) && !KEY_JMP)
				{
					vsp = -3
					jumping = false
				}
	
				//the wallbumb is GONE!
				//no its not dumbass
				if place_meeting(x + hsp,y,obj_solid) && abs(hsp) > 4 && place_meeting(x + hsp,y - 32,obj_solid)
				{
					play_sfx(choose(sfx_hitwall1,sfx_hitwall2,sfx_hitwall3),false)
					x -= hsp
					hsp *= -0.75
					//if grounded
					//	vsp = -3
					//if !place_meeting(x,y - 11,obj_solid)
					//	y -= 11
					anim_hurt = true
					anim_egg = false
				}
		
				
				if can_groundpound
				{
					if axisv > 0.5 && !grounded && !alreadypounded
					{
						//play_sfx(sfx_gpstart)
						vsp = -4
						state = states.groundpound
					}
				}
			}
		}
		else if !broimdead
			hsp = lerp(hsp,0,0.2)
			
		if broimdead
		{
			sprite_index = spr_playerJ_pain
			hsp = lerp(hsp,0,0.05)
			vsp = lerp(vsp,0,0.05)
			deadtimer = approach(deadtimer,-1,1)
			if deadtimer <= 0
			{
				if deadtimer > -1 && !audio_is_playing(sfx_bubblemove)
					play_sfx(sfx_bubblemove)
				hsp = 0
				vsp = 0
				x = lerp(x,checkpointx,0.035)
				y = lerp(y,checkpointy - 100,0.035) 
		
				if distance_to_point(checkpointx,checkpointy - 100) < 10
				{
					broimdead = false
					play_sfx(sfx_bubblepop)	
				}
			}
		}
		
		if grounded && abs(hsp) > 2
		{
			runtimer++
			if runtimer > 20 - abs(hsp)
			{
				runtimer = 0
				if soundpick = sfx_run1
					soundpick = sfx_run2
				else
					soundpick = sfx_run1
		
				play_sfx(soundpick)
			}
		}
		else
			runtimer = 99
	}
	break;
	
	case states.circle:
	{
		if anim_fire
			sprite_index = spr_playerR_ringfire
		else
			sprite_index = spr_playerR_ring
		
		if !place_meeting(x + scroll,y,obj_solid)
			x += scroll
		else while !place_meeting(x + 1,y,obj_solid)
			x++
		
		var axh, axv, axdir
		axh = gamepad_axis_value(0,gp_axislh)
		axv = gamepad_axis_value(0,gp_axislv)
		axdir = point_direction(0,0,axh,axv)
		
		hsp = approach(hsp,6 * axh,1)
		vsp = approach(vsp,6 * axv,1)
		
		if KEY_EGG_P || gamepad_button_check_pressed(0,CONT_X)
		{
			image_index = 0
			anim_fire = true
			instance_create_depth(x,y,depth,obj_bullet)
		}
		
		if x < camera_get_view_x(view_camera[0])
		{
			x = obj_generator.x
			y = 270
			points -= 250
		}
	}
	break;
}

#region up arrow
if place_meeting(x,y,obj_npc) && controllable && possessed_object = noone
{
	arrowoff = lerp(arrowoff,0,0.1)
	arrowalph = lerp(arrowalph,1,0.2)
}
else
{
	arrowoff = lerp(arrowoff,-45,0.1)
	arrowalph = lerp(arrowalph,0,0.2)
}
arrowbob = sin(time / 30) * 5
arrowframetime++
if arrowframetime >= 30 //2 fps
{
	arrowframetime = 0
	arrowframe++
	if arrowframe > 1
		arrowframe = 0
}
#endregion

if talking // to the right of npc when talking
{
	sprite_index = spr_playerR_idle
	
	var i = instance_nearest(x,y,obj_npc)
	if !instance_exists(i)
	{
		talking = false
		controllable = true	
	}
	else
		x = lerp(x,i.x + 50,0.1)
		
	hsp = 0
	facing = -1
}