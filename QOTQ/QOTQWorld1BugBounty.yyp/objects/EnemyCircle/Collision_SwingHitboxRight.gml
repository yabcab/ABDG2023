/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 73B5ED77
/// @DnDArgument : "spriteind" "EnemyCircleDead"
sprite_index = EnemyCircleDead;
image_index = 0;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 51C7A913
/// @DnDArgument : "soundid" "Hit1"
/// @DnDArgument : "not" "1"
var l51C7A913_0 = Hit1;
if (!audio_is_playing(l51C7A913_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 07767B9B
	/// @DnDParent : 51C7A913
	/// @DnDArgument : "soundid" "Hit1"
	audio_play_sound(Hit1, 0, 0);
}

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 7504C559
/// @DnDArgument : "path" "EnemyHitRight"
/// @DnDArgument : "speed" "7"
path_start(EnemyHitRight, 7, path_action_stop, false);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6212629C
alarm_set(0, 30);