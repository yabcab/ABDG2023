/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67BA7A1C
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 357B75C9
/// @DnDArgument : "xpos" "-350"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-50"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "CharProxTracker"
instance_create_layer(x + -350, y + -50, "Instances", CharProxTracker);