switch state
{
	case yepordy_states.question_selector:
	{
		for (var c = 0;c < 5; c++)
		{
			draw_sprite(spr_yepordy_cattitles,c,105 + (185 * c),100)
			for (var q = 0; q < 5; q++)
			{
				draw_sprite(spr_yepordy_numbers,q,105 + (185 * c),200 + (75 * q))
				if yepordy_question_is_crossed(c,q)
					draw_sprite(spr_yepordy_cross,0,105 + (185 * c),200 + (75 * q))
				if selected_category = c && selected_question = q
					draw_sprite(spr_yepordy_selectcircle,0,105 + (185 * c),200 + (75 * q))
			}
		}
	}
	break;
	
	case yepordy_states.view_question:
	{
		draw_sprite(spr_yepordy_cattitles,selected_category,100,100)
		draw_sprite(spr_yepordy_numbers,selected_question,280,100)
		
		draw_set_halign(fa_center)
		draw_text(480,100,"THE QUESTION:")
		draw_text(480,140,loaded_question)
		draw_set_halign(fa_left)
	}
	break;
	
	case yepordy_states.view_answer:
	{
		draw_sprite(spr_yepordy_cattitles,selected_category,100,100)
		draw_sprite(spr_yepordy_numbers,selected_question,280,100)
		
		draw_set_halign(fa_center)
		draw_text(480,100,"THE ANSWER:")
		draw_text(480,140,loaded_answer)
		draw_set_halign(fa_left)
	}
	break;
	
	case yepordy_states.view_intro:
	{
		draw_text(10,10,@"It's time to get yepothargic... and play... Yepordy!
		
		At this time, please split into TWO teams with equal members.
		Select ONE person of the team to be the speaker.
		This member will be the one to buzz in the answer.
		If needed, one person will sit out of the game.")
	}
	break;
	
	case yepordy_states.view_rules:
	{
		draw_text(10,10,@"THE RULES:
		
		>Teams take turns selecting the question
		>The team that gets CLOSEST to the answer is correct
		>After buzzing in, only the team speaker may speak to tell 
		me the answer.
		>You have 30 seconds to give an answer after buzzing in
		>Don't die
		")
	}
	break;
}