thing1 = instance_create_depth(x,y,depth,obj_treasureaura)
with thing1
{
	track = true
	trackid = other.id
	sprite_index = other.sprite_index
	image_index = other.image_index	
}
thing2 = instance_create_depth(x,y,depth,obj_treasureaura)
with thing2
{
	track = true
	trackid = other.id
	sprite_index = other.sprite_index
	image_index = other.image_index	
	_time = 3600
}

ini_open("trialssave.tt2") //file extension works i checked
if ini_read_real("tres",tres_id,false)
	image_alpha = 0.5
ini_close()