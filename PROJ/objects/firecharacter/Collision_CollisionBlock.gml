/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 09C1BBC7
/// @DnDArgument : "key" "vk_nokey"
var l09C1BBC7_0;
l09C1BBC7_0 = keyboard_check(vk_nokey);
if (l09C1BBC7_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7E84E2DE
	/// @DnDParent : 09C1BBC7
	speed = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 35CF9480
/// @DnDArgument : "key" "vk_left"
var l35CF9480_0;
l35CF9480_0 = keyboard_check(vk_left);
if (l35CF9480_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 07416225
	/// @DnDParent : 35CF9480
	/// @DnDArgument : "speed" "6"
	speed = 6;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 50671F3F
	/// @DnDParent : 35CF9480
	/// @DnDArgument : "direction" "180"
	direction = 180;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5DBCF515
/// @DnDArgument : "key" "vk_right"
var l5DBCF515_0;
l5DBCF515_0 = keyboard_check(vk_right);
if (l5DBCF515_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 4B5C7D5A
	/// @DnDParent : 5DBCF515
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5CE785A5
	/// @DnDParent : 5DBCF515
	/// @DnDArgument : "speed" "6"
	speed = 6;
}