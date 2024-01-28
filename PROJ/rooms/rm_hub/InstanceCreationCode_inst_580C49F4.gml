ini_open("save.tt2")
isunlocked = ini_read_real("ach","goomber",true)
ini_close()

ach_name = "I was simply following orders"
ach_desc = "Kill all the EliGoombas in Caverns"
if isunlocked
	image_index = 3