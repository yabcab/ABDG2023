can_egg = false // no more!!
can_doublejump = true

music_set_slot_count(2)
music_set_slot_target(0,mu_newpork)
music_set_slot_target(1,mu_newpork2)
music_set_slot_target(2,mu_sandwhichshop)
music_set_active_slot(0)

window_set_caption("Scamming people in the " + gamename)

obj_hud.hudenable = true