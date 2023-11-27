visible = is_timetrial

if is_timetrial && !createdplat
{
	createdplat = 1
	with instance_create_depth(x,y,depth,obj_LGplatform)
	{
		image_xscale = (other.image_xscale * 4)
	}
}