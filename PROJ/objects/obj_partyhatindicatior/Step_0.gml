_time++
y -= 2
if _time > 30
	fade -= 0.05
if fade <= 0
	instance_destroy()