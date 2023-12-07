if wait
	place = lerp(place,400,0.1)
else
	place = lerp(place,targ,0.1)

if rotatepls
{
	rot += 7
	if rot > 90
	{
		wait = false
		sel = pokeframes.supereffective
		render_trainer2 = false
		if !instance_exists(obj_deadash)
		{
			instance_create_depth(686,109,depth,obj_deadash)
			play_sfx(sfx_redhit)
		}
	}
	if rot > 180
		rotatepls = false
}

//NOTE FOR ANYONE READING THIS - this is a very bad way to do it, its very lazy.
var axh = gamepad_axis_value(0,gp_axislh)
var axv = gamepad_axis_value(0,gp_axislv)
var press_axh_l = false
var press_axh_r = false
var press_axv_u = false
var press_axv_d = false
var pressjump = gamepad_button_check_pressed(0,CONT_A)
var dpl = gamepad_button_check_pressed(0,gp_padl)
var dpr = gamepad_button_check_pressed(0,gp_padr)
var dpu = gamepad_button_check_pressed(0,gp_padu)
var dpd = gamepad_button_check_pressed(0,gp_padd)
if axh > 0 && prev_axh = 0
	press_axh_r = true
if axh < 0 && prev_axh = 0
	press_axh_l = true
if axv < 0 && prev_axv = 0
	press_axv_u = true
if axv > 0 && prev_axv = 0
	press_axv_d = true
switch sel
{
	case pokeframes.start:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.menu_sfight
			frame_delay = true	
			play_sfx(sfx_textcontinue)
		}
	}
	break;
	
	case pokeframes.sel_fight:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay && !wait
		{
			rotatepls = true
			wait = true
			play_sfx(sfx_textcontinue)
		}
	}
	break;
	
	case pokeframes.supereffective:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay && !wait
		{
			sel = pokeframes.winner
			frame_delay = true
			play_sfx(sfx_textcontinue)
		}
	}
	break;
	
	case pokeframes.winner:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay && !wait
		{
			play_sfx(sfx_textcontinue)
			instance_destroy()
			instance_destroy(obj_poketrainers)
			instance_destroy(obj_poke_waitthingy)
			with obj_4by3 // disable 4:3
				targ = -200
			
			obj_hud.hudenable = true
			
			music_set_slot_target(3,mu_nothing)
				
			with inst_ASHNPC
			{
				var i = 0;
				text[i++] = "@POKEWINMUSIC"
				text[i++] = "Well it seems that I have been bested..."
				text[i++] = "I HATE your BITCH ASS I hope you DIE tomorrow because I DO NOT LIKE YOU VERY MUCH OKAY."
				text[i++] = "Also, I will open the door, because I am a rebel and do not follow the rules, because I am Ash from Pokemon."
				text[i++] = "Ash from Pokemon out!"
				text[i++] = "Oh, and you can have my Ash from Pokemon apple too. Enjoy visiting tech support."
				text[i++] = "@ASH_OUT"
				
				max_texts = i - 1
				
				talkspr = spr_ashpokemon_dying
			}
			
			with obj_player
				state = states.normal
		}
	}
	break;
	
	case pokeframes.sel_item:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.menu_sitem
			frame_delay = true	
			play_sfx(sfx_textcontinue)
		}
	}
	break;
	
	case pokeframes.sel_other:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.menu_sother
			frame_delay = true	
			play_sfx(sfx_textcontinue)
		}
	}
	break;
	
	case pokeframes.sel_flee:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.menu_sflee
			frame_delay = true	
			play_sfx(sfx_textcontinue)
		}
	}
	break;
	
	case pokeframes.menu_sfight:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.sel_fight
			frame_delay = true	
			play_sfx(sfx_textcontinue)
		}
			
		if (KEY_D_P || press_axv_d || dpd) && !frame_delay
		{
			sel = pokeframes.menu_sother
			frame_delay = true	
			play_sfx(sfx_text)
		}
		
		if (KEY_R_P || press_axh_r || dpr) && !frame_delay
		{
			sel = pokeframes.menu_sitem
			frame_delay = true
			play_sfx(sfx_text)
		}
	}
	break;
	
	case pokeframes.menu_sother:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.sel_other
			frame_delay = true		
			play_sfx(sfx_textcontinue)
		}
			
		if (KEY_U_P || press_axv_u || dpu) && !frame_delay
		{
			sel = pokeframes.menu_sfight
			frame_delay = true	
			play_sfx(sfx_text)
		}
		
		if (KEY_R_P || press_axh_r || dpr) && !frame_delay
		{
			sel = pokeframes.menu_sflee
			frame_delay = true	
			play_sfx(sfx_text)
		}
	}
	break;
	
	case pokeframes.menu_sitem:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.sel_item
			frame_delay = true		
			play_sfx(sfx_textcontinue)
		}
			
		if (KEY_D_P || press_axv_d || dpd) && !frame_delay
		{
			sel = pokeframes.menu_sflee
			frame_delay = true	
			play_sfx(sfx_text)
		}
		
		if (KEY_L_P || press_axh_l || dpl) && !frame_delay
		{
			sel = pokeframes.menu_sfight
			frame_delay = true	
			play_sfx(sfx_text)
		}
	}
	break;
	
	case pokeframes.menu_sflee:
	{
		if (KEY_JMP_P || pressjump) && !frame_delay
		{
			sel = pokeframes.sel_flee
			frame_delay = true		
			play_sfx(sfx_textcontinue)
		}
			
		if (KEY_U_P || press_axv_u || dpu) && !frame_delay
		{
			sel = pokeframes.menu_sitem
			frame_delay = true	
			play_sfx(sfx_text)
		}
		
		if (KEY_L_P || press_axh_l || dpl) && !frame_delay
		{
			sel = pokeframes.menu_sother
			frame_delay = true	
			play_sfx(sfx_text)
		}
	}
	break;
}


frame_delay = false