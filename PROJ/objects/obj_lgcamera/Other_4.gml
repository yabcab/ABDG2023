if camera_get_view_target(view_camera[0]) = obj_LGplayer
	camera_set_view_target(view_camera[0],self)
oldtarget = camera_get_view_target(view_camera[0])
	
x = obj_LGplayer.x + (obj_LGplayer.facing * 20)
xx = obj_LGplayer.x + (obj_LGplayer.facing * 20)
y = obj_LGplayer.y

_time = 0