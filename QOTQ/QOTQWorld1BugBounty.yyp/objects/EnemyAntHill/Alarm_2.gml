/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 49CA53D0
/// @DnDArgument : "steps" "35"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 35);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4906E80E
/// @DnDArgument : "xpos" "20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "20"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyAntUp"
instance_create_layer(x + 20, y + 20, "Instances", EnemyAntUp);