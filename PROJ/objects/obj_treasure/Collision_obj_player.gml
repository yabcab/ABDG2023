if visible
{
	play_sfx(sfx_gettres)
	instance_destroy()
	//destroylist_add()
	//audio_play_sound(sfx_collecttreasure,0,false,1,0,random_range(0.8,1.2))
	with instance_create_depth(x,y,depth,obj_treasuregetaura)
	{
		sprite_index = other.sprite_index
		image_index = other.image_index	
	}
	repeat(10)
	{
		with instance_create_depth(x,y,depth + 1,obj_smoke)
		{
			sprite_index = spr_smallsparkle
			image_speed = 0.25
			hspeed = random_range(-3,3)
			vspeed = random_range(-3,3)
		}
	}
	show_treasurehud(tres_id,tres_name,tres_desc,tres_prompter)

	ini_open("save.tt2")
	ini_write_real("tres",tres_id,true)
	treasure_save[tres_id] = true
	ini_close()
}