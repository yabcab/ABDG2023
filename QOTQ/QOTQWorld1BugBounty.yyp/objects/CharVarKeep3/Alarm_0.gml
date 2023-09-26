/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 51993A46
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 65989C45
/// @DnDArgument : "obj" "TitleKeep1"
var l65989C45_0 = false;
l65989C45_0 = instance_exists(TitleKeep1);
if(l65989C45_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 312F5EA3
	/// @DnDParent : 65989C45
	instance_destroy();
}