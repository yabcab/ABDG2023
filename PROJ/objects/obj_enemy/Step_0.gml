hsp = 3 * facing
var solid_in_way = place_meeting(x + hsp,y,obj_solid)
var enemysolid_in_way = place_meeting(x + hsp,y,obj_enemysolid)
var no_ground_left = ((!position_meeting(bbox_left - hsp,bbox_bottom + 1,obj_solid) && !position_meeting(bbox_left - hsp,bbox_bottom + 1,obj_platform)) && facing = -1)
var no_ground_right = ((!position_meeting(bbox_right + hsp,bbox_bottom + 1,obj_solid) && !position_meeting(bbox_right + hsp,bbox_bottom + 1,obj_platform)) && facing = 1)
if grounded
{
	if no_ground_left
	{
		x += 5
		facing = 1
	}
	if no_ground_right
	{
		x -= 5
		facing = -1
	}
	if solid_in_way || enemysolid_in_way
	{
		x -= 5 * facing
		facing *= -1
	}
}

vsp = approach(vsp,14,0.4)

collider_step()
cull_me()
if inside_wall_check()
	instance_destroy()
if instance_exists(obj_generator)
	generator_cull_check()
	
if (KEY_EGG_P || gamepad_button_check_pressed(0,CONT_X)) && obj_player.state = states.sandal && distance_to_object(obj_player) < 20
{
	points += 125
	instance_destroy(other)
	play_sfx(sfx_egghit)
	with instance_create_depth(other.x,other.y,-1,obj_eggparticle)
	{
		sprite_index = spr_enemy_dead
		if obj_player.state = states.hedgehog
			hspeed = (obj_player.hsp * 2) + random_range(-2,2)
		else
			hspeed = (12 * obj_player.facing) + random_range(-2,2)
		vspeed = random_range(-8,-12)
	}
}