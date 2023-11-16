function approach(val1,val2,inc)
{
	return argument0 + clamp(argument1 - argument0, -argument2, argument2)
}

function play_sfx(sound,do_pitch = true,pitch_low = 0.8,pitch_high = 1.2)
{
	var s = audio_play_sound(sound,0,false)
	if do_pitch
		audio_sound_pitch(s,random_range(pitch_low,pitch_high))
	return s
}

function play_va(sound)
{
	var s = audio_play_sound(sound,0,false)
	return s
}

function make_shadow()
{
	////init req'd vars
	//yoff = 0
	//rot = 0
	//facing = 1
	//bobsin = 0
	//rotsin = 0
	
	////make it
	//with instance_create_depth(0,0,101,obj_shadow)
	//	assigned = other.id
}

function glue_overlay(spr)
{
	with instance_create_depth(0,0,0,obj_golfytitle)
		sprite_index = spr
}

function cull_me()
{
	if !place_meeting(x,y,obj_camera.playercamregion) && !place_meeting(x,y,obj_camera)
		instance_deactivate_object(id)
}

function cull_me_onlycam()
{
	if !place_meeting(x,y,obj_camera.playercamregion) && !place_meeting(x,y,obj_camera)
		instance_deactivate_object(id)
}

function bg_blend(layer_name,color)
{
	layer_background_blend(layer_background_get_id(layer_get_id(layer_name)),color)		
}

function generator_cull_check() {
	if x < obj_generator.distance - 500
	{
		silent = true
		instance_destroy()
		return true
	}
}

function inside_wall_check()
{
	if (place_meeting(x + 1,y,obj_solid) && place_meeting(x - 1,y,obj_solid)) || (place_meeting(x,y + 1,obj_solid) && place_meeting(x,y - 1,obj_solid))
		return 1
}

function show_treasurehud(index,name,desc,prompt)
{
	with instance_create_depth(0,0,0,obj_treasurehud)
	{
		player_saved_state = obj_player.state
		tname = name
		tdesc = desc
		tindex = index
		tprompt = prompt
	}
	with obj_player
	{
		image_speed = 0
		state = -3.14159265359 //pi
		hsp = 0
		vsp = 0
	}
}