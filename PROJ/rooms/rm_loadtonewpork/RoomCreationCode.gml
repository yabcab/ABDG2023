can_egg = false // no more!!
can_doublejump = true

music_set_slot_count(3)
music_set_slot_target(0,mu_nothing)
music_set_slot_target(1,mu_hedgehog)
music_set_slot_target(2,mu_khizar2)
music_set_slot_target(3,mu_eligoomba)
music_set_active_slot(0)

window_set_caption("Loading the " + gamename)

audio_stop_sound(mu_yep1)
audio_stop_sound(mu_yep2)
audio_stop_sound(mu_yep3)
audio_stop_sound(mu_yep4)
audio_stop_sound(mu_yep5)