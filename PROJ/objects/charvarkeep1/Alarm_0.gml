/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53DB3C2F
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 148B674C
/// @DnDArgument : "obj" "TitleKeep1"
var l148B674C_0 = false;
l148B674C_0 = instance_exists(TitleKeep1);
if(l148B674C_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61B1B470
	/// @DnDParent : 148B674C
	instance_destroy();
}