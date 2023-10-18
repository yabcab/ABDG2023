draw_sprite_ext(sprite_index,image_index,x,y + bobsin,image_xscale * facing,image_yscale,rotation,image_blend,image_alpha)
if hp < starthp
	draw_healthbar(bbox_left - 5,bbox_bottom + 3 + bobsin,bbox_right + 5,bbox_bottom + 7 + bobsin,(hp / starthp) * 100,c_gray,c_red,c_green,0,true,true)