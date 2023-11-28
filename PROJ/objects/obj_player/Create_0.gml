depth = -1
init_vars()
gamepad_set_axis_deadzone(0,0.3)

jumping = false
soundpick = choose(sfx_run1,sfx_run2)
runtimer = 0
checkpointx = xstart
checkpointy = ystart
arrowoff = -15
arrowalph = 0
_time = 0
arrowbob = 0
arrowframetime = 0
arrowframe = 0
yoff = 0
yoffspeed = 0
levelcomplete = false
facing = 1
broimdead = false
deadtimer = 0
hasdoublejump = true
cangolf = true
drawray = false
rot = 0
talking = false
alreadypounded = false

anim_jump = false
anim_hurt = false
anim_egg = false
anim_fire = false

// 4/20/23 - i predict there will be like 4 states in total
// 5/17/23 - i was very wrong
// 7/15/23 - hey guys im making another game on this engine
// 10/1/23 - shut up hoe
// 11/6/23 - hey what did i miss guys
// 11/25/23 - oooookkkkk thats PROBABLY it,,
enum states
{
	none = -1,
	
	//normal
	normal,
	rocket,
	golf,
	groundpound,
	floured,
	mariodeath,
	
	//possesions
	chicken,
	train,
	lavalamp,
	car,
	circle,
	objection,
	rollers,
	hedgehog,
	sandal,
	
	//debug
	noclip,
}
state = states.normal
noclip_saved_state = state

make_shadow()

eggtime = 0
lamptimer = 0
mariotimer = 0
mariospeed = 0
hog_charge = 0
dontkillme = false
shades = false

dead = false // ??