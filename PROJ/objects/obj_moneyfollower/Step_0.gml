switch follow_state
{
	case follow_states.sit:
	{
		hspeed = lerp(hspeed,0,0.1)
		vspeed = lerp(vspeed,0,0.1)
	}
	break;
	
	case follow_states.track_inst:
	{
		x = lerp(x,track.x - (40 * obj_player.facing),0.1)
		y = lerp(y,track.y - 10,0.1)
	}
	break;
}

image_xscale = lerp(image_xscale,1,0.1)
image_yscale = lerp(image_yscale,1,0.1)

_time++
bobsin = sin(_time / 40) * 5