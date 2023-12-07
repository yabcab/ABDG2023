can_egg = false // no more!!
can_doublejump = true

//that is a lot of slots
music_set_slot_count(5)
music_set_slot_target(0,mu_khizar1)
music_set_slot_target(1,mu_khizar2)
music_set_slot_target(2,mu_ashroom)
music_set_slot_target(3,mu_pokemonbattle)
music_set_slot_target(4,mu_khizartechsupport)
music_set_slot_target(5,mu_acemaze)
music_set_active_slot(0)

window_set_caption(gamename + " in the basement of Khizar")

obj_hud.hudenable = true