if instance_exists(obj_LGplayer)
{
	if instance_exists(obj)
		instance_destroy(obj)
	if !instance_exists(obj) && obj_LGplayer.bbox_bottom < y
	{
		var s = image_xscale
		obj = instance_create_depth(x,y,depth,obj_platsolid)
		with obj
			image_xscale = s * 4
	}
}



if instance_place(x + hspeed,y,obj_enemyturn)
	hspeed *= -1
if instance_place(x,y + vspeed + 100,obj_enemyturn) || instance_place(x,y + vspeed,obj_enemyturn)
	vspeed *= -1
	
if pause_state != pausestate.none
	x -= hspeed
else
	if distance_to_object(obj_LGplayer) < 2 && obj_LGplayer.onground && obj_LGplayer.vspeed >= 0
	{
		obj_LGplayer.x += hspeed
		obj_LGplayer.vspeed = 0
		obj_LGplayer.y += vspeed
		obj_LGcamera.x += hspeed
		obj_LGcamera.y += vspeed
	}	
