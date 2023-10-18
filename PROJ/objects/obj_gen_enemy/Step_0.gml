time++
bobsin = sin(time / 10) * 4
rotation = lerp(rotation,(-hsp + -vsp) * 2,0.2)

switch type {
	case enemytype.default_ai:
	{
		sprite_index = spr_eligoomba_balloon
		if sittime <= 0
		{
			hsp = random_range(-6,6)
			vsp = random_range(-6,6)
			sittime = random_range(50,200)
		}
		if sittime > 0
			sittime--
		hsp = lerp(hsp,0,0.02)
		vsp = lerp(vsp,0,0.02)
	}
	break;
	
	case enemytype.swarmer:
	{
		ignore_collides = true
		//sprite_index = spr_swarmerdog
		
		hsp = -6 * facing
		bobsin = sin(time / 12) * 7.5
		rotation = lerp(rotation,(-hsp + bobsin) * 2,0.2)
	}
	break;
	
	case enemytype.crier:
	{
		//if launching
		//	sprite_index = spr_crier_launch
		//else
		//	if launchprepping
		//		sprite_index = spr_crier_launchprep
		//	else
		//		sprite_index = spr_crier
			
		if sittime <= 0 && !launching
		{
			hsp_target = random_range(-3,3)
			vsp_target = random_range(1,2) // down to prep for launch
			sittime = random_range(50,200)
		}
		if sittime > 0 && !launching
			sittime--
		
		if launching && launchprepping = 2
		{
			projectiletimer--
			if projectiletimer <= 0
			{
				projectiletimer = 5
				//instance_create_depth(x,y,depth + 1,obj_enemybullet, {
				//	hsp: random_range(-2,2),
				//	vsp: 7
				//});
			}
		}
		
		if launchtimer <= 0
		{
			if launchprepping = 0
			{
				launchprepping = 1
				image_index = 0	
			}
			
			if launchprepping = 2
			{
				if !launching
				{
					launching = 1
					hsp_target = random_range(-3,3)
					vsp_target = -6
					vsp = -2
					launchtimer = 60
				}
				else
				{
					launching = 0
					sittime = 1
					launchtimer = random_range(100,350)
					launchprepping = 0
				}
			}
		}
		if launchtimer > 0
			launchtimer--
			
		hsp = lerp(hsp,hsp_target,0.1)
		vsp = lerp(vsp,vsp_target,0.1)
		
		rotation = lerp(rotation,(-hsp) * 4,0.2)
	}
	break;
	
	case enemytype.jumper:
	{
		bobsin = 0
		rotation = 0
		//if place_meeting(x,y + 1,obj_solid)
		//	sprite_index = spr_jumper_still
		//else
		//	if jumpstart
		//		sprite_index = spr_jumper_jumpstart
		//	else
		//		sprite_index = spr_jumper_air
		
		if vsp < 12
			vsp += 0.2
		
		if place_meeting(x,y + 1,obj_solid) && jumping
		{
			jumping = false
			jumper_move_hor = true
		}
		if (!position_meeting(bbox_left - 1,bbox_bottom + 1,obj_solid) || !position_meeting(bbox_right + 1,bbox_bottom + 1,obj_solid) || position_meeting(bbox_left - 1,y,obj_solid) || position_meeting(bbox_right + 1,y,obj_solid)) && !jumping
		{
			x -= hsp
			move_dir *= -1
			facing *= -1
		}
		if hsp != 0
			facing = -sign(hsp)
		hsp = jumper_move_hor == true ? (2 * move_dir) : 0
		
		if jump_timer > 0
			jump_timer--
		else
		{
			jump_timer = irandom_range(150,250)
			jumper_move_hor = 0
			vsp = random_range(-7,-10)
			jumping = true
			jumpstart = true
			image_index = 0
		}	
	}
	break;
	
	case enemytype.walker:
	{
		bobsin = 0
		rotation = 0
		//if place_meeting(x,y + 1,obj_solid)
		//	sprite_index = spr_jumper_still
		//else
		//	if jumpstart
		//		sprite_index = spr_jumper_jumpstart
		//	else
		//		sprite_index = spr_jumper_air
		
		if vsp < 12
			vsp += 0.2
		
		if place_meeting(x,y + 1,obj_solid) && jumping
		{
			jumping = false
			jumper_move_hor = true
		}
		if (!position_meeting(bbox_left - 1,bbox_bottom + 1,obj_solid) || !position_meeting(bbox_right + 1,bbox_bottom + 1,obj_solid) || position_meeting(bbox_left - 1,y,obj_solid) || position_meeting(bbox_right + 1,y,obj_solid)) && !jumping
		{
			x -= hsp
			move_dir *= -1
			facing *= -1
		}
		if hsp != 0
			facing = -sign(hsp)
		hsp = 2 * move_dir
		
		//if jump_timer > 0
		//	jump_timer--
		//else
		//{
		//	jump_timer = irandom_range(150,250)
		//	jumper_move_hor = 0
		//	vsp = random_range(-7,-10)
		//	jumping = true
		//	jumpstart = true
		//	image_index = 0
		//}	
	}
	break;
	
	case enemytype.chaser:
	{
		//sprite_index = spr_yellowcloud_idle
		hsp = 0
		vsp = 0
		speed = 2
		direction = point_direction(x,y,obj_player.x,obj_player.y)
	}
	break;

}

collider_step()
generator_cull_check()