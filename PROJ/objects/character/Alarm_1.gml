/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 28FD7157
/// @DnDArgument : "obj" "Player2Tracker"
var l28FD7157_0 = false;
l28FD7157_0 = instance_exists(Player2Tracker);
if(l28FD7157_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 46F68521
	/// @DnDParent : 28FD7157
	/// @DnDArgument : "obj" "CharacterP2"
	/// @DnDArgument : "not" "1"
	var l46F68521_0 = false;
	l46F68521_0 = instance_exists(CharacterP2);
	if(!l46F68521_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F18DC72
		/// @DnDParent : 46F68521
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "CharacterP2"
		instance_create_layer(x + 0, y + 0, "Instances", CharacterP2);
	}
}