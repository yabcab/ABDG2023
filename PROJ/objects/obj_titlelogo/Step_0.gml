if obj_gameintro.activated && !obj_titlemanager.settingsactive
	y = lerp(y,whereiwannabe,0.1)
else
	y = lerp(y,whereiwannabe - 500,0.1)
time++
bobsin = sin(time / 30) * 6
rotsin = 0 //sin(time / 60) * 7