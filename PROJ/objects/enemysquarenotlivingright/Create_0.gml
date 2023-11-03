/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 150535D5
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 5DC6F8B3
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l5DC6F8B3_0 = SurfingonaSineWave;
if (audio_is_playing(l5DC6F8B3_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 46BA0A53
	/// @DnDParent : 5DC6F8B3
	/// @DnDArgument : "spriteind" "EnemySquareDeadRainbow"
	sprite_index = EnemySquareDeadRainbow;
	image_index = 0;
}

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