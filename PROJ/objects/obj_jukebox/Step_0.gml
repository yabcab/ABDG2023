if place_meeting(x,y,obj_player) && obj_player.grounded
{
	if is_active
		texty = lerp(texty,0,0.05)
	if KEY_U_P
	{
		song_index[100] = 0
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
			music_set_slot_target(3,array_get(song_index,selected_track))
			show_debug_message(song_ingame[selected_track] + " - " + song_name[selected_track] + " by " + song_author[selected_track])
			show_debug_message(string(selected_track) + "/" + string(array_length(song_ingame)))
		}
	}
}
else
	texty = lerp(texty,200,0.05)