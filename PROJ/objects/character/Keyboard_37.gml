/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2B328965
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l2B328965_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l2B328965_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 241E740B
	/// @DnDParent : 2B328965
	/// @DnDArgument : "script" "Scr_CharacterMoveLeft"
	script_execute(Scr_CharacterMoveLeft);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3D8696F6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l3D8696F6_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l3D8696F6_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 45DCAED7
	/// @DnDParent : 3D8696F6
	/// @DnDArgument : "script" "Scr_CharacterMoveLeftWT"
	script_execute(Scr_CharacterMoveLeftWT);
}