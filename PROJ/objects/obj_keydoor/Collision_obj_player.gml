if (KEY_U || gamepad_axis_value(0,gp_axislv) < -0.2) && other.grounded && other.state = states.normal && instance_exists(obj_key)
{
	obj_player.state = -123456789
	fade = true
	obj_player.hsp = 0
	obj_player.vsp = 0
	obj_player.sprite_index = spr_playerR_idle
}