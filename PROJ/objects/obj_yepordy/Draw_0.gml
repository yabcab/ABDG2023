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
		draw_sprite(spr_yepordy_theothershit,0,480,128)
		
		draw_text(10,210,@"It's time to get yepothargic... and play... Yepordy!
		
		At this time, please split into TWO teams with equal members.
		Select ONE person of the team to be the speaker.
		This member will be the one to buzz in the answer.
		If needed, one person will sit out of the game.")
	}
	break;
	
	case yepordy_states.view_endscreen:
	{
		draw_sprite(spr_yepordy_bye,0,480,128)
		
		draw_text(10,210,@"It's time to get yepothargic... and play... Yepordy!
		
		At this time, please split into TWO teams with equal members.
		Select ONE person of the team to be the speaker.
		This member will be the one to buzz in the answer.
		If needed, one person will sit out of the game.")
	}
	break;
	
	case yepordy_states.view_rules:
	{
		draw_sprite(spr_yepordy_theothershit,1,480,128)
		
		draw_text(10,210,@">Teams take turns selecting the question
		>The team that gets CLOSEST to the answer is correct
		>After buzzing in, only the team speaker may speak to tell 
		me the answer.
		>You have 30 seconds to give an answer after buzzing in
		>Don't die
		")
	}
	break;
	
	case yepordy_states.final_question:
	{
		draw_sprite(spr_yepordy_final,1,480,128)
		
		draw_text(10,210,@"THE QUESTION:
		
		In Super Mario Bros. Wonder, how are levels stored in the 
		game files, and in which format are they stored in?
		")
	}
	break;
	
	case yepordy_states.final_answer:
	{
		draw_sprite(spr_yepordy_final,1,480,80)
		
		draw_text(10,110,@"THE ANSWER:
		
		>Mario Wonder levels' geometry is stored as several shapes 
		made up of points mapped to a grid.
		>The tiles are automatically filled in, including 1x1 and 2x1 
		slope tiles. The wall BG is stored as a large 
		repeating texture, overlayed onto a large mask, 
		dictated by the shapes on the geometry grid. The 
		floor and walls  are then filled on top of this mask.
		>All other objects (enemies, bricks, pipes, etc) are stored as 
		actors, akin to GameMaker instances.
		>These levels are stored in .byml files, a Nintendo proprietary 
		variant of .yaml text files.
		")
	}
	break;
	
	case yepordy_states.final_intro:
	{
		draw_sprite(spr_yepordy_final,1,480,100)
		
		draw_text(10,150,@"And now... one last #question for you.
		
		As a team, decide how many points you would like 
		to wager for this one.
		If you are correct, you gain these points, but if 
		you are wrong, you lose them.
		
		You may wager up to 10000 points, suckers!
		
		Write your answer on a sheet of paper, once the 
		question shows, you have 3 minutes to write 
		your answer with your team.
		")
	}
	break;
}