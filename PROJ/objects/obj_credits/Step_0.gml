if im_so_active
{
	if credheight > (2000 + string_height(creditstring)) * -1
	{
		credheight -= 0.4
		fadeamount = lerp(fadeamount,0,0.025)
	}

	if !audio_is_playing(mu_credits)
		fadeamount += 0.025
	if fadeamount >= 1
	{
		room_goto(rm_title)
		skip_loading = true	
	}
}