/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3FE419AC
/// @DnDArgument : "key" "vk_nokey"
var l3FE419AC_0;
l3FE419AC_0 = keyboard_check(vk_nokey);
if (l3FE419AC_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 50F76D1B
	/// @DnDParent : 3FE419AC
	speed = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7DBBB294
/// @DnDArgument : "key" "vk_right"
var l7DBBB294_0;
l7DBBB294_0 = keyboard_check(vk_right);
if (l7DBBB294_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 112E1E60
	/// @DnDParent : 7DBBB294
	/// @DnDArgument : "speed" "6"
	speed = 6;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7877AEF6
	/// @DnDParent : 7DBBB294
	/// @DnDArgument : "direction" "0"
	direction = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 65B4928E
/// @DnDArgument : "key" "vk_left"
var l65B4928E_0;
l65B4928E_0 = keyboard_check(vk_left);
if (l65B4928E_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 347C51CE
	/// @DnDParent : 65B4928E
	/// @DnDArgument : "speed" "6"
	speed = 6;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 6F6C4495
	/// @DnDParent : 65B4928E
	/// @DnDArgument : "direction" "180"
	direction = 180;
}