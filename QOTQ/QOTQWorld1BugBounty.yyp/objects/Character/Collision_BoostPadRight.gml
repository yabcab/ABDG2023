/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 30CC5939
/// @DnDArgument : "key" "vk_right"
var l30CC5939_0;
l30CC5939_0 = keyboard_check(vk_right);
if (l30CC5939_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 69FE6064
	/// @DnDParent : 30CC5939
	/// @DnDArgument : "objectid" "BoostTracker"
	instance_create_layer(0, 0, "Instances", BoostTracker);
}