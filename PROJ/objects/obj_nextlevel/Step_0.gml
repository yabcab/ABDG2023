if sprite_index = spr_flagpole_fly
{
	image_angle -= 10
	vspeed -= 0.25
	image_alpha -= 0.025
}
if fade
{
	fadealph += 0.05
	if fadealph >= 1
		room_goto(targetroom)

}