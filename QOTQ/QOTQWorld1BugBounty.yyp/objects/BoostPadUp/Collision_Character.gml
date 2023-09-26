/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1221F689
/// @DnDArgument : "key" "vk_down"
var l1221F689_0;
l1221F689_0 = keyboard_check(vk_down);
if (l1221F689_0)
{
	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 384173CE
	/// @DnDParent : 1221F689
	/// @DnDArgument : "var" "1"
	/// @DnDArgument : "view" "3"
	/// @DnDArgument : "value" "1"
	view_set_visible(3, 1);
}