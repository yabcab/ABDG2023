/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 49760457
/// @DnDArgument : "key" "vk_up"
var l49760457_0;
l49760457_0 = keyboard_check(vk_up);
if (l49760457_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B4CD2E1
	/// @DnDParent : 49760457
	/// @DnDArgument : "objectid" "BoostTracker"
	instance_create_layer(0, 0, "Instances", BoostTracker);
}