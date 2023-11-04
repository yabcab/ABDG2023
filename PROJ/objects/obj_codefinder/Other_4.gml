if colview
{
	layer_set_visible(layer_get_id("Tiles_1"),0)
	layer_set_visible(layer_get_id("Tiles_2"),0)
}
if void
{
	//if layer_exists("Background")
	//	layer_destroy(layer_get_id("Background"))
	while instance_exists(obj_LGparallax)
		instance_destroy(obj_LGparallax)
	while instance_exists(obj_LGparallax_nontiled)
		instance_destroy(obj_LGparallax_nontiled)
	while instance_exists(obj_LGparallax_title)
		instance_destroy(obj_LGparallax_title)
	keyboard_string = ""
}
