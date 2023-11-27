if instance_exists(obj_LGplayer)
{
	alarm[0] = 10
	image_speed = 0
	image_index = obj_LGplayer.image_index
	sprite_index = obj_LGplayer.sprite_index
	image_xscale = obj_LGplayer.facing
	image_angle = obj_LGplayer.rot
}
image_alpha = 0.4
startfade = 0
flash = 0
flashtime = 0
alph = 1
fromplayer = 0
if pause_state = pausestate.playerpause
	instance_destroy()