switch loaderpos
{
	default:
	{
		room_goto(rm_init)
	}
	break;
	
	case 0:
	{
		var g = audio_music_trialstrib
		groupname = "audio_music_trialstrib"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 1
			loadingtime = 0	
		}
	}
	break;
	
	case 1:
	{
		var g = audio_music_quenge
		groupname = "audio_music_quenge"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 2
			loadingtime = 0	
		}
	}
	break;
	
	case 2:
	{
		var g = audio_music_louch
		groupname = "audio_music_louch"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 3
			loadingtime = 0	
		}
	}
	break
	
	case 3:
	{
		var g = audio_sound_trialstrib
		groupname = "audio_sound_trialstrib"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 4
			loadingtime = 0	
		}
	}
	break;
	
	case 4:
	{
		var g = audio_sound_quenge
		groupname = "audio_sound_quenge"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 5
			loadingtime = 0	
		}
	}
	break;
	
	case 5:
	{
		var g = audio_sound_louch
		groupname = "audio_sound_louch"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 6
			loadingtime = 0	
		}
	}
	break;
	
	case 6:
	{
		var g = audio_voice_nolant
		groupname = "audio_voice_nolant"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 7
			loadingtime = 0	
		}
	}
	break;
	
	case 7:
	{
		var g = audio_voice_breadalliance
		groupname = "audio_voice_breadalliance"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 8
			loadingtime = 0	
		}
	}
	break;
	
	case 8:
	{
		var g = audio_voice_gilbertor
		groupname = "audio_voice_gilbertor"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 9
			loadingtime = 0	
		}
	}
	break;
	
	case 9:
	{
		var g = audio_voice_harper
		groupname = "audio_voice_harper"
		audio_group_load(g)
		if audio_group_is_loaded(g)
		{
			loaderpos = 10
			loadingtime = 0	
		}
	}
	break;
	
	case 10:
	{
		groupname = "sprite_data"
		for (var i = 0; sprite_exists(i + 1); i++)
			sprite_prefetch(i)
		room_goto(rm_init)
	}
	break;
}

loadingtime++
if loadingtime > 100
{
	loadingtime = 0
	show_message("Failed to load item, skipping to next...")
	loaderpos++
}