if part = 0
{
	fade_amount += 0.07
	if fade_amount > 1
	{
		room_goto(targetroom)
		part = 1
		if !obj_LGplayer.entering_level
			obj_LGplayer.visible = 1
	}
}
if part = 1
{
	fade_amount -= 0.07
	if fade_amount < 0
		instance_destroy()
}