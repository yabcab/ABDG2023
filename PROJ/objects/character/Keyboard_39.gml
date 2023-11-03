/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1B3BB5C3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
/// @DnDArgument : "not" "1"
var l1B3BB5C3_0 = instance_place(x + 0, y + 0, WaterHitbox);
if (!(l1B3BB5C3_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0EA37780
	/// @DnDParent : 1B3BB5C3
	/// @DnDArgument : "script" "Scr_CharacterMoveRight"
	script_execute(Scr_CharacterMoveRight);
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2592C26D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WaterHitbox"
var l2592C26D_0 = instance_place(x + 0, y + 0, WaterHitbox);
if ((l2592C26D_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 18AE7D2A
	/// @DnDParent : 2592C26D
	/// @DnDArgument : "script" "Scr_CharacterMoveRightWT"
	script_execute(Scr_CharacterMoveRightWT);
}