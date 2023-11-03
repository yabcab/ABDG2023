/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7FF265E0
/// @DnDArgument : "key" "vk_left"
var l7FF265E0_0;
l7FF265E0_0 = keyboard_check(vk_left);
if (l7FF265E0_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 66515596
	/// @DnDParent : 7FF265E0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoGunLeftInv"
	sprite_index = CharacterAvoGunLeftInv;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 49EB580C
	/// @DnDParent : 7FF265E0
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 15);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 57EEA75F
/// @DnDArgument : "key" "vk_right"
var l57EEA75F_0;
l57EEA75F_0 = keyboard_check(vk_right);
if (l57EEA75F_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 526636F7
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "CharacterAvoGunRightInv"
	sprite_index = CharacterAvoGunRightInv;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 075EF76B
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 15);
}