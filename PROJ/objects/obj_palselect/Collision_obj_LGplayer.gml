if instance_place(x,y,obj_LGplayer) && obj_LGplayer.key_up && pause_state = pausestate.none && opened = 0
{
	opened = 1
	pause_state = pausestate.playerpause
	other.key_up_press = 0
}
