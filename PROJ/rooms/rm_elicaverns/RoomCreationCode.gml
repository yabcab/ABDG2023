can_egg = false // no more!!
can_doublejump = true

music_set_slot_count(5)
music_set_slot_target(0,mu_elicave)
music_set_slot_target(1,mu_hedgehog)
music_set_slot_target(2,mu_khizar2)
music_set_slot_target(3,mu_eligoomba)
music_set_slot_target(4,mu_hell)
music_set_slot_target(5,mu_kitchenpantry)
music_set_active_slot(0)

window_set_caption("The scary Eli Cave in the " + gamename)

obj_hud.hudenable = true