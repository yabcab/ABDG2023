/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 30CC5939
/// @DnDArgument : "key" "vk_right"
var l30CC5939_0;
l30CC5939_0 = keyboard_check(vk_right);
if (l30CC5939_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 249E4427
	/// @DnDParent : 30CC5939
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A85CA18
	/// @DnDParent : 30CC5939
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "CharacterBoost"
	instance_create_layer(x + 0, y + 0, "Instances", CharacterBoost);
}