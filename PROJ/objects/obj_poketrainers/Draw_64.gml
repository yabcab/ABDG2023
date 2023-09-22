draw_sprite(spr_battlebg,0,120,0)
draw_sprite(spr_battleportraitsz,0,0 + place + bobsin,0)
if obj_pokemonbox.render_trainer2
	draw_sprite(spr_battleportraitsz,1,0 - place + 250 - bobsin,0) // ????? AAAAGGH
else
	draw_sprite(spr_battleportraitsz,2,0 - place + 250 - bobsin,0)