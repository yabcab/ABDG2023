/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 56DE1074
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 22A4A4BB
/// @DnDArgument : "obj" "EnemyScarecrow"
/// @DnDArgument : "not" "1"
var l22A4A4BB_0 = false;
l22A4A4BB_0 = instance_exists(EnemyScarecrow);
if(!l22A4A4BB_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B26A9A3
	/// @DnDParent : 22A4A4BB
	instance_destroy();
}