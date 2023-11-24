var l3D99792F_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l3D99792F_0 > 0))
{
	script_execute(Scr_CharacterStopWT);
}

var l3008912A_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l3008912A_0 > 0))
{
	script_execute(Scr_CharacterStop);
}

if instance_exists(BoostTracker)
	instance_destroy(BoostTracker)