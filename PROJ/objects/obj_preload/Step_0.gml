switch loaderpos
{
	case 0:
	{
		var g = audio_music_trialstrib
		groupname = "audio_music_trialstrib"
		audio_group_load(g)
		if audio_group_is_loaded(g)
			loaderpos = 1
	}
	break;
	
	case 1:
	{
		var g = audio_music_quenge
		groupname = "audio_music_quenge"
		audio_group_load(g)
		if audio_group_is_loaded(g)
			loaderpos = 2
	}
	break;
	
	case 2:
	{
		var g = audio_sound_trialstrib
		groupname = "audio_sound_trialstrib"
		audio_group_load(g)
		if audio_group_is_loaded(g)
			loaderpos = 3
	}
	break;
	
	case 3:
	{
		var g = audio_sound_quenge
		groupname = "audio_sound_quenge"
		audio_group_load(g)
		if audio_group_is_loaded(g)
			loaderpos = 4
	}
	break;
	
	case 4:
	{
		var g = audio_voice_nolant
		groupname = "audio_voice_nolant"
		audio_group_load(g)
		if audio_group_is_loaded(g)
			loaderpos = 5
	}
	break;
	
	case 5:
	{
		var g = audio_voice_breadalliance
		groupname = "audio_voice_breadalliance"
		audio_group_load(g)
		if audio_group_is_loaded(g)
			room_goto(rm_init)
	}
	break;
}