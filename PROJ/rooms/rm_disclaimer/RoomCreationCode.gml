//audio_play_sound(mu_disclaimer,0,true)
music_set_slot_count(0)
music_set_slot_target(0,mu_disclaimer)
music_set_active_slot(0)
window_set_caption("The disclaimer of " + gamename)

obj_hud.hudenable = false