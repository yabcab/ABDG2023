if bring_walls
	wall_offset = lerp(wall_offset,0,0.2)
	
if bogos_physics
{
	image_angle += abs(bogos_hsp) + abs(bogos_vsp)
	bogos_vsp += 0.2
	//bogos_hsp = approach(bogos_hsp,0,0.1)
	
	bogos_x += bogos_hsp
	bogos_y += bogos_vsp
	
	if bogos_x > 808
	{
		bogos_hsp *= -1
		while bogos_x > 776
			bogos_x--
	}
	else if bogos_x < 152
	{
		bogos_hsp *= -1
		while bogos_x < 120
			bogos_x++
	}
}

cursor_rot -= 2

var cursor_speed = 8
var move_l = KEY_R - KEY_L
var move_v = KEY_D - KEY_U
cursor_x += cursor_speed * move_l
cursor_y += cursor_speed * move_v
cursor_x = clamp(cursor_x,120,840)
cursor_y = clamp(cursor_y,0,540)
if KEY_JMP_P
{
	cursor_scale = 0.5
	x = bogos_x
	y = bogos_y
	if distance_to_point(cursor_x,cursor_y) < bogos_hitbox_size
	{
		hits++
		bogos_vsp = -7
		bogos_hsp = random_range(-8,8)
	}
}

cursor_scale = lerp(cursor_scale,1,0.15)
if logo_y > -500
	logo_y -= 5