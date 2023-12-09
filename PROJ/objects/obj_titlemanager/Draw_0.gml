draw_set_font(fnt_game)
draw_self()
//bad way to do it - dont care
draw_sprite(spr_settingsmenu_logo,image_index,x,y - 1000)
var s;
	
if sett_sel = 0
{
	switch sett_dys
	{
		case -1: s = spr_settingmenu_dys_highcont break;
		case 0: s = spr_settingmenu_dys_default break;
		case 1: s = spr_settingmenu_dys_allnpc break;
	}
}
else
{
	switch sett_dys
	{
		case -1: s = spr_settingmenu_dys_highcont_sel break;
		case 0: s = spr_settingmenu_dys_default_sel break;
		case 1: s = spr_settingmenu_dys_allnpc_sel break;
	}
}
draw_sprite(s,image_index,x,y - 1000)
	
if sett_sel = 1
{
	switch sett_colb
	{
		case 0: s = spr_settingmenu_colb_default break;
		case 1: s = spr_settingmenu_colb_prot break;
		case 2: s = spr_settingmenu_colb_deut break;
		case 3: s = spr_settingmenu_colb_trit break;
	}
}
else
{
	switch sett_colb
	{
		case 0: s = spr_settingmenu_colb_default_sel break;
		case 1: s = spr_settingmenu_colb_prot_sel break;
		case 2: s = spr_settingmenu_colb_deut_sel break;
		case 3: s = spr_settingmenu_colb_trit_sel break;
	}
}
draw_sprite(s,image_index,x,y - 1000)
	
if sett_sel = 2
{
	switch sett_fu
	{
		case 0: s = spr_settingmenu_fuckedup_off break;
		case 1: s = spr_settingmenu_fuckedup_on break;
	}
}
else
{
	switch sett_fu
	{
		case 0: s = spr_settingmenu_fuckedup_off_sel break;
		case 1: s = spr_settingmenu_fuckedup_on_sel break;
	}
}
draw_sprite(s,image_index,x,y - 1000)
	
if sett_sel = 3
{
	switch sett_dbg
	{
		case 0: s = spr_settingmenu_debug_off break;
		case 1: s = spr_settingmenu_debug_on break;
	}
}
else
{
	switch sett_dbg
	{
		case 0: s = spr_settingmenu_debug_off_sel break;
		case 1: s = spr_settingmenu_debug_on_sel break;
	}
}
draw_sprite(s,image_index,x,y - 1000)