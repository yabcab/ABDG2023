/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 65A0614A
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 02B2B3AA
/// @DnDArgument : "obj" "EnemyCircleNotLivingLeft"
var l02B2B3AA_0 = false;
l02B2B3AA_0 = instance_exists(EnemyCircleNotLivingLeft);
if(l02B2B3AA_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3AB672DD
	/// @DnDParent : 02B2B3AA
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 38137132
	/// @DnDParent : 02B2B3AA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "EnemyCircleAnger"
	instance_create_layer(x + 0, y + 0, "Instances", EnemyCircleAnger);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 55FABBB9
/// @DnDArgument : "obj" "EnemyRatNotLivingRight"
var l55FABBB9_0 = false;
l55FABBB9_0 = instance_exists(EnemyRatNotLivingRight);
if(l55FABBB9_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6A9D9041
	/// @DnDParent : 55FABBB9
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D19FBC2
	/// @DnDParent : 55FABBB9
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "EnemyCircleAnger"
	instance_create_layer(x + 0, y + 0, "Instances", EnemyCircleAnger);
}