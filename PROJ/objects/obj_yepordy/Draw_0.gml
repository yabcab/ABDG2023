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
}
