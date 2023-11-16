lastwalldist = 0
disttonextwall = 0
wallsnap = 0
spawnwalls = 0

dist_since_last_enemy = 0
dist_until_next_enemy = 0

//default enemy spawns
enemy_pool_size = 1 // actual pool size is 1 greater (account for array spot 0)
enemy_pool = []
enemy_pool[0] = enemytype.default_ai
enemy_pool[1] = enemytype.swarmer

area_start_dist = 0
area_next_dist = 0
area_current = 0

randomize()
audio_stop_all()
targetscroll = 0
music = audio_play_sound(mu_pantry,1,false)
audio_sound_set_track_position(music,203.5) // TEMP
targetcolor_r = 0
color_r = 0
targetcolor_g = 0
color_g = 0
targetcolor_b = 0
color_b = 0
bound_layer = layer_get_id("Effect_1")
spawn_fireworks = false
fw_time = 0
fw_thres = 0

enum enemytype {
	no_ai,
	default_ai,
	swarmer,
	crier,
	jumper,
	walker,
	chaser,
}
	
enum boundry_snap {
	bottom,
	top
}
	
enum areas {
	test1,
	test2
}

globalvar scroll; scroll = 0
distance = scroll