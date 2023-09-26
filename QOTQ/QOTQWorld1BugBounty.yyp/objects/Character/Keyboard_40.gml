/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 226BF501
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l226BF501_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l226BF501_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1D482B39
	/// @DnDParent : 226BF501
	/// @DnDArgument : "script" "Scr_CharacterMoveDown"
	script_execute(Scr_CharacterMoveDown);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7E53D917
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l7E53D917_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l7E53D917_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5C6B85B0
	/// @DnDParent : 7E53D917
	/// @DnDArgument : "script" "Scr_CharacterMoveDownWT"
	script_execute(Scr_CharacterMoveDownWT);
}