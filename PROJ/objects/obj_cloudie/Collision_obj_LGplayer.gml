if !trialdependant || is_trial
{
	if !collected
	{
		collected = 1
		following = other.id
		//keys++
		obj_LGplayer.clouds++
		obj_LGplayer.totalcloud++
		keynumb = obj_LGplayer.totalcloud
		curr_clouds = obj_LGplayer.clouds
	}
}