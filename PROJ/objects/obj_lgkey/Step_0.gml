if pause_state != pausestate.playerpause
{
	_time++
	yoff = sin(_time / 10) * 3
	if collected
	{
		if !instance_exists(following)
			if instance_exists(obj_LGplayer)
				following = obj_LGplayer
			else
			{
				instance_destroy()
				with instance_create_depth(x,y,-5,obj_eatenapple)
				{
					sprite_index = spr_LGkey
					rot_speed = 5
				}
				exit;
			}
		var x_diff = (following.x - x)
		var y_diff = (following.y - y)
		x += (x_diff + (32 * -obj_LGplayer.facing)) / 10
		y += y_diff / 10
		
		if keys < keynumb
		{
			instance_destroy()
			ds_list_set(destroy_list,id,1)
			with instance_create_depth(x,y,-5,obj_eatenapple)
			{
				sprite_index = spr_LGkey
				rot_speed = 5
			}
		}
	}
}

if trialdependant
	visible = is_timetrial