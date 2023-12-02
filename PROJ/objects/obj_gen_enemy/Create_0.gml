bobsin = 0
_time = random_range(1,1000)
type = enemytype.swarmer
sittime = 0
rotation = 0
hp = 5
hspeed_target = 0
vspeed_target = 0
launchtimer = random_range(50,200)
launching = 0
launchprepping = 0
projectiletimer = 0
projectiletimer_reset = 3
move_dir = -1
facing = 1
alarm[0] = 1
starthp = 0
depth = -1
silent = false
hitplayer = false

//jumper
jumping = false
jumper_move_hor = true
jump_timer = 150
jumpstart = false
ground_type = false

spawned_vert_out_room = y > room_height || y < 0
spawned_hor_out_room = x > room_width || x < 0
inroom = false

while place_meeting(x,y,obj_solid)
	y--
	
init_vars()
make_shadow()