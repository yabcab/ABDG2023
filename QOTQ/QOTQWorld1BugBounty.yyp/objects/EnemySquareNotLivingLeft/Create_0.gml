/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 24AD9853
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l24AD9853_0 = SurfingonaSineWave;
if (audio_is_playing(l24AD9853_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 378FBA90
	/// @DnDParent : 24AD9853
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
/// @DnDArgument : "path" "EnemyDieLeft"
/// @DnDArgument : "speed" "7"
path_start(EnemyDieLeft, 7, path_action_stop, false);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4178E4FC
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);