/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 2C6F150C
/// @DnDArgument : "path" "EnemyDieLeft"
/// @DnDArgument : "speed" "7"
path_start(EnemyDieLeft, 7, path_action_stop, false);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 38260CD4
/// @DnDArgument : "soundid" "Hit1"
audio_play_sound(Hit1, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7630C4BE
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3DF7877F
/// @DnDArgument : "spriteind" "EnemyCircleDead"
sprite_index = EnemyCircleDead;
image_index = 0;