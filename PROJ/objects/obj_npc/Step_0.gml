var text_wrap_width = 825

if speaking
{
	if text_checker()
	{
		if text_selected < max_texts
		{
			textcopy = ""
			text_spot = 1
			text_selected++
		}
		else
		{
			speaking = false
			textbox_show = false
			text_selected = 0
			textcopy = ""
			textcopy_timer = 0
			text_spot = 1

			controllable = true
			obj_player.talking = false
		}
	}
	textbox_yoff = lerp(textbox_yoff,0,0.2)
	textcopy_timer--
	if textcopy_timer <= 0 && text_spot < string_length(text[text_selected]) + 1
	{
		play_sfx(sfx_text)
		textcopy_timer = 2
		textcopy += string_copy(text[text_selected],text_spot,1)
		var textlinestart = 0
		while string_pos_ext("\n",textcopy,textlinestart)
			textlinestart = string_pos_ext("\n",textcopy,textlinestart) + 1
		if string_width(string_copy(textcopy,textlinestart,999)) > text_wrap_width && string_copy(text[text_selected],text_spot,1) = " "
			textcopy += "\n"
		text_spot++
		
		//if dyslexia_mode
		//{
		//	dys_timer--
		//	if dys_timer <= 0
		//	{
		//		dys_timer = 15
		//		dys_textcopy = ""
		//		var dyslexia_swap_letters = false
		//		var dyslexia_prev_swap_letters = false
		//		for (var i = 1; i < string_length(textcopy); i++)
		//		{
		//			//am i a swapper?
		//			randomize()
		//			if !dyslexia_prev_swap_letters
		//				dyslexia_swap_letters = irandom_range(1,12)
		
		//			//build it
		//			if dyslexia_swap_letters = 1
		//				dys_textcopy += string_copy(textcopy,i + 1,1)
		//			else if dyslexia_prev_swap_letters
		//				dys_textcopy += string_copy(textcopy,i - 2,1)
		//			else
		//				dys_textcopy += string_copy(textcopy,i,1)
		
		//			if dyslexia_swap_letters
		//				dyslexia_prev_swap_letters = true
		//			else dyslexia_prev_swap_letters = false
		
		//			dyslexia_swap_letters = false
		//		}
		//	}
		//	else
		//	{
		//		dys_textcopy += string_copy(textcopy,text_spot,1)
		//	}
		//}
	}
	
	if gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P
	{
		if text_spot >= string_length(text[text_selected]) + 1
		{
			if text_selected < max_texts
			{
				textcopy = ""
				dys_textcopy = ""
				text_spot = 1
				text_selected++
				play_sfx(sfx_textcontinue,false)
			}
			else
			{
				speaking = false
				textbox_show = false
				text_selected = 0
				textcopy = ""
				dys_textcopy = ""
				textcopy_timer = 0
				text_spot = 1

				controllable = true
				obj_player.talking = false
				play_sfx(sfx_textclose,false)
			}
		}
		else
		{
			textcopy = ""
			for (text_spot = 1; text_spot < string_length(text[text_selected]) + 1; text_spot++)
			{
				textcopy += string_copy(text[text_selected],text_spot,1)
				var textlinestart = 0
				while string_pos_ext("\n",textcopy,textlinestart)
					textlinestart = string_pos_ext("\n",textcopy,textlinestart) + 1
				if string_width(string_copy(textcopy,textlinestart,999)) > text_wrap_width && string_copy(text[text_selected],text_spot,1) = " "
					textcopy += "\n"
			}
			dys_textcopy = textcopy
		}
	}
}
else
{
	textbox_yoff = lerp(textbox_yoff,150,0.2)
	if place_meeting(x,y,obj_player) && (gamepad_axis_value(0,gp_axislv) < -0.2 || keyboard_check(vk_up)) && !speaking && !fadeaway && obj_player.state != states.floured && obj_player.state != states.rocket
	{
		play_sfx(sfx_textopen,false)
		speaking = true
		//speechbubble = false
		textbox_show = true
		
		with obj_player
		{
			controllable = false
			talking = true
		}
	}
}

//if !speechbubble && instance_exists(my_speechbubble)
//	my_speechbubble.exiting = true
	
xscroll -= 0.5
yscroll -= 0.5
if xscroll < -sprite_get_width(drawnbg)
	xscroll += sprite_get_width(drawnbg)
if yscroll < -sprite_get_height(drawnbg)
	yscroll += sprite_get_height(drawnbg)
	
if speaking
	sprite_index = talkspr
else
	sprite_index = idlespr
	
if fadeaway
{
	image_alpha -= 0.01
	if image_alpha <= 0
		instance_destroy()
}

//if string_length(textcopy) >= string_length(text[text_selected])
//{
	dys_timer--
	var dyslexia_swap_letters = false
	var dyslexia_prev_swap_letters = false
	if dys_timer <= 0
	{
		dys_timer = 15
		dys_textcopy = ""
		var dyslexia_swap_letters = false
		var dyslexia_prev_swap_letters = false
		for (var i = 1; i < string_length(textcopy); i++)
		{
			//am i a swapper?
			//randomize()
			if !dyslexia_prev_swap_letters
				dyslexia_swap_letters = irandom_range(1,13)
		
			//build it
			if dyslexia_swap_letters = 12
				dys_textcopy += string_copy(textcopy,i + 1,1)
			else if dyslexia_prev_swap_letters && i != 1
				dys_textcopy += string_copy(textcopy,i - 2,1)
			else
				dys_textcopy += string_copy(textcopy,i,1)
		
			//if dyslexia_swap_letters
			//	dyslexia_prev_swap_letters = true
			//else 
			//	dyslexia_prev_swap_letters = false
		
			dyslexia_swap_letters = -1
		}
	}
//}