var l2B328965_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l2B328965_0 > 0))
{
	script_execute(Scr_CharacterMoveLeft);
}

var l3D8696F6_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l3D8696F6_0 > 0))
{
	script_execute(Scr_CharacterMoveLeftWT);
}