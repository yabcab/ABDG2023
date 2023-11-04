if state != 1
{
	do_hitstun(5)
	instance_create_depth(mean(x,obj_LGplayer.x),mean(y,obj_LGplayer.y),depth - 1,obj_hitstuneffect)
	state = 1
	waking = 1
	image_index = 0
	hspeed = 0
	vspeed = -3
	audio_play_sound(sfx_bonk,1,0)
	if obj_LGplayer.state = playerstate.balloon_pound
	{
		with obj_LGplayer
		{
			state = idlestate
			jumping = 1
			vspeed = -7
			jumps = 1
			if key_jump
				vspeed = -10
		}
	}
}
