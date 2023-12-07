instance_destroy()
instance_destroy(obj_acegame_colmap)
instance_destroy(obj_acegame_toilet)
instance_destroy(inst_ACE)

//instance_create_depth(obj_player.x,obj_player.y,depth,obj_key)
obj_player.state = states.normal

override_cambound_music_slots = false
ace_game_finished = true

repeat 100
{
	with instance_create_depth(random_range(0,960),random_range(0,540),-2,obj_smokepuff)
	{
		sprite_index = spr_explosion
		image_speed = random_range(0.5,2)
		gui = true
	}
}

play_sfx(sfx_explosion)
play_sfx(sfx_boom)