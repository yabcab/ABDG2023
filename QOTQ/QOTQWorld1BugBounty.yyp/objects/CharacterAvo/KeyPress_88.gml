/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7FF265E0
/// @DnDArgument : "key" "vk_left"
var l7FF265E0_0;
l7FF265E0_0 = keyboard_check(vk_left);
if (l7FF265E0_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F134593
	/// @DnDParent : 7FF265E0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "BulletHitBoxLeft"
	instance_create_layer(x + 0, y + 0, "Instances", BulletHitBoxLeft);

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
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3D2F5F31
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "BulletHitBoxRight"
	instance_create_layer(x + 0, y + 0, "Instances", BulletHitBoxRight);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 075EF76B
	/// @DnDParent : 57EEA75F
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 15);
}