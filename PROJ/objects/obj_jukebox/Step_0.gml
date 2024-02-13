if place_meeting(x,y,obj_player) && obj_player.grounded
{
	if KEY_U_P
	{
		if !is_active
		{
			is_active = true
			override_cambound_music_slots = true
			music_set_active_slot(3,0,0)
			music_set_slot_target(3,song_index[selected_track])
		}
		else
		{
			selected_track++
			if selected_track > max_songs
				selected_track = 0
			music_set_slot_target(3,song_index[selected_track])
		}
	}
}