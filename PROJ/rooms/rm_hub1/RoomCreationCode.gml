obj_music.mu = mu_hub
obj_LGcamera.camboby = 0
obj_ambience.playambience = 0
is_secret = 0
is_trial = 0
is_timetrial = 0
keys = 0
crowncollects = 0
rank_highestcombo = 0

if instance_exists(obj_timer)
	instance_destroy(obj_timer)
if instance_exists(obj_freezetimer)
	instance_destroy(obj_freezetimer)
while instance_exists(obj_LGkey)
	instance_destroy(obj_LGkey)
	while instance_exists(obj_keyfrag)
	instance_destroy(obj_keyfrag)
	
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
obj_LGplayer.rot = 0

audio_stop_sound(mu_timetrial)
audio_stop_sound(mu_bigtrial)
audio_stop_sound(mu_gauntlet)
audio_stop_sound(mu_escapesecret)

crownsseen = 0
var i;
for (i = 0; i < 99; i++)
	crownarray[i] = 0
ini_open("savedata.lmao")
totalcrowns = ini_read_real("stats","totalcrowns",0)

obj_LGplayer.live_enter = 0