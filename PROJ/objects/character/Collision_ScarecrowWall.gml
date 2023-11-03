/// @DnDAction : YoYo Games.Paths.Stop_Path
/// @DnDVersion : 1
/// @DnDHash : 5E03CF49
path_end();

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7FA5C09C
/// @DnDArgument : "key" "vk_nokey"
var l7FA5C09C_0;
l7FA5C09C_0 = keyboard_check(vk_nokey);
if (l7FA5C09C_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 10D96F66
	/// @DnDParent : 7FA5C09C
	speed = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 24A7735D
/// @DnDArgument : "key" "vk_left"
var l24A7735D_0;
l24A7735D_0 = keyboard_check(vk_left);
if (l24A7735D_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 67B666B9
	/// @DnDParent : 24A7735D
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 26BB4B83
	/// @DnDParent : 24A7735D
	/// @DnDArgument : "speed" "2"
	speed = 2;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6528FFA4
/// @DnDArgument : "key" "vk_right"
var l6528FFA4_0;
l6528FFA4_0 = keyboard_check(vk_right);
if (l6528FFA4_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 5CBD3B90
	/// @DnDParent : 6528FFA4
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5DEDD413
	/// @DnDParent : 6528FFA4
	/// @DnDArgument : "speed" "2"
	speed = 2;
}