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
			instance_create_depth(686,109,depth,obj_deadash)
	}
	if rot > 180
		rotatepls = false
}

//NOTE FOR ANYONE READING THIS - this is a very bad way to do it, its very lazy.
//TODO - controller navigating
switch sel
{
	case pokeframes.start:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.menu_sfight
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.sel_fight:
	{
		if KEY_JMP_P && !frame_delay && !wait
		{
			rotatepls = true
			wait = true
		}
	}
	break;
	
	case pokeframes.supereffective:
	{
		if KEY_JMP_P && !frame_delay && !wait
		{
			sel = pokeframes.winner
			frame_delay = true
		}
	}
	break;
	
	case pokeframes.winner:
	{
		if KEY_JMP_P && !frame_delay && !wait
		{
			instance_destroy()
			instance_destroy(obj_poketrainers)
			instance_destroy(obj_poke_waitthingy)
			with obj_4by3 // disable 4:3
				targ = -200
			
			music_set_slot_target(3,mu_nothing)
				
			with inst_ASHNPC
			{
				var i = 0;
				text[i++] = "@POKEWINMUSIC"
				text[i++] = "Well it seems that I have been bested..."
				text[i++] = "I HATE your BITCH ASS I hope you DIE tomorrow because I DO NOT LIKE YOU VERY MUCH OKAY."
				text[i++] = "Also, I will open the door, because I am a rebel and do not follow the rules, because I am Ash from Pokemon."
				text[i++] = "Ash from Pokemon out!"
				text[i++] = "@ASH_OUT"
				
				max_texts = i - 1
			}
			
			with obj_player
				state = states.normal
		}
	}
	break;
	
	case pokeframes.sel_item:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.menu_sitem
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.sel_other:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.menu_sother
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.sel_flee:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.menu_sflee
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.menu_sfight:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.sel_fight
			frame_delay = true		
		}
			
		if KEY_D_P && !frame_delay
		{
			sel = pokeframes.menu_sother
			frame_delay = true	
		}
		
		if KEY_R_P && !frame_delay
		{
			sel = pokeframes.menu_sitem
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.menu_sother:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.sel_other
			frame_delay = true		
		}
			
		if KEY_U_P && !frame_delay
		{
			sel = pokeframes.menu_sfight
			frame_delay = true	
		}
		
		if KEY_R_P && !frame_delay
		{
			sel = pokeframes.menu_sflee
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.menu_sitem:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.sel_item
			frame_delay = true		
		}
			
		if KEY_D_P && !frame_delay
		{
			sel = pokeframes.menu_sflee
			frame_delay = true	
		}
		
		if KEY_L_P && !frame_delay
		{
			sel = pokeframes.menu_sfight
			frame_delay = true	
		}
	}
	break;
	
	case pokeframes.menu_sflee:
	{
		if KEY_JMP_P && !frame_delay
		{
			sel = pokeframes.sel_flee
			frame_delay = true		
		}
			
		if KEY_U_P && !frame_delay
		{
			sel = pokeframes.menu_sitem
			frame_delay = true	
		}
		
		if KEY_L_P && !frame_delay
		{
			sel = pokeframes.menu_sother
			frame_delay = true	
		}
	}
	break;
}


frame_delay = false