obj_music.mu = mu_hub2
is_secret = 0
is_trial = 0
keys = 0

if instance_exists(obj_timer)
	instance_destroy(obj_timer)
if instance_exists(obj_freezetimer)
	instance_destroy(obj_freezetimer)
while instance_exists(obj_LGkey)
	instance_destroy(obj_LGkey)
	
ds_list_destroy(destroy_list)
destroy_list = ds_list_create()

health = 7
score = 0
obj_LGhud.display = 1

can_pause = 1
obj_LGplayer.state = 0
obj_LGplayer.idlestate = 0
obj_LGplayer.statesave = 0
obj_LGplayer.nonstunstate = 0
obj_LGplayer.hp = 7
obj_LGplayer.vspeed = 0

audio_stop_sound(mu_timetrial)
audio_stop_sound(mu_escapesecret)