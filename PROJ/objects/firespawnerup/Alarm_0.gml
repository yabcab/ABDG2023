/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4DDA7C71
/// @DnDArgument : "steps" "100"
alarm_set(0, 100);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 49375B19
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "FireUp"
instance_create_layer(x + 0, y + 0, "Instances", FireUp);