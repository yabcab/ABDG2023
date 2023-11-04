obj_LGplayer.state = -1

if bbox_bottom < room_height
{
	speed = 0
	if obj_LGplayer.key_jump_press
	{
		room_goto(rm_LGtitle)
		audio_play_sound(sfx_menupick1,1,0)
		obj_LGplayer.key_jump = 0	
		obj_LGplayer.key_jump_press = 0	
	}
}
else
	if obj_LGplayer.key_jump
		vspeed = -2
	else
		vspeed = -0.5