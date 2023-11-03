/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 42720388
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l42720388_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l42720388_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 148CDBA2
	/// @DnDParent : 42720388
	/// @DnDArgument : "script" "scr_attackfind"
	script_execute(scr_attackfind);
}