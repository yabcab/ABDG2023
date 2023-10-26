if outro
{
	fadealph = lerp(fadealph,0,0.1)	
	y = lerp(y,1000,0.1)
	
	if y > 600 && fadealph = 0
		instance_destroy()
		
	if y > 600 && fadealph < 0.4 && !gotcontrolback
	{
		gotcontrolback = true
		obj_player.state = player_saved_state
	}
}
else
{
	fadealph = lerp(fadealph,0.75,0.1)	
	y = lerp(y,0,0.1)
}

if gamepad_button_check_pressed(0,CONT_A) && !outro
	outro = true