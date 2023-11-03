/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3D5E33AE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l3D5E33AE_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l3D5E33AE_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 631FB6CB
	/// @DnDParent : 3D5E33AE
	/// @DnDArgument : "script" "Scr_CharacterStopWT"
	script_execute(Scr_CharacterStopWT);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4FD7195C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l4FD7195C_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l4FD7195C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 267109FD
	/// @DnDParent : 4FD7195C
	/// @DnDArgument : "script" "Scr_CharacterStop"
	script_execute(Scr_CharacterStop);
}