vsp = approach(vsp,12,0.4)

with obj_player
	var dist = distance_to_object(obj_possessable_parent)
var closest_possessable = instance_nearest(obj_player.x,obj_player.y,obj_possessable_parent)
var just_possessed = false

if closest_possessable = id && (KEY_POS_P || gamepad_button_check_pressed(0,CONT_Y)) && possessed_object = noone && obj_player.grounded && dist < 200 && !obj_player.talking
{
	if possessmusic
	{
		override_cambound_music_slots = true
		music_set_active_slot(pos_slot)	
	}
	obj_player.state = possessed_state
	possessed_object = id
	just_possessed = true
	visible = false
	obj_player.x = x
	obj_player.y = y
}

if possessed_object = id && !just_possessed
{
	x = obj_player.x
	y = obj_player.y
	if (KEY_POS_P || gamepad_button_check_pressed(0,CONT_Y)) && exitable
	{
		if possessmusic
			override_cambound_music_slots = false
		possessed_object = noone
		play_sfx(sfx_depossess)
		obj_player.state = states.normal
		//obj_player.hsp = 0
		obj_player.vsp = -12
		visible = true
		obj_player.hasdoublejump = true
	}
}