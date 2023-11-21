var jh, jv
jh = gamepad_axis_value(0,gp_axislh)
jv = gamepad_axis_value(0,gp_axislv)
if obj_gameintro.activated
{	
	if !settingsactive
	{
		y = lerp(y,0,0.05)
		
		if (KEY_L_P || (jh < -0.55 && lastjoy_h >= -0.55)) && faceright
		{
			swapping = true
			faceright = false
			image_index = 0
		}
		else if (KEY_R_P || (jh > 0.55 && lastjoy_h <= 0.55)) && !faceright
		{
			swapping = true
			faceright = true
			image_index = 0
		}
	
		if !faceright && (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
		{
			room_goto(rm_khizarbasement1) // TEMPORARY
			audio_stop_sound(mu_title)	
		}
		
		if faceright && (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
		{
			settingsactive = true	
			play_sfx(sfx_settingsopen)
		}
	}
	else
	{
		y = lerp(y,1000,0.05)
		
		if gamepad_button_check_pressed(0,CONT_B) || KEY_EGG_P
		{
			settingsactive = false
			sett_sel = 0		
			play_sfx(sfx_settingsclose)
		}
		
		if (KEY_D_P || (jv > 0.55 && lastjoy_v <= 0.55))
		{
			sett_sel++
			if sett_sel > 3
				sett_sel = 0
		}
		if (KEY_D_P || (jv < -0.55 && lastjoy_v >= -0.55))
		{
			sett_sel--
			if sett_sel < 0
				sett_sel = 3
		}
		
		switch sett_sel
		{
			case 0:
			{
				if (KEY_L_P || (jh < -0.55 && lastjoy_h >= -0.55))
				{
					sett_dys--
					if sett_dys < -1
						sett_dys = -1
				}
				else if (KEY_R_P || (jh > 0.55 && lastjoy_h <= 0.55))
				{
					sett_dys++
					if sett_dys > 1
						sett_dys = 1
				}
				
				global_npc_dyslexia = sett_dys
			}
			break;
			
			case 1:
			{
				if (KEY_L_P || (jh < -0.55 && lastjoy_h >= -0.55))
				{
					sett_colb--
					if sett_colb < 0
						sett_colb = 0
				}
				else if (KEY_R_P || (jh > 0.55 && lastjoy_h <= 0.55))
				{
					sett_colb++
					if sett_colb > 3
						sett_colb = 3
				}
				
				switch sett_colb
				{
					case 0: colorblind_shader = noone break;	
					case 1: colorblind_shader = shd_protanopia break;	
					case 2: colorblind_shader = shd_deutranopia break;	
					case 3: colorblind_shader = shd_tritanopia break;	
				}
			}
			break;
			
			case 2:
			{
				if (KEY_L_P || (jh < -0.55 && lastjoy_h >= -0.55))
				{
					sett_fu--
					if sett_fu < 0
						sett_fu = 0
				}
				else if (KEY_R_P || (jh > 0.55 && lastjoy_h <= 0.55))
				{
					sett_fu++
					if sett_fu > 1
						sett_fu = 1
				}
				
				fucked_up_mode = sett_fu
			}
			break;
			
			case 3:
			{
				if (KEY_L_P || (jh < -0.55 && lastjoy_h >= -0.55))
				{
					sett_dbg--
					if sett_dbg < 0
						sett_dbg = 0
				}
				else if (KEY_R_P || (jh > 0.55 && lastjoy_h <= 0.55))
				{
					sett_dbg++
					if sett_dbg > 1
						sett_dbg = 1
				}
				
				debug = sett_dbg
			}
			break;
		}
	}
}

if faceright
	if swapping
		sprite_index = spr_title_lefttoright
	else
		sprite_index = spr_title_hoverright
else
	if swapping
		sprite_index = spr_title_righttoleft
	else
		sprite_index = spr_title_hoverleft
	
lastjoy_h = jh
lastjoy_v = jv
if settingsactive
{
	
}