switch state
{
	case yepordy_states.question_selector:
	{
		#region nav menu
		if KEY_D_P
		{
			selected_category++
			if selected_category > 4
				selected_category = 0
		}
		else if KEY_U_P
		{
			selected_category--
			if selected_category < 0
				selected_category = 4
		}
		
		if KEY_R_P
		{
			selected_question++
			if selected_question > 4
				selected_question = 0
		}
		else if KEY_R_P
		{
			selected_question--
			if selected_question < 0
				selected_question = 4
		}
		#endregion
		
		#region select and fetch question info
		if KEY_JMP_P && !yepordy_question_is_crossed(selected_category,selected_question)
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
		if KEY_JMP_P
			state = yepordy_states.view_answer
	}
	break;
	
	case yepordy_states.view_question:
	{
		if KEY_JMP_P
			state = yepordy_states.question_selector
	}
	break;
	
	case yepordy_states.view_intro:
	{
		if KEY_JMP_P
			state = yepordy_states.view_rules
	}
	break;
	
	case yepordy_states.view_rules:
	{
		if KEY_JMP_P
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
		if KEY_JMP_P
			show_debug_message("Something should happen here! Probably taking you to the next level...")
	}
	break;
	
	case yepordy_states.final_question:
	{
		if KEY_JMP_P
			state = yepordy_states.final_answer
	}
	break;
	
	case yepordy_states.final_answer:
	{
		if KEY_JMP_P
			state = yepordy_states.view_endscreen
	}
	break;
}