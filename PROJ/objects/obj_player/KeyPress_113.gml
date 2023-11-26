if state != states.noclip
{
	noclip_saved_state = state
	state = states.noclip	
	ignore_collides = true
	mask_index = spr_emptymask
}
else
{
	state = noclip_saved_state
	noclip_saved_state = states.none
	ignore_collides = false
	mask_index = spr_playerR_idle
}