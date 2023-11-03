/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7BF05ADA
/// @DnDArgument : "key" "vk_down"
var l7BF05ADA_0;
l7BF05ADA_0 = keyboard_check(vk_down);
if (l7BF05ADA_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B4CD2E1
	/// @DnDParent : 7BF05ADA
	/// @DnDArgument : "objectid" "BoostTracker"
	instance_create_layer(0, 0, "Instances", BoostTracker);
}