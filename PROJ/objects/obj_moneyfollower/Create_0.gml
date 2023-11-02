follow_state = follow_states.sit
vspeed = -9
track = obj_player
image_xscale = 0
image_yscale = 0
alarm[0] = 60
time = random_range(0,1000)
image_index = random_range(0,1)
bobsin = 0

enum follow_states
{
	sit,
	track_inst,
}