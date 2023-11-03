/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 231719BD
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0C39229B
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 35E4DA0E
/// @DnDArgument : "path" "EnemyHitRight"
/// @DnDArgument : "speed" "7"
path_start(EnemyHitRight, 7, path_action_stop, false);