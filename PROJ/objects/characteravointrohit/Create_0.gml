/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6218BD42
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 4CBB4C15
/// @DnDArgument : "path" "IntroFallOffScreen"
/// @DnDArgument : "speed" "6"
path_start(IntroFallOffScreen, 6, path_action_stop, false);