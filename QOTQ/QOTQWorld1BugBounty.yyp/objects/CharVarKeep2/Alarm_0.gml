/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6207112F
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 14EE85E7
/// @DnDArgument : "obj" "TitleKeep1"
var l14EE85E7_0 = false;
l14EE85E7_0 = instance_exists(TitleKeep1);
if(l14EE85E7_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4E559414
	/// @DnDParent : 14EE85E7
	instance_destroy();
}