ini_open("save.tt2")
isunlocked = ini_read_real("ach","tres",true)
ini_close()

ach_name = "I Like Shiny Objects"
ach_desc = "Collect every treasure in the game."
if isunlocked
	image_index = 2