if gamepad_button_check_pressed(0,CONT_A) || KEY_JMP_P
{
	room_goto(rm_title)
	play_sfx(sfx_baby,false)
}	
time++
bobsin = sin(time / 40) * 4