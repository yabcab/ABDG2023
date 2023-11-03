/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7B4B8CC2
/// @DnDArgument : "key" "vk_nokey"
var l7B4B8CC2_0;
l7B4B8CC2_0 = keyboard_check(vk_nokey);
if (l7B4B8CC2_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 37A80911
	/// @DnDParent : 7B4B8CC2
	speed = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2233529C
/// @DnDArgument : "key" "vk_left"
var l2233529C_0;
l2233529C_0 = keyboard_check(vk_left);
if (l2233529C_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4F9E1B6D
	/// @DnDParent : 2233529C
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 41608A77
	/// @DnDParent : 2233529C
	/// @DnDArgument : "direction" "180"
	direction = 180;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 675EFCAA
/// @DnDArgument : "key" "vk_right"
var l675EFCAA_0;
l675EFCAA_0 = keyboard_check(vk_right);
if (l675EFCAA_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7F44E774
	/// @DnDParent : 675EFCAA
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 30EB77F1
	/// @DnDParent : 675EFCAA
	/// @DnDArgument : "direction" "0"
	direction = 0;
}