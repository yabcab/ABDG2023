//WOOOOO CODE OPIMIZATION!!!!!!!!!
var dyslexia = dyslexia_mode || global_npc_dyslexia

var xx = 5
var yy = 440 + textbox_yoff
if !surface_exists(surf)
	surf = surface_create(960,115)
surface_set_target(surf)
draw_sprite_tiled(drawnbg,0,xscroll,yscroll)
surface_reset_target()
draw_surface(surf,0,425 + textbox_yoff)
draw_sprite(spr_textbox_border,0,0,textbox_yoff - 10)
draw_set_font(fnt_game)
draw_set_color(c_black)
draw_set_alpha(0.25)
if dyslexia
	draw_text(xx-2,yy+2,dys_textcopy)
else
	draw_text(xx-2,yy+2,textcopy)
draw_set_color(c_white)
draw_set_alpha(1)
if dyslexia
	draw_text(xx,yy,dys_textcopy)
else
	draw_text(xx,yy,textcopy)