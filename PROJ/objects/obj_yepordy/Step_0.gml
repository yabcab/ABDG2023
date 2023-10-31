switch state
{
	case yepordy_states.question_selector:
	{
		#region nav menu
		if KEY_R_P || gamepad_button_check_pressed(0,gp_padr)
		{
			selected_category++
			if selected_category > 4
				selected_category = 0
		}
		else if KEY_L_P || gamepad_button_check_pressed(0,gp_padl)
		{
			selected_category--
			if selected_category < 0
				selected_category = 4
		}
		
		if KEY_D_P || gamepad_button_check_pressed(0,gp_padd)
		{
			selected_question++
			if selected_question > 4
				selected_question = 0
		}
		else if KEY_U_P || gamepad_button_check_pressed(0,gp_padu)
		{
			selected_question--
			if selected_question < 0
				selected_question = 4
		}
		#endregion
		
		#region select and fetch question info
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A)) && !yepordy_question_is_crossed(selected_category,selected_question)
		{
			yepordy_load_question(selected_category,selected_question)
			yepordy_cross_question(selected_category,selected_question)
			state = yepordy_states.view_question
		}
		#endregion
	}
	break;
	
	case yepordy_states.view_question:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
			state = yepordy_states.view_answer
	}
	break;
	
	case yepordy_states.view_answer:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
			if q_cross_count < 25
				state = yepordy_states.question_selector
			else
				state = yepordy_states.final_intro
	}
	break;
	
	case yepordy_states.view_intro:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
			state = yepordy_states.view_rules
	}
	break;
	
	case yepordy_states.view_rules:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
		{
			if q_cross_count < 25
				state = yepordy_states.question_selector
			else
				state = yepordy_states.final_question
		}
	}
	break;
	
	case yepordy_states.view_endscreen:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
		{
			room_goto(rm_finish) // temp
			audio_stop_sound(yep_music)
		}
			//show_debug_message("Something should happen here! Probably taking you to the next level...")
	}
	break;
	
	case yepordy_states.final_question:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))// && pstate != state
			state = yepordy_states.final_answer
	}
	break;
	
	case yepordy_states.final_answer:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))// && pstate != state
			state = yepordy_states.view_endscreen
	}
	break;
	
	case yepordy_states.final_intro:
	{
		if (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))// && pstate != state
			state = yepordy_states.final_question
	}
	break;
}

pstate = state

if !audio_is_playing(yep_music)
	yep_music = audio_play_sound(choose(mu_yep1,mu_yep2,mu_yep3,mu_yep4,mu_yep5),0,false)