instance_destroy()
do_chancehit(5)
var h = hspeed
with instance_create_depth(x,y,other.depth + 1,obj_eatenapple)
{
	popout = 0.02
	sprite_index = spr_cherries_dead1
	vspeed = random_range(-5,-7)
	hspeed = obj_LGplayer.hspeed + h + random_range(-2,2)
	effect = 1
	rot_speed = 15
}
with instance_create_depth(x,y,other.depth + 1,obj_eatenapple)
{
	popout = 0.02
	sprite_index = spr_cherries_dead2
	vspeed = random_range(-5,-7)
	hspeed = obj_LGplayer.hspeed + h + random_range(-2,2)
	effect = 1
	rot_speed = 15
}
audio_play_sound(sfx_schlap,1,0)
do_hitstun(5)
instance_create_depth(mean(x,obj_LGplayer.x),mean(y,obj_LGplayer.y),depth - 1,obj_hitstuneffect)
obj_LGhud.combotimer = 180
score += 20 * (obj_LGplayer.combo + 1)
obj_LGplayer.combo += 1
ds_list_set(destroy_list,id,1)
