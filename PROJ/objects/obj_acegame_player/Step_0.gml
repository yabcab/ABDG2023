var axh, axv, axdir
axh = gamepad_axis_value(0,gp_axislh)
axv = gamepad_axis_value(0,gp_axislv)
axdir = point_direction(0,0,axh,axv)

if KEY_L
	axh = -1
if KEY_R
	axh = 1
if KEY_U
	axv = -1
if KEY_D
	axv = 1
		
hsp = approach(hsp,6 * axh,1)
vsp = approach(vsp,6 * axv,1)

collider_step()