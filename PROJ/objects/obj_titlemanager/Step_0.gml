var jh, jv
jh = gamepad_axis_value(0,gp_axislh)
jv = gamepad_axis_value(0,gp_axislv)

if obj_gameintro.activated
{
	y = lerp(y,0,0.05)
	
	if (KEY_L_P || (jh < -0.2 && lastjoy_h >= -0.2)) && faceright
	{
		swapping = true
		faceright = false
		image_index = 0
	}
	else if (KEY_R_P || (jh > 0.2 && lastjoy_h <= 0.2)) && !faceright
	{
		swapping = true
		faceright = true
		image_index = 0
	}
	
	if !faceright && (KEY_JMP_P || gamepad_button_check_pressed(0,CONT_A))
	{
		room_goto(rm_khizarbasement1) // TEMPORARY
		audio_stop_sound(mu_title)	
	}
}
 
if faceright
	if swapping
		sprite_index = spr_title_lefttoright
	else
		sprite_index = spr_title_hoverright
else
	if swapping
		sprite_index = spr_title_righttoleft
	else
		sprite_index = spr_title_hoverleft
	

lastjoy_h = jh
lastjoy_v = jv