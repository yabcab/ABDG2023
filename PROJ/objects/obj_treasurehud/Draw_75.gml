draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_game)
draw_set_color(c_black)
draw_set_alpha(fadealph)
draw_rectangle(0,0,960,540,false)
draw_set_color(c_white)
draw_set_alpha(1)

draw_self() // yes

draw_sprite(spr_treasures,tindex,816,y + 98)
draw_text(7,182 + y,tprompt)
draw_text(7,301 + y,tdesc)
draw_text(595,220 + y,tname)