//CONTROLLER SUPPORT FOR QOTQ MADE FOR T&T2

var joy_pos, joy_snap, joy_pos_snapped, joy_h, joy_v
joy_h = gamepad_axis_value(0,gp_axislh)
joy_v = gamepad_axis_value(0,gp_axislv)
joy_pos = point_direction(0,0,joy_h,joy_v)
joy_snap = 90
joy_pos_snapped = round(joy_pos / joy_snap) * joy_snap

if joy_h != 0 || joy_v != 0
{
	switch joy_pos_snapped 
	{ // rots are fucked up here but whatev it still works fine ingame
		case 90: { event_perform(ev_keyboard,vk_up) } break;
		case 0: { event_perform(ev_keyboard,vk_right) } break;
		case 270: { event_perform(ev_keyboard,vk_down) } break;
		case 180: { event_perform(ev_keyboard,vk_left) } break;
	}
}
else if (joy_h_p != 0 || joy_v_p != 0)
	event_perform(ev_keyrelease,vk_left)

if gamepad_button_check(0,CONT_X)
{
	var l42720388_0 = instance_place(x + 0, y + 0, WaterHitbox);
	if (!(l42720388_0 > 0))
	{
		scr_attackfind()
	}
}
if gamepad_button_check_released(0,CONT_X)
	event_perform(ev_keyrelease,ord("X"))

joy_h_p = joy_h
joy_v_p = joy_v