var joy_pos, joy_snap, joy_pos_snapped, joy_h, joy_v
joy_h = gamepad_axis_value(0,gp_axislh)
joy_v = gamepad_axis_value(0,gp_axislv)
joy_pos = point_direction(0,0,joy_h,joy_v)
joy_snap = 90
joy_pos_snapped = round(joy_pos / joy_snap) * joy_snap


//if (joy_h_p != 0 || joy_v_p != 0)
//	instance_destroy()

joy_h_p = joy_h
joy_v_p = joy_v