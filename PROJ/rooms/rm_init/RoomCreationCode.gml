globalvar controllable; controllable = true // make me false when its time! //no
pal_swap_init_system(shd_pals)

//game font
var fontstr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()_+1234567890-=[]\\{}|;':\",./<>?`~♡☺♢♤♧ⒶⒷⓍⓎ"
var sep = 0
globalvar fnt_game_boil1; fnt_game_boil1 = font_add_sprite_ext(spr_gamefont_boil1,fontstr,2,sep)
globalvar fnt_game_boil2; fnt_game_boil2 = font_add_sprite_ext(spr_gamefont_boil1,fontstr,2,sep)
globalvar fnt_game; fnt_game = fnt_game_boil1
globalvar global_transition_surface; global_transition_surface = 0
draw_set_font(fnt_game)

globalvar can_egg; can_egg = false
globalvar can_doublejump; can_doublejump = true
globalvar can_groundpound; can_groundpound = false
globalvar deaths; deaths = 0
globalvar coins; coins = 0
globalvar points; points = 0
globalvar skip_loading; skip_loading = false // old T&T leftover
globalvar possessed_object; possessed_object = noone
globalvar override_cambound_music_slots; override_cambound_music_slots = false
globalvar eligoomba_kills; eligoomba_kills = 0
globalvar ace_game_finished; ace_game_finished = false

room_goto(rm_disclaimer)

//if os_type = os_windows
//	window_set_size(1920,1080)
//else
	window_set_size(960,540)

//for when i have music playing
//audio_group_set_gain(audiogroup_default,0,0) 

#macro CONT_A gp_face1
#macro CONT_B gp_face2
#macro CONT_X gp_face3
#macro CONT_Y gp_face4
#macro CONT_RB gp_shoulderrb
#macro CONT_RT gp_shoulderr
#macro CONT_LB gp_shoulderlb
#macro CONT_LT gp_shoulderl

#macro KEY_L keyboard_check(vk_left)
#macro KEY_L_P keyboard_check_pressed(vk_left)
#macro KEY_R keyboard_check(vk_right)
#macro KEY_R_P keyboard_check_pressed(vk_right)
#macro KEY_U keyboard_check(vk_up)
#macro KEY_U_P keyboard_check_pressed(vk_up)
#macro KEY_D keyboard_check(vk_down)
#macro KEY_D_P keyboard_check_pressed(vk_down)
#macro KEY_JMP keyboard_check(ord("Z"))
#macro KEY_JMP_P keyboard_check_pressed(ord("Z"))
#macro KEY_EGG keyboard_check(ord("X"))
#macro KEY_EGG_P keyboard_check_pressed(ord("X"))
#macro KEY_POS keyboard_check(ord("C"))
#macro KEY_POS_P keyboard_check_pressed(ord("C"))

enum pokeframes
{
	start = 0,
	menu_sfight,
	menu_sother,
	menu_sitem,
	menu_sflee,
	sel_fight,
	sel_item,
	sel_other,
	sel_flee,
	supereffective,
	winner
}

enum treasure // zomg bro theres like thirteen :exploiding head:"
{
	//v1.0
	krabs = 0,
	trophy_player,
	trophy_eligoomba,
	trophy_alien,
	pen,
	paper,
	coffee,
	dead_ant,
	crumb,
	rat_poison,
	curry,
	funny_apple,
	funny_pinapple,
	veneers,
	guitar_pick_awesome,
	gold_ozzy_vinyl,
	
	//v1.1
	chaos_emerald,
	chewed_finger,
	apple_sauce,
	bear,
}

//"settings"
globalvar colorblind_shader; colorblind_shader = noone
globalvar global_npc_dyslexia; global_npc_dyslexia = 0
globalvar fucked_up_mode; fucked_up_mode = false // decide what this does later //never did //and i never will
globalvar debug; debug = false

#macro force_birthday true
globalvar version; version = "v1.1.dev-PickleDay"
globalvar gamename; gamename = "Trials And Tribulations 2"
var date = date_current_datetime()
if (date_get_month(date) = 3 && date_get_day(date) = 9) || force_birthday
	gamename = "Birthdays And Parties 2"
window_set_caption("Initializing the " + gamename)
globalvar hat_count; hat_count = 0

//me not using
globalvar treasure_save; treasure_save = []
ini_open("save.tt2")
for (var i = 1; i <= 20; i++)
	if ini_read_real("hats",i,false)
		hat_count++
for (var i = 0; i < 20; i++)
	if ini_read_real("tres",i,false)
		treasure_save[i] = true

//show_debug_overlay(debug)
gamepad_set_axis_deadzone(0,0.2)
display_set_gui_size(960,540)