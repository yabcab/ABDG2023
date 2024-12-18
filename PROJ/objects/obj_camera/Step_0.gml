if instance_exists(obj_player)
{
	with obj_player
		other.playercamregion = instance_position(x,y,obj_camregion)
	if playercamregion != noone
		active_region = playercamregion
	
		if playercamregion != prev_pregion
			play_sfx(sfx_camregionswap)
		
		if playercamregion = noone
		{
			x = lerp(x,obj_player.x,0.2)
			y = lerp(y,obj_player.y,0.2)
		}
		else
		{
			x = lerp(x,clamp(obj_player.x,playercamregion.x + 480,playercamregion.x - 480 + (960 * playercamregion.image_xscale)),0.2)
			y = lerp(y,clamp(obj_player.y + (obj_player.yoff / 2),playercamregion.y + 270,playercamregion.y - 270 + (540 * playercamregion.image_yscale)),0.2)
			if playercamregion.setslot != -1 && !override_cambound_music_slots
				music_set_active_slot(playercamregion.setslot)
			if playercamregion.reset_on_first
			{
				playercamregion.reset_on_first = false
				music_restart_slot(playercamregion.setslot)
			}
		}
		
		//i actually need optimization lol
		instance_activate_region(active_region.x,active_region.y,960 * active_region.image_xscale,540 * active_region.image_yscale,true) // in cam region
		instance_activate_region(x - 480,y - 270,960,540,true) // in cam
		
		prev_pregion = playercamregion
}