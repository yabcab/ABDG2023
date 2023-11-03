/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 59DB0B52
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l59DB0B52_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l59DB0B52_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3D4B49E8
	/// @DnDParent : 59DB0B52
	/// @DnDArgument : "script" "Scr_CharacterMoveUp"
	script_execute(Scr_CharacterMoveUp);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 383A8F55
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l383A8F55_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l383A8F55_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 77415C2D
	/// @DnDParent : 383A8F55
	/// @DnDArgument : "script" "Scr_CharacterMoveUpWT"
	script_execute(Scr_CharacterMoveUpWT);
}