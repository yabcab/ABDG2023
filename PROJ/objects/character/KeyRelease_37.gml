/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3D99792F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l3D99792F_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l3D99792F_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 69DA4D21
	/// @DnDParent : 3D99792F
	/// @DnDArgument : "script" "Scr_CharacterStopWT"
	script_execute(Scr_CharacterStopWT);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3008912A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l3008912A_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l3008912A_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2989B68B
	/// @DnDParent : 3008912A
	/// @DnDArgument : "script" "Scr_CharacterStop"
	script_execute(Scr_CharacterStop);
}