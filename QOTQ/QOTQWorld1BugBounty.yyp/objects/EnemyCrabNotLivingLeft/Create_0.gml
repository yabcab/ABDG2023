/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0A3BCF18
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 75215A4B
/// @DnDArgument : "soundid" "SurfingonaSineWave"
var l75215A4B_0 = SurfingonaSineWave;
if (audio_is_playing(l75215A4B_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40169807
	/// @DnDParent : 75215A4B
	/// @DnDArgument : "spriteind" "CrabDeadRainbow"
	sprite_index = CrabDeadRainbow;
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