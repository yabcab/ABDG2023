if instance_exists(obj_player)
{
	playercamregion = instance_place(obj_player.x,obj_player.y,obj_camregion)
	
	//if playercamregion = noone
	//{
		//x = lerp(x,obj_player.x,0.2)
		//y = lerp(y,obj_player.y + (obj_player.yoff / 2),0.2)
	//}
	//else
	//{ //plssss work plsssssss
		x = lerp(x,clamp(obj_player.x,playercamregion.x + 480,playercamregion.x - 480 + (960 * playercamregion.image_xscale)),0.2)
		y = lerp(y,clamp(obj_player.y + (obj_player.yoff / 2),playercamregion.y + 270,playercamregion.y - 270 + (540 * playercamregion.image_yscale)),0.2)
		if playercamregion.setslot != -1 && !override_cambound_music_slots
			music_set_active_slot(playercamregion.setslot)
	//}
}