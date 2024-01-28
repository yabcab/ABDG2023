ini_open("save.tt2")
isunlocked = ini_read_real("ach","chicken",true)
ini_close()

ach_name = "The Pain, The Troubles, The Chicken"
ach_desc = "Possess a chicken for the first time."
if isunlocked
	image_index = 1