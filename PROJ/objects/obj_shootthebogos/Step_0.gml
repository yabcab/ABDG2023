if outro
	wall_offset = lerp(wall_offset,500,0.2)
else if bring_walls
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
		while bogos_x > 808
			bogos_x--
	}
	else if bogos_x < 152
	{
		bogos_hsp *= -1
		while bogos_x < 152
			bogos_x++
	}
	
	if bogos_vsp >= 0
		bogos_hit = false
	if bogos_y > 600 && !outro
	{
		add_points(-100)
		bogos_y -= 700
		bogos_vsp = 0 // lol this caused a funny thing when it wasnt here
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

var axis_h = gamepad_axis_value(0,gp_axislh)
var axis_v = gamepad_axis_value(0,gp_axislv)
var joydir = point_direction(0,0,axis_h,axis_v)
var dir_x = lengthdir_x(cursor_speed,joydir)
var dir_y = lengthdir_y(cursor_speed,joydir)
if abs(axis_h) > 0
	cursor_x += dir_x
if abs(axis_v) > 0
	cursor_y += dir_y

if KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A)
{
	cursor_scale = 0.5
	x = bogos_x
	y = bogos_y
	if distance_to_point(cursor_x,cursor_y) < bogos_hitbox_size && !outro
	{
		hits++
		bogos_vsp = -7
		bogos_hsp = random_range(-8,8)
		bogos_hit = true
		bogos_hitindex = irandom_range(0,2)
	}
}

if outro
	cursor_scale = lerp(cursor_scale,0,0.15)
else
	cursor_scale = lerp(cursor_scale,1,0.15)
if logo_y > -500
	logo_y -= 5

if hits >= 20
{
	outro = true
	with obj_checkeroverlay
		sq_tsize = 0
	with obj_4by3
		targ = -200
	if obj_player.state = 1847385 // heh.
	{
		obj_player.state = states.normal
		instance_create_depth(2176,4384,depth,obj_car)
		play_sfx(sfx_explosion)
		play_sfx(sfx_boom)
		music_set_active_slot(4)
		instance_destroy(inst_SHOOTBOGOS_NPC)
		
		repeat 100
		{
			with instance_create_depth(random_range(0,960),random_range(0,540),-2,obj_smokepuff)
			{
				sprite_index = spr_explosion
				image_speed = random_range(0.5,2)
				gui = true
			}
		}
	}
}

if outro && bogos_y > 700 && wall_offset > 450
	instance_destroy()