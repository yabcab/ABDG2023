/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 32BF3C3F
/// @DnDArgument : "xpos" "20"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "20"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "EnemyAntLeft"
instance_create_layer(x + 20, y + 20, "Instances", EnemyAntLeft);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 14B60D07
/// @DnDArgument : "steps" "35"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 35);