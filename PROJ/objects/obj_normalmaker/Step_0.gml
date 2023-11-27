var st = obj_LGplayer.idlestate

if st != playerstate.high
	sprite_index = spr_shroom2_eaten
else
	sprite_index = spr_shroom2

if pause_state = pausestate.none && instance_exists(obj_LGplayer)
	image_speed = 1
else
	image_speed = 0
	
if trialdependant
	visible = is_timetrial