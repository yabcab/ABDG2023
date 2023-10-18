if !silent
{
	switch type
	{
		case enemytype.default_ai:
		{
			points += 100
			instance_create_depth(x,y,depth - 1,obj_cratepart, {
				hspeed: 0,
				vspeed: 0,
				sprite_index: spr_eligoomba_hedgehogkill
			});
		
			play_sfx(sfx_balloonsnap)
			instance_create_depth(x + random_range(-5,5),y,depth - 1,obj_balloongib)
		}
		break;

		case enemytype.swarmer:
		{
			points += 25
			instance_create_depth(x,y,depth - 1,obj_cratepart, {
				hspeed: random_range(9,12),
				vspeed: random_range(-4,-6),
				//sprite_index: spr_swarmerdog_dead,
				rotate_speed: 5
			});
		}
		break;
	}

	repeat(10)
		with instance_create_layer(x,y,"Instances_outlinedblack",obj_smoke)
		{
			image_angle = random_range(0,359)
			image_xscale = 0.25
			image_yscale = 0.25
			hspeed = random_range(-4,4)
			vspeed = random_range(-4,4)
		}
}