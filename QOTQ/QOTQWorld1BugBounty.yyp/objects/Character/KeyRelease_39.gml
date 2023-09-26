/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6E4E5917
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l6E4E5917_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l6E4E5917_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 126E394B
	/// @DnDParent : 6E4E5917
	/// @DnDArgument : "script" "Scr_CharacterStopWT"
	script_execute(Scr_CharacterStopWT);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2A913C6F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l2A913C6F_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l2A913C6F_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 61C68BA1
	/// @DnDParent : 2A913C6F
	/// @DnDArgument : "script" "Scr_CharacterStop"
	script_execute(Scr_CharacterStop);
}