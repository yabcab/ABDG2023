image_angle += rotate_speed
image_xscale -= 0.01
image_yscale -= 0.01

if image_xscale < 0
	instance_destroy()
	
hspeed = lerp(hspeed,0,0.05)
vspeed = lerp(vspeed,0,0.05)