_time++
y -= movespeed
movespeed = approach(movespeed,0,0.05)
if movespeed <= 0
{
	if _time > 30
		fade -= 0.05
	if fade <= 0
		instance_destroy()
}