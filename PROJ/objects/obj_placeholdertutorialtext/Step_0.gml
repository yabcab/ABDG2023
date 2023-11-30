dist = distance_to_object(obj_player)
_time++
bobsin = sin(_time / 30) * 5

var ls = 0.1
if dist < 200 && ((obj_player.state = state_needed && need_specific_state) || !need_specific_state)
{
	//glubble
	textoff = lerp(textoff,0,ls)
	image_alpha = lerp(image_alpha,1,ls)
}
else
{
	//antiglubble
	textoff = lerp(textoff,50,ls)
	image_alpha = lerp(image_alpha,0,ls)
}