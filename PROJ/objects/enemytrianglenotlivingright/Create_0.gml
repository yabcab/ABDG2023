/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 74C9BE99
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 3E1A7F87
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l3E1A7F87_0 = SurfingonaSineWave;
if (audio_is_playing(l3E1A7F87_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7001FC83
	/// @DnDParent : 3E1A7F87
	/// @DnDArgument : "spriteind" "EnemyTriangleDeadRainbow"
	sprite_index = EnemyTriangleDeadRainbow;
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