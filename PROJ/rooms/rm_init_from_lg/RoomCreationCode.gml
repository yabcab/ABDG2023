obj_hud.hudenable = true

room_goto(rm_newpork)

if os_type = os_windows
	window_set_size(1920,1080)
else
	window_set_size(960,540)

//for when i have music playing
//audio_group_set_gain(audiogroup_default,0,0) 


//show_debug_overlay(debug)
gamepad_set_axis_deadzone(0,0.2)
display_set_gui_size(960,540)

instance_destroy(obj_LGplayer)
instance_destroy(obj_LGcamera)
instance_destroy(obj_pausemenucontroller)
instance_destroy(obj_LGhud)
instance_destroy(obj_music)
instance_destroy(obj_metronome)

audio_stop_sound(mu_levelcomplete)

music_set_slot_count(2)
music_set_slot_target(0,mu_newpork)
music_set_slot_target(1,mu_newpork2)
music_set_slot_target(2,mu_sandwhichshop)
music_set_active_slot(0)

window_set_caption("Scamming people in the " + gamename)