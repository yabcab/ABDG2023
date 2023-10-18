mask_index = spr_enemyplaceholder

if distance_to_object(obj_bullet) < 10
{
	play_sfx(sfx_owie)
	hp--
	if hp <= 0
		instance_destroy()
	with instance_nearest(x,y,obj_bullet)	
		instance_destroy()
}

if position_meeting(x,bbox_bottom - 1,obj_solid)
	y--

//i dont want you bro
//if bbox_left > 0 && bbox_right < room_width && bbox_top > 0 && bbox_bottom < room_height
//	inroom = true
//if inroom
//{
//	while bbox_left < 0
//		x++
//	while bbox_right > room_width
//		x--
//	while bbox_top < 0
//		y++
//	while bbox_bottom > room_height
//		y--
//}