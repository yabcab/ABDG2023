

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

instance_destroy(obj_player)
instance_destroy(obj_music)
instance_destroy(obj_metronome)