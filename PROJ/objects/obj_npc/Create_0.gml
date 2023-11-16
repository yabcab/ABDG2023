//if speechbubble
//	my_speechbubble = instance_create_layer(bbox_left - 25,bbox_top - 25,"Instances_outlinedblack",obj_npcspeechbubble)
	
textbox_show = false
text_selected = 0
max_texts = 0
text = []
for (var i = 0; i < 10; i++)
{
	text[i] = ""
	//job_id[i] = 0
	//job_name[i] = "NOTEXT"
}
//job_count = 1
textcopy = ""
textcopy_timer = 0
text_spot = 1

//show_job_menu = false

textbox_yoff = 100

speaking = false

dyslexia_mode = false
dys_textcopy = ""
can_talk = true

//435y
surf = surface_create(960,115)
drawnbg = spr_textbg_placeholder
xscroll = 0
yscroll = 0

npcid = npcs.lemonhead
enum npcs // 5/11/23 - all npcs are in!! 10/8/23 - no the fuck they are not - 11/15/23 - JESUS FUCK THERES SO MANY
{
	lemonhead,
	badfather,
	sadguy,
	updog,
	redcritter,
	toaster,
	ash_pokemon,
	bogus,
	hamster_with_rabies,
	link,
	granny,
	harper,
	airfry,
	signpost,
	jp,
	eligoomba_butlike_notevil,
	ace,
	ramsay,
	gilbertminecraft_live,
	gilbertminecraft_dead,
}
alarm[0] = 1
talkspr = sprite_index
idlespr = sprite_index

make_shadow()

fadeaway = false
dys_timer = 0