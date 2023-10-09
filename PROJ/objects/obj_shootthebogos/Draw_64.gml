#region shadows
draw_sprite_ext(spr_shootthebogos_logo,0,476,logo_y + 4,1,1,0,c_black,0.4)
draw_sprite_ext(spr_shootthebogos_walls,0,120 - wall_offset - 4,0,1,1,0,c_black,0.4)
if bogos_hit
	draw_sprite_ext(spr_bogos_shot,bogos_hitindex,bogos_x,bogos_y,1,1,image_angle,c_black,0.4)
else
	draw_sprite_ext(sprite_index,image_index,bogos_x,bogos_y,1,1,image_angle,c_black,0.4)
draw_sprite_ext(spr_shootthebogos_walls,1,120 + wall_offset - 4,0,1,1,0,c_black,0.4)
draw_sprite_ext(spr_shootthebogos_target,0,cursor_x - 4,cursor_y + 4,cursor_scale,cursor_scale,cursor_rot,c_black,0.4)
#endregion

#region the stuff
draw_sprite(spr_shootthebogos_walls,0,120 - wall_offset,0)
draw_sprite(spr_shootthebogos_walls,1,120 + wall_offset,0)
if bogos_hit
	draw_sprite_ext(spr_bogos_shot,bogos_hitindex,bogos_x,bogos_y,1,1,image_angle,c_white,1)
else
	draw_sprite_ext(sprite_index,image_index,bogos_x,bogos_y,1,1,image_angle,c_white,1)
draw_sprite_ext(spr_shootthebogos_target,0,cursor_x,cursor_y,cursor_scale,cursor_scale,cursor_rot,c_white,1)
draw_sprite_ext(spr_shootthebogos_logo,0,480,logo_y,1,1,0,c_white,1)
#endregion