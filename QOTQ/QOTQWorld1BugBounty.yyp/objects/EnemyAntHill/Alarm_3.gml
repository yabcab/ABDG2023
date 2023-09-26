/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4CB34676
/// @DnDArgument : "steps" "35"
alarm_set(0, 35);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 330F19FD
/// @DnDArgument : "xpos" "20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "20"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyAntDown"
instance_create_layer(x + 20, y + 20, "Instances", EnemyAntDown);