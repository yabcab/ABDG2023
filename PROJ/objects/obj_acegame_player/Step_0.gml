var axh, axv, axdir
axh = gamepad_axis_value(0,gp_axislh)
axv = gamepad_axis_value(0,gp_axislv)
axdir = point_direction(0,0,axh,axv)
		
hsp = approach(hsp,6 * axh,1)
vsp = approach(vsp,6 * axv,1)

collider_step()