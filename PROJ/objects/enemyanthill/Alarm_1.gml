/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5C97F0E5
/// @DnDArgument : "steps" "35"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 35);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1AF4A953
/// @DnDArgument : "xpos" "20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "20"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyAntRight"
instance_create_layer(x + 20, y + 20, "Instances", EnemyAntRight);