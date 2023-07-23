vsp = approach(vsp,12,0.4)

with obj_player
	var dist = distance_to_object(obj_possessable_parent)
var closest_possessable = instance_nearest(obj_player.x,obj_player.y,obj_possessable_parent)
var just_possessed = false

if closest_possessable = id && KEY_POS_P && possessed_object = noone && obj_player.grounded
{
	obj_player.state = possessed_state
	possessed_object = id
	just_possessed = true
	visible = false
}

if possessed_object = id && !just_possessed
{
	x = obj_player.x
	y = obj_player.y
	if KEY_D_P
	{
		possessed_object = noone
		obj_player.state = states.normal
		obj_player.hsp = 0
		obj_player.vsp = -12
		visible = true
	}
}