/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7FC1C095
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l7FC1C095_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l7FC1C095_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 24CFFEA7
	/// @DnDParent : 7FC1C095
	/// @DnDArgument : "script" "Scr_CharacterStopWT"
	script_execute(Scr_CharacterStopWT);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 077528E0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l077528E0_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l077528E0_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 324AD012
	/// @DnDParent : 077528E0
	/// @DnDArgument : "script" "Scr_CharacterStop"
	script_execute(Scr_CharacterStop);
}