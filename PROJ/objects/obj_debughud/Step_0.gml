if gamepad_button_check_pressed(0,gp_shoulderl)
{
	page--
	if page < 0
		page = maxpages
}
else if gamepad_button_check_pressed(0,gp_shoulderr)
{
	page++
	if page > maxpages
		page = 0
}