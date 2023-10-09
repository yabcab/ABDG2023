var c = 1
for (var i = 0; i < 20; i++)
{
	c *= -1
	switch c
	{
		case 1:	var col = sq_col1 break;
		case -1: var col = sq_col2 break;
	}
	
	draw_sprite_ext(spr_lilsquare,0,((i - 2) * 64) - sq_off,-sq_off,sq_size,sq_size,0,col,1)
	for (var b = 0; b < 20; b++)
	{
		c *= -1
		switch c
		{
			case 1:	var col = sq_col1 break;
			case -1: var col = sq_col2 break;
		}
	
		draw_sprite_ext(spr_lilsquare,0,((i - 2) * 64) - sq_off,((b - 2) * 64) - sq_off,sq_size,sq_size,0,col,1)
	}
}