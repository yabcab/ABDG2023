function shd_highlight_init()
{
	add_s = 0
	_time = 0
	_UniAdd = shader_get_uniform(shd_brighten,"add")
	_Add = [add_s,add_s,add_s]
}

function shd_highlight_set(highlight_me)
{
	shader_set(shd_brighten)
	if highlight_me
		shader_set_uniform_f(_UniAdd, add_s);
	else
		shader_set_uniform_f(_UniAdd, 0);
}

function shd_highlight_wave_step(dotime,sindrag = 10,sindamp = 3)
{
	if dotime
		_time++
	
	var _add_s = abs(sin(_time / sindrag) / sindamp)
	_Add = [_add_s,_add_s,_add_s]
}