function induct_text_command(str)
{
	text_checker(str)
}

function text_checker(str = text[text_selected])
{
	switch str
	{
		//old system remains
		case "@TUTORIAL_BECOMEPLAT":
		{
			//obj_player.state = playerstate.plat
			//instance_destroy(jobwall[3])
			//textcopy = ""
			//text_spot = 1
			//text_selected++
			//audio_stop_sound(mu_tutorial)
			//if !audio_is_playing(mu_tutorial_b)
			//	audio_play_sound(mu_tutorial_b,1,1)
		}
		break;
		
		case "@TEST":
		{
			with instance_create_depth(x,y,0,obj_roomname)
				text = "GOOD BOY LITTLE SCRIPT."
		}
		break;
		
		case "@START_RAIN":
		{
			instance_destroy(inst_17DF170A)// this one specifically
			
			if !audio_is_playing(sfx_rainloop1)
			{
				audio_play_sound(sfx_rainloop1,1,true)
				audio_play_sound(sfx_rainloop2,1,true)
				audio_play_sound(sfx_rainloop3,1,true)
			}
			audio_pause_sound(mu_introtutorial)
			
			var bgl = layer_get_id("Background")
			var bgi = layer_background_get_id(bgl)
			layer_background_blend(bgi,make_color_rgb(53,53,62))
			
			layer_set_visible(layer_get_id("Backgrounds_raindark"),true)
			
			with obj_parallax
				visible = true
		}
		break;
		
		case "@SUMMON_MEATBABY":
		{
			play_sfx(sfx_meatbabyspawn,false)
			var yy = obj_player.y - 300
			var xx = obj_player.x
			instance_create_depth(xx,yy,-1,obj_meatbaby)
			repeat 40
				instance_create_depth(xx,yy,-1,obj_whiteparticle)
		}
		break;
		
		case "@MOVE_UP":
		{
			play_sfx(sfx_flyup,false)
			vspeed = -3
			alarm[1] = 300
			can_talk = false
		}
		break;
		
		case "@DUNKMEAT_TITLE":
		{
			glue_overlay(spr_dunkthebaby)
		}
		break;
		
		case "@EXPLODE_AND_DIE":
		{
			play_sfx(sfx_explosion,false)
			idlespr = spr_empty
			talkspr = spr_empty
			with instance_create_depth(x,y,depth,obj_smokepuff)
				sprite_index = spr_explosion
			//sound here
			instance_create_depth(x,y,101,obj_risinggrave)
			x = -1000
			y = -1000
		}
		break;
		
		case "@FADE_OUT":
		{
			fadeaway = true	
		}
		break;
		
		case "@BINGLE_ACTIVITY":
		{
			with obj_bingle
				alarm[0] = 1
		}
		break;
		
		case "@KILL_JAYLA": // whoops! murder!
		{
			with obj_player // same as collision with obj_spikes
			{
				deaths++
				state = states.normal
				vsp = -7
				broimdead = true
				deadtimer = 60
				state = states.normal
				audio_stop_sound(sfx_getrocket)
				instance_create_depth(x,y,-100,obj_rescuebubble)
		
				play_sfx(sfx_bubblehit)
			}
		}
		break;
		
		case "@BECOME_THINGY":
		{
			npcid = npcs.badfather
			talkspr = spr_father_talk
			idlespr = spr_father_idle
			drawnbg = spr_textbg_father
			
			max_texts = 0
			text[0] = "I lost my son. Where is he?"
		}
		break;
		
		case "@SHOW_THE_IMAGE":
		{
			glue_overlay(spr_updogimage)
		}
		break;
		
		case "@UPDOG_BAD_MEMORY":
		{
			glue_overlay(spr_updogbadmem)
		}
		break;
		
		case "@4:3_ENABLE":
		{
			with obj_4by3
				targ = 0
		}
		break;
		
		case "@4:3_DISABLE":
		{
			with obj_4by3
				targ = -200
		}
		break;
		
		case "@POKEBATTLE_START":
		{
			with obj_player
				state = -87 // yeah thatll show em
			override_cambound_music_slots = true;
			music_set_active_slot(3)
			music_restart_slot(3)
			instance_create_depth(0,0,0,obj_pokemonbattlestart)
		}
		break;
		
		case "@ASH_PUMP_IRON":
		{
			talkspr = spr_ashpokemon_pumpiron
		}
		break;
		
		case "@ASH_OUT":
		{
			idlespr = spr_empty
			talkspr = spr_empty
			instance_create_depth(x,y,101,obj_risinggrave)
			x = -1000
			y = -1000
			inst_ASHTRES.visible = true
			
			override_cambound_music_slots = false
			
			with inst_DOORSOLID
				instance_destroy()
			with obj_ashdoor
			{
				fuckuphater = true
				vspeed = -7
				hspeed = 4
			}
		}
		break;
		
		case "@POKEWINMUSIC":
		{
			music_set_slot_target(3,mu_pokemonwin)
		}
		break;
		
		case "@DYSLEXIA_ENABLE":
		{
			dyslexia_mode = true
		}
		break;
		
		case "@DYSLEXIA_DISABLE":
		{
			dyslexia_mode = false
		}
		break;
		
		case "@MAKE_GOAL_FLAG_ELICAVE":
		{
			if eligoomba_kills >= 25
				inst_OZZYRECORD.visible = true
			
			with instance_create_depth(9600,1760,depth,obj_nextlevel)
				targetroom = rm_loadtogolf
			repeat 25
				instance_create_depth(9600,1760,depth,obj_whiteparticle)
		}
		break;
		
		case "@SHOOTBOGOS_START":
		{
			induct_text_command("@4:3_ENABLE")
			instance_create_depth(x,y,depth,obj_shootthebogos)
			with obj_checkeroverlay
				sq_tsize = 32
			obj_player.state = 1847385 // state one million eight hundred fourty seven thousand three hundred eighty five
			override_cambound_music_slots = true
			music_set_active_slot(3)
			music_restart_slot(3)
		}
		break;
		
		case "@GIVE_SHADES":
		{
			with obj_player
			{
				shades = true	
			//	alarm[1] = 1800 // 30 seconds
			}
		}
		break;
		
		case "@VA_BOGOS_INTRO":
		{
			play_va(va_bogos_intro)
		}
		break;
		
		case "@VA_BOGOS_FRICK":
		{
			play_va(va_bogos_frick)
		}
		break;
		
		case "@VA_BOGOS_HECK":
		{
			play_va(va_bogos_heck)
		}
		break;
		
		case "@VA_BOGOS_GOSHDARN":
		{
			play_va(va_bogos_goshdarn)
		}
		break;
		
		case "@VA_BOGOS_BULLOCKS":
		{
			play_va(va_bogos_bullocks)
		}
		break;
		
		case "@VA_LINK1":
		{
			play_va(va_link_1)
		}
		break;
		
		case "@VA_LINK2":
		{
			audio_stop_sound(va_link_1)
			play_va(va_link_2)
		}
		break;
		
		case "@VA_LINK3":
		{
			audio_stop_sound(va_link_2)
			play_va(va_link_3)
		}
		break;
		
		case "@VA_HARPER_HUNGRY":
		{
			//audio_stop_sound(va_link_2)
			play_va(va_harper_hungry)
		}
		break;
		
		case "@VA_HARPER_CAPITALISM":
		{
			audio_stop_sound(va_harper_sandwichfunds)
			play_va(va_harper_capitalsimgood)
		}
		break;
		
		case "@VA_HARPER_COMMUNISM":
		{
			audio_stop_sound(va_harper_pleasesandwich)
			play_va(va_harper_communismbad)
		}
		break;
		
		case "@VA_HARPER_EATTHAT":
		{
			audio_stop_sound(va_harper_freemarket)
			play_va(va_harper_eatthat)
		}
		break;
		
		case "@VA_HARPER_GOSCAM":
		{
			audio_stop_sound(va_harper_capitalsimgood)
			play_va(va_harper_justgoscam)
		}
		break;
		
		case "@VA_HARPER_MMMM":
		{
			audio_stop_sound(va_harper_iwilleat)
			play_va(va_harper_mmmmm)
		}
		break;
		
		case "@VA_HARPER_OUTTAKE":
		{
			//audio_stop_sound(va_link_2)
			play_va(va_harper_outtake)
		}
		break;
		
		case "@VA_HARPER_PLEASESANDWICH":
		{
			audio_stop_sound(va_harper_hungry)
			play_va(va_harper_pleasesandwich)
		}
		break;
		
		case "@VA_HARPER_SANDWICHFUNDS":
		{
			audio_stop_sound(va_harper_sellsandwich)
			play_va(va_harper_sandwichfunds)
		}
		break;
		
		case "@VA_HARPER_SELLSANDWICH":
		{
			//audio_stop_sound(va_link_2)
			play_va(va_harper_sellsandwich)
		}
		break;
		
		case "@VA_HARPER_INNOCENTGRANDMAS":
		{
			audio_stop_sound(va_harper_communismbad)
			play_va(va_harper_innocentgrandmas)
		}
		break;
		
		case "@VA_HARPER_IWILLEAT":
		{
			audio_stop_sound(va_harper_pleasesandwich)
			play_va(va_harper_iwilleat)
		}
		break;
		
		case "@VA_HARPER_FREEMARKET":
		{
			audio_stop_sound(va_harper_sandwichfunds)
			play_va(va_harper_freemarket)
		}
		break;
		
		case "@CANCEL_VA_INNOCENTGRANDMAS":
		{
			audio_stop_sound(va_harper_innocentgrandmas)
		}
		break;
		
		case "@VA_CANCEL_GOSCAM":
		{
			audio_stop_sound(va_harper_justgoscam)
		}
		break;
		
		case "@CANCEL_VA_EATTHAT":
		{
			audio_stop_sound(va_harper_eatthat)
		}
		break;
		
		case "@CANCEL_VA_MMMM":
		{
			audio_stop_sound(va_harper_mmmmm)
		}
		break;
		
		case "@CHECK_ELI_KILLSTREAK":
		{
			if eligoomba_kills >= 25
			{
				text[2] = "Oh goodie! you did it! Here, you can have my really cool record I definitely did not steal!"
			}
			else
			{
				text[2] = "Woooow.... lame ass hoe over here..."
			}
		}
		break;
		
		case "@SHOW_GOOMBAHUD":
		{
			obj_goombakillhud.showit = true
		}
		break;
		
		case "@GIVE_MONEY":
		{
			instance_create_depth(x,y,-1,obj_moneyfollower)	
			max_texts = 0
			text[0] = "But I already gave you my money, kind sir!"
		}
		break;
		
		case "@BUY_SAMMY_CHECK":
		{
			if instance_number(obj_moneyfollower) >= 4
			{
				max_texts = 10
				text[5] = "@VA_HARPER_FREEMARKET"
				text[6] = "Well call me a member of the free market, I'm selling you this sandwhich. Give me your yummy Ameribucks! Yum yum..."
				text[7] = "@VA_HARPER_EATTHAT"
				text[8] = "Enjoy eating it! (Or give it to the inferior Mr. Harper. Your pick.)"
				text[9] = "@CANCE_VA_EATTHAT"
				text[10] = "@SAMMY_BUY_OUT"
				while instance_exists(obj_moneyfollower)
					instance_destroy(obj_moneyfollower)
				instance_create_depth(x,y,-1,obj_sammyfollower)
			}
		}
		break;
		
		case "@SAMMY_BUY_OUT":
		{
			max_texts = 0
			text[0] = "@EXPLODE_AND_DIE"
		}
		break;
		
		case "@SAMMY_CHECK":
		{
			if instance_exists(obj_sammyfollower)
			{
				instance_destroy(obj_sammyfollower)
				
				max_texts = 10
				text[5] = "@VA_HARPER_IWILLEAT"
				text[6] = "Yes. I will eat this."
				text[7] = "@VA_HARPER_MMMM"
				text[8] = "MMmmmmmmmmmmm... I will also open the door mmmmmmmmmmm"
				text[9] = "@CANCEL_VA_MMMM"
				text[10] = "@SAMMY_EAT_OUT"
			}
		}
		break;
		
		case "@SAMMY_EAT_OUT":
		{
			instance_destroy(inst_SAMMYWALL)
			with obj_ashdoor
			{
				fuckuphater = true
				vspeed = -7
				hspeed = 4
			}
			max_texts = 0
			text[0] = "@EXPLODE_AND_DIE"
		}
		break;
		
		case "@START_ACEGAME":
		{
			obj_player.state = sin(9) * -1
			instance_create_depth(0,0,-5000,obj_acegame_colmap)
			instance_create_depth(40,120,-5001,obj_acegame_player)
			instance_create_depth(506,289,-5001,obj_acegame_toilet)
			override_cambound_music_slots = true
			music_set_active_slot(5)
		}
		break;
		
		case "@ACE_KEY_CHECK":
		{
			if ace_game_finished
			{
				instance_create_depth(x,y,depth,obj_key)
				text[1] = "YOU DID IT! He can now shit, here is the key. Take my thang."
				max_texts = 1
			}
		}
		break;
		
		case "@GOTO_PANTRY":
		{
			room_goto(rm_loadtopantry) // PRAY YALL
		}
		break;
		
		case "@KILL_ANOTHER_ASHDOOR":
		{
			with inst_CAVEDOORWALL
				instance_destroy()
			with obj_ashdoor
			{
				fuckuphater = true
				vspeed = -7
				hspeed = 4
			}
			
			max_texts = 0
			text[0] = "I said go away."
		}
		break;
		
		case "@MORE_ASH_DOOR_KILL":
		{
			with inst_FUCKUPHATER
				instance_destroy()
			with obj_ashdoor
			{
				fuckuphater = true
				vspeed = -7
				hspeed = 4
			}
			
			max_texts = 0
			text[0] = "Heh"
		}
		break;
		
		case "@GO_QOTQ":
		{
			room_goto(IntroSeq)	
		}
		break;
		
		case "@LINK_STOP_VA":
		{
			audio_stop_sound(va_link_3)
		}
		break;
	}
	
	if string_copy(text[text_selected],1,1) = "@"
		return true;
	else
		return false;
}