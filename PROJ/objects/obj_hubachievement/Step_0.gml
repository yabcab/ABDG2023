var h_dist = abs(x - obj_player.x)
if h_dist < 100
	fade = approach(fade,1,0.1)
else
	fade = approach(fade,0,0.1)